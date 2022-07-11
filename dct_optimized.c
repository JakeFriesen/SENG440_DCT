#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dct_optimized.h"

/****************************************************
        Discrete Cosine Transform Operations
Functions for performing DCT oprerations on an image
pointer.
****************************************************/

/*
* butterfly
* This inline function performs a butterfly operation (or rotation) using
* the 4 input values, and returns two packed int16_t values
* This function has a built in scale shift of 2^5, to accomodate large
* inputs.
* TODO: Rewrite to use the simplified rotators using fewer multiplications
*/
static inline u_int32_t butterfly(int16_t val1, int16_t val2, int16_t const1, int16_t const2){
    //TODO: Add temp variables in this too.
    u_int32_t result;
    result = ((const1*val1 + const2*val2) >> 5) & 0xffff;
    result |= (((-const2*val1 + const1*val2) >> 5) & 0xffff) << 16;
    return result;
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
    //TODO: reorder for better software pipelining if possible
    register int32_t temp1, temp2; //32bit temp variables to accomodate larger values before rounding
    register int16_t local1, local2, local3, local4; //16bit local variables to manipulate and copy back to image
    register int inc;
    // res_t result;
    u_int32_t result;
    int16_t test1, test2;

    //Determine increment method
    inc = (colsel == 0) ? 1 : colsel;

    //Stage 1 - Even Section
    local1 = *(image + start) + *(image + start + inc*7);  //9-bit
    local2 = *(image + start + inc*1) + *(image + start + inc*6);  //9-bit
    local3 = *(image + start + inc*2) + *(image + start + inc*5);  //9-bit
    local4 = *(image + start + inc*3) + *(image + start + inc*4);  //9-bit

    //Stage 2 - Even Section
    temp1 = local1 + local4;   //10-bit
    temp2 = local2 + local3;   //10-bit
    local3 = local2 - local3;   //10-bit
    local4 = local1 - local4;   //10-bit
    local1 = temp1;
    local2 = temp2;
    
    //Stage 3 - Even Section
    temp1 = local1 + local2;                //11-bit
    local2 = local1 - local2;               //11-bit
    local1 = temp1;

    result = butterfly(local3, local4, SQRT2COS6, SQRT2SIN6);
    local3 = (result & 0xffff);
    local3 = local3 >>2; //separating the shift from the mask forces an arithmetic shift
    local4 = (result & 0xffff0000) >> 16;
    local4 = local4 >>2;
    // printf("Butterfly: %d, %d ", test1, test2);

    // temp1 = SQRT2COS6*local3;               //10*8bit SF 2^8
    // // temp1 = ((temp1 >> 1) | (temp1 & 1));   //SF 2^7 with vn rounding
    // temp2 = SQRT2SIN6*local4;               //10*8bit SF 2^8
    // temp2 = (temp1 + temp2) >> 7;           //SF 2^1
    // temp1 = -SQRT2SIN6*local3;              //10*8bit SF 2^8 - this is moved ahead of local3 = temp2;
    // local3 = temp2;
    // temp2 = SQRT2COS6*local4;               //10*8bit SF 2^8
    // // temp2 = ((temp2 >> 1) | (temp2 & 1));   //SF 2^7 with vn rounding
    // local4 = (temp1 + temp2) >> 7;          //SF 2^1
    // printf("vs Normal: %d, %d\n", local3, local4);

    //Stage 4 - Even Section AND Stage 1 - Odd Section
    temp1 = local1;
    local1 = *(image + start + inc*3) - *(image + start + inc*4);  //9-bit
    *(image + start + inc*4) = local2 << 1;           //12bit, SF 1
    local2 = *(image + start + inc*2) - *(image + start + inc*5);  //9-bit
    *(image + start + inc*2) = local3;                //12bit, SF 1
    local3 = *(image + start + inc*1) - *(image + start + inc*6);  //9-bit
    *(image + start + inc*6) = local4;                //12bit, SF 1
    local4 = *(image + start) - *(image + start + inc*7);  //9-bit
    *(image + start) = temp1 << 1;            //12bit, SF 1

    //Stage 2 - Odd Section
    result = butterfly(local1, local4, COS3FP, SIN3FP);
    local1 = result & 0xffff;
    local4 = (result & 0xffff0000) >> 16;
    // printf("Butterfly: %d and %d ", (int16_t)temp1, (int16_t)temp2);
    // temp1 = local1*COS3FP;            //9*8bit 
    // temp2 = local4*SIN3FP;            //9*8bit 
    // temp2 = (temp1 + temp2) >> 5;     //12bit SF 1
    // temp1 = local1*SIN3FP;            //9*8bit 
    // local1 = temp2;
    // temp2 = local4*COS3FP;            //9*8bit 
    // local4 = (temp2 - temp1) >> 5;    //12bit SF 1
    // printf("vs Normal: %d and %d\n", local1, local4);

    result = butterfly(local2, local3, COS1FP, SIN1FP);
    local2 = result & 0xffff;
    local3 = (result & 0xffff0000) >> 16;
    // temp1 = local2*COS1FP;            //9*8bit
    // temp2 = local3*SIN1FP;            //9*8bit
    // temp2 = (temp1 + temp2) >> 5;    //12bit SF 1
    // temp1 = local2*SIN1FP;            //9*8bit
    // local2 = temp2;
    // temp2 = local3*COS1FP;            //9*8bit
    // local3 = (temp2 - temp1) >> 5;    //12bit SF 1

    //Stage 3 - Odd Section
    temp1 = (local1 + local3) >> 1;      //12-bit SF 1
    local3 = (local1 - local3) >> 1;     //12-bit SF 1
    local1 = temp1;
    temp1 = (local4 - local2) >> 1;      //12-bit SF 1
    local4 = (local4 + local2) >> 1;     //12-bit SF 1
    local2 = temp1;

    //Stage 4 - Odd Section
    temp1 = (local4 - local1) >> 1;
    temp2 = (local4 + local1) >> 1;
    *(image + start + inc*7) = temp1; //12bit, SF 1
    *(image + start + inc*1) = temp2; //12bit, SF 1
    *(image + start + inc*3) = (local2*SQRT2FP) >> 9;     //12bit, SF 1
    *(image + start + inc*5) = (local3*SQRT2FP) >> 9;     //12bit, SF 1

    return 1;
}