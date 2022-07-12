#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "header/dct_optimized.h"

/****************************************************
        Discrete Cosine Transform Operations
Functions for performing DCT oprerations on an image
pointer.
****************************************************/


/*
* BUTTERFLY_MACRO
*/
#define BUTTERFLY_MACRO(val1, val2, const1, const2) (((val1*const1 + val2*const2) >> 5) & 0xffff )| \
                                                    ((((-val1*const2 + val2*const1) >> 5) & 0xffff) << 16)
/*
* butterfly
* This inline function performs a butterfly operation (or rotation) using
* the 4 input values, and returns two packed int16_t values
* This function has a built in scale shift of 2^5, to accomodate large
* inputs.
* Optimizations:
*   -Simplified Rotator to reduce multiplications to 3
*   -Register temporary variables
*   -Function inlined
*   -Packed return value chosen over pointers for val1, val2 so
*    Registers variables could be used
* 
*/
static inline u_int32_t butterfly(int16_t val1, int16_t val2, int16_t const1, int16_t const2){
    register int32_t result, temp;
    temp = val1 + val2;
    temp = temp * const1;
    result = (((const2 - const1)*val2 + temp) >> 5) & 0xffff;
    result |= (((-(const1 + const2)*val1 + temp) >> 5) & 0xffff) << 16;
    return result;
}

/*
* dct_2d
* Performs the 2D Discrete Cosine Transform in 8x8 matrices.
* Given the image pointer, width and height, run 1D DCT for 
* every row and every column in each 8x8 matrix
* TODO: Optimize these for loops!!!
*/
void dct_2d (int16_t* image, int16_t width, int16_t height){
    for(int w = 0; w < width/8; w++){
        for(int h = 0; h < height/8; h++){

            for(int i = 0; i < 8; i++){
                loeffler_opt(image, (i+ 8*h)*width + 8*w, 0);
            }
            for(int i = 0; i < 8; i++){
                loeffler_opt(image, (8*h*width + 8*w) + i, width);
            }
        }
    }
}

/*
* loeffler_opt
* this function performs a 1D DCT via the Loeffler Algorithm
* For every DCT operation, the input bit value increases by 4 bit
*   i.e 1D- original 8-bit values to 12-bit
*       2D- 12-bit from 1D up to 16-bit
* Optimizations: 
*   -Even and Odd Sections performed individually to minimize local variables
*   -Local Variables set as register
*   -Fixed Point Arithmetic used to eliminate float operations
*   -Image Pointer is passed in to reduce mem copies
*/
int loeffler_opt (int16_t *image, int start, int colsel){
    register int32_t temp1, temp2; //32bit temp variables to accomodate larger values before rounding
    register int16_t local1, local2, local3, local4; //16bit local variables to manipulate and copy back to image
    register int inc; //Increment method to choose between row and columns

    //Determine increment method
    inc = (colsel == 0) ? 1 : colsel;

    //Stage 1 - Even Section
    local1 = *(image + start) + *(image + start + inc*7);           //Load [0] + [7]
    local2 = *(image + start + inc*1) + *(image + start + inc*6);   //Load [1] + [6]
    local3 = *(image + start + inc*2) + *(image + start + inc*5);   //Load [2] + [5]
    local4 = *(image + start + inc*3) + *(image + start + inc*4);   //Load [3] + [4]

    //Stage 2 - Even Section
    temp1 = local1 + local4;   
    temp2 = local2 + local3;   
    local3 = local2 - local3;   //[1] - [2]
    local4 = local1 - local4;   //[0] - [3]
    local1 = temp1;             //[0] + [3]
    local2 = temp2;             //[1] + [2]
    
    //Stage 3 - Even Section
    temp1 = local1 + local2;
    local2 = local1 - local2;   //[0] - [1]
    local1 = temp1;             //[0] + [1]

    temp1 = BUTTERFLY_MACRO(local3, local4, SQRT2COS6, SQRT2SIN6); //Butterfly [2] [3] SQRT2COS6
    local3 = (temp1 & 0xffff);             
    local3 = local3 >>2; //separating the shift from the mask forces an arithmetic shift
    local4 = (temp1 & 0xffff0000) >> 16;
    local4 = local4 >>2; //separating the shift from the mask forces an arithmetic shift

    //Stage 4 - Even Section AND Stage 1 - Odd Section
    temp1 = local1;
    local1 = *(image + start + inc*3) - *(image + start + inc*4);   //[3] -[4]
    *(image + start + inc*4) = local2 << 1;                         //[4] Saved
    local2 = *(image + start + inc*2) - *(image + start + inc*5);   //[2] - [5]
    *(image + start + inc*2) = local3;                              //[2] Saved
    local3 = *(image + start + inc*1) - *(image + start + inc*6);   //[1] - [6]
    *(image + start + inc*6) = local4;                              //[6] Saved
    local4 = *(image + start) - *(image + start + inc*7);           //[0] - [7]
    *(image + start) = temp1 << 1;                                  //[0] Saved

    //Stage 2 - Odd Section
    temp1 = BUTTERFLY_MACRO(local1, local4, COS3FP, SIN3FP);   //Butterfly [4] [7] COS3
    local1 = temp1 & 0xffff;
    local4 = (temp1 & 0xffff0000) >> 16;

    temp1 = BUTTERFLY_MACRO(local2, local3, COS1FP, SIN1FP);   //Butterfly [5] [6] COS1
    local2 = temp1 & 0xffff;
    local3 = (temp1 & 0xffff0000) >> 16;

    //Stage 3 - Odd Section
    temp1 = (local1 + local3) >> 1;      
    local3 = (local1 - local3) >> 1;    //[4] - [6]
    local1 = temp1;                     //[4] + [6]      
    temp1 = (local4 - local2) >> 1;     
    local4 = (local4 + local2) >> 1;    //[7] + [5]
    local2 = temp1;                     //[7] - [5]

    //Stage 4 - Odd Section
    temp1 = (local4 - local1) >> 1;                     //[7] - [4]
    temp2 = (local4 + local1) >> 1;                     //[7] + [4]
    *(image + start + inc*7) = temp1;                   //[7] Saved
    *(image + start + inc*1) = temp2;                   //[1] Saved
    *(image + start + inc*3) = (local2*SQRT2FP) >> 9;   //[3]*SQRT2 Saved
    *(image + start + inc*5) = (local3*SQRT2FP) >> 9;   //[5]*SQRT2 Saved

    return 1;
}