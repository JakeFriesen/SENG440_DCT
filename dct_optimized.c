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
* 
*/
u_int32_t butterfly(int32_t packed_in, int32_t packed_constant){
    int16_t temp1 = (packed_in & 0xffff0000)>>16;
    int16_t temp2 = packed_in & 0xffff;
    int16_t const1 = (packed_constant & 0xffff0000)>>16;
    int16_t const2 = packed_constant & 0xffff;
    int16_t res1 = temp1*const1 + temp2*const2;
    int16_t res2 = -temp1*const2 + temp2*const1;
    u_int32_t result = (res1<<16) & (res2);
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
    //TODO: Get butterfly inline function working
    register int32_t temp1, temp2; //32bit temp variables to accomodate larger values before rounding
    register int16_t local1, local2, local3, local4; //16bit local variables to manipulate and copy back to image
    register int inc;

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

    temp1 = SQRT2COS6*local3;               //10*8bit SF 2^8
    temp1 = ((temp1 >> 1) | (temp1 & 1));   //SF 2^7 with vn rounding
    temp2 = SQRT2SIN6*local4;               //10*8bit SF 2^7
    temp2 = (temp1 + temp2) >> 6;           //SF 2^1
    temp1 = -SQRT2SIN6*local3;              //10*8bit SF 2^7 - this is moved ahead of local3 = temp2;
    local3 = temp2;
    temp2 = SQRT2COS6*local4;               //10*8bit SF 2^8
    temp2 = ((temp2 >> 1) | (temp2 & 1));   //SF 2^7 with vn rounding
    local4 = (temp1 + temp2) >> 6;          //SF 2^1

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
    temp1 = local1*COS3FP;            //9*8bit 
    temp2 = local4*SIN3FP;            //9*8bit 
    temp2 = (temp1 + temp2) >> 5;     //12bit SF 1
    temp1 = local1*SIN3FP;            //9*8bit 
    local1 = temp2;
    temp2 = local4*COS3FP;            //9*8bit 
    local4 = (temp2 - temp1) >> 5;    //12bit SF 1

    temp1 = local2*COS1FP;            //9*8bit
    temp2 = local3*SIN1FP;            //9*8bit
    temp2 = (temp1 + temp2) >> 5;    //12bit SF 1
    temp1 = local2*SIN1FP;            //9*8bit
    local2 = temp2;
    temp2 = local3*COS1FP;            //9*8bit
    local3 = (temp2 - temp1) >> 5;    //12bit SF 1

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