#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/dct_optimized.h"

/****************************************************
        Discrete Cosine Transform Operations
Functions for performing DCT oprerations on an image
pointer.
****************************************************/

/*
* BUTTERFLY_MACRO
* multiplications optimized out by compiler - reduced to 1 mul, rest are add and shifts
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
*   -Follow Barr-C Standards:   Braces on separate lines
*                               Followed C99 standard
*                               Parenthesis used over operator precedence
*                               Fixed width variable types are used
*                               Single exit point via return at end of function
*                               Private functions declared static
* 
*/
static inline int32_t butterfly(int16_t val1, int16_t val2, int16_t const1, int16_t const2)
{// Barr-C 1.3 Braces (pg.10)
    //Barr-C 5.2 Fixed Width Integers (pg.34)
    register int32_t result, temp, res;
    temp = val1 + val2;
    temp = temp * const1;
    //result 1
    res = const2 - const1;
    res = res * val2;
    res = res + temp;
    //Include a bit reduction of 5
    //Barr-C 1.4 Parentheses (pg.11)
    res = (res >> 5) + (res>>4 & 1);//rounding
    result = (res) & 0xffff;

    //result 2
    res = const1 + const2;
    res = -res * val1;
    res = res + temp;
    //Include a bit reduction of 5
    //Barr-C 1.4 Parentheses (pg.11)
    res = (res >> 5) + (res>>4 & 1);//rounding
    result |= ((res) & 0xffff) << 16;
    
    //Barr-C 6.2 Functions (pg.42) Single exit point
    return result;
}

/*
* dct_2d
* Performs the 2D Discrete Cosine Transform in 8x8 matrices.
* Given the image pointer, width and height, run 1D DCT for 
* every row and every column in each 8x8 matrix
* Optimizations:
*   -For loop intitialization optimized with i ^= i
*   -Operator strength reduction for exit condition 
*    and intermediate signals
*   -Loop unrolling for 1D and 2D DCT
*   -1D and 2D DCT must be done sequentially
*   -Follow Barr-C Standards:   Braces on separate lines
*                               Followed C99 standard
*                               Parenthesis used over operator precedence
*                               Fixed width variable types are used
*                               Single exit point via return at end of function
*                               Private functions declared static
*/
int32_t dct_2d (int16_t* image, int16_t width, int16_t height)
{// Barr-C 1.3 Braces (pg.10)
    //Barr-C 5.2 Fixed Width Integers (pg.34)
    int32_t w, h, i, temp;
    for(w ^= w; w < (width>>3); w++)
    {// Barr-C 1.3 Braces (pg.10)
        for(h ^= h; h < (height>>3); h++)
        {// Barr-C 1.3 Braces (pg.10)
            // 1D DCT - Horizontal
            temp = w << 3;  //Store temp shift to minimize multiplies
            //Barr-C 1.4 Parentheses (pg.11)
            loeffler_opt(image, (0+ (h<<3))*width + temp, 0);
            loeffler_opt(image, (1+ (h<<3))*width + temp, 0);
            loeffler_opt(image, (2+ (h<<3))*width + temp, 0);
            loeffler_opt(image, (3+ (h<<3))*width + temp, 0);
            loeffler_opt(image, (4+ (h<<3))*width + temp, 0);
            loeffler_opt(image, (5+ (h<<3))*width + temp, 0);
            loeffler_opt(image, (6+ (h<<3))*width + temp, 0);
            loeffler_opt(image, (7+ (h<<3))*width + temp, 0);

            // 2D DCT - Vertical
            //Barr-C 1.4 Parentheses (pg.11)
            temp = (h<<3)*width + (w<<3); //Store temp shift to minimize multiplies
            loeffler_opt(image, temp + 0, width);
            loeffler_opt(image, temp + 1, width);
            loeffler_opt(image, temp + 2, width);
            loeffler_opt(image, temp + 3, width);
            loeffler_opt(image, temp + 4, width);
            loeffler_opt(image, temp + 5, width);
            loeffler_opt(image, temp + 6, width);
            loeffler_opt(image, temp + 7, width);
        }
    }
    //Barr-C 6.2 Functions (pg.42) Single exit point
    return 1;
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
*   -Follow Barr-C Standards:   Braces on separate lines
*                               Followed C99 standard
*                               Parenthesis used over operator precedence
*                               Fixed width variable types are used
*                               Single exit point via return at end of function
*                               Private functions declared static
*/
static int32_t loeffler_opt (int16_t *image, u_int32_t start, u_int32_t colsel)
{// Barr-C 1.3 Braces (pg.10)
    //Barr-C 5.2 Fixed Width Integers (pg.34)
    register int32_t temp1, temp2; //32bit temp variables to accomodate larger values before rounding
    register int16_t local1, local2, local3, local4; //16bit local variables to manipulate and copy back to image
    register u_int32_t inc; //Increment method to choose between row and columns

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

    temp1 = butterfly(local3, local4, SQRT2COS6, SQRT2SIN6); //Butterfly [2] [3] SQRT2COS6
    local3 = (temp1 & 0xffff);    
    local3 = local3 >>2; //separating the shift from the mask forces an arithmetic shift
    local4 = (temp1 & 0xffff0000) >> 16;//Barr-C 1.4 Parentheses (pg.11)
    local4 = local4 >>2; //separating the shift from the mask forces an arithmetic shift

    //Stage 4 - Even Section AND Stage 1 - Odd Section
    temp1 = local1;
    local1 = *(image + start + inc*3) - *(image + start + inc*4);   //[3] -[4]
    *(image + start + inc*4) = local2;// << 1;                         //[3] Saved
    local2 = *(image + start + inc*2) - *(image + start + inc*5);   //[2] - [5]
    *(image + start + inc*2) = local3 >> 1;                              //[2] Saved
    local3 = *(image + start + inc*1) - *(image + start + inc*6);   //[1] - [6]
    *(image + start + inc*6) = local4 >> 1;                              //[6] Saved
    local4 = *(image + start) - *(image + start + inc*7);           //[0] - [7]
    *(image + start) = temp1;// << 1;                                  //[0] Saved

    //Stage 2 - Odd Section
    temp1 = butterfly(local1, local4, COS3FP, SIN3FP);   //Butterfly [4] [7] COS3
    local1 = temp1 & 0xffff;
    local4 = (temp1 & 0xffff0000) >> 16;

    temp1 = butterfly(local2, local3, COS1FP, SIN1FP);   //Butterfly [5] [6] COS1
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
    temp1 = (local4 - local1) >> 2;                     //[7] - [4]
    temp2 = (local4 + local1) >> 2;                     //[7] + [4]
    *(image + start + inc*7) = temp1;                   //[7] Saved
    *(image + start + inc*1) = temp2;                   //[1] Saved
    *(image + start + inc*3) = (local2*SQRT2FP) >> 10;   //[3]*SQRT2 Saved
    *(image + start + inc*5) = (local3*SQRT2FP) >> 10;   //[5]*SQRT2 Saved

    //Barr-C 6.2 Functions (pg.42) Single exit point
    return 1;
}