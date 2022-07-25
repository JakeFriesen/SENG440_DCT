#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/dct_optimized.h"

/*
* BUTTERFLY_MACRO
* multiplications optimized out by compiler - reduced to 1 mul, rest are add and shifts
*/
#define BUTTERFLY_MACRO(val1, val2, const1, const2) (((val1*const1 + val2*const2) >> 5) & 0xffff )| \
                                                    ((((-val1*const2 + val2*const1) >> 5) & 0xffff) << 16)

int32_t inverse_dct_2d (int16_t* image, int16_t width, int16_t height)
{
    int32_t w, h, i, temp;
    for(w ^= w; w < (width>>3); w++)
    {
        for(h ^= h; h < (height>>3); h++)
        {
            // 1D DCT - Horizontal
            temp = w << 3;  //Store temp shift to minimize multiplies
            inverse_loeffler_opt(image, (0+ (h<<3))*width + temp, 0);
            inverse_loeffler_opt(image, (1+ (h<<3))*width + temp, 0);
            inverse_loeffler_opt(image, (2+ (h<<3))*width + temp, 0);
            inverse_loeffler_opt(image, (3+ (h<<3))*width + temp, 0);
            inverse_loeffler_opt(image, (4+ (h<<3))*width + temp, 0);
            inverse_loeffler_opt(image, (5+ (h<<3))*width + temp, 0);
            inverse_loeffler_opt(image, (6+ (h<<3))*width + temp, 0);
            inverse_loeffler_opt(image, (7+ (h<<3))*width + temp, 0);

            // 2D DCT - Vertical
            temp = (h<<3)*width + (w<<3); //Store temp shift to minimize multiplies
            inverse_loeffler_opt(image, temp + 0, width);
            inverse_loeffler_opt(image, temp + 1, width);
            inverse_loeffler_opt(image, temp + 2, width);
            inverse_loeffler_opt(image, temp + 3, width);
            inverse_loeffler_opt(image, temp + 4, width);
            inverse_loeffler_opt(image, temp + 5, width);
            inverse_loeffler_opt(image, temp + 6, width);
            inverse_loeffler_opt(image, temp + 7, width);
        }
    }
    return 1;
}


static int32_t inverse_loeffler_opt (int16_t *image, u_int32_t start, u_int32_t colsel)
{
    register int32_t temp1, temp2; //32bit temp variables to accomodate larger values before rounding
    register int16_t local1, local2, local3, local4; //16bit local variables to manipulate and copy back to image
    register u_int32_t inc; //Increment method to choose between row and columns
    int16_t temp_arr [4];

    //Determine increment method
    inc = (colsel == 0) ? 1 : colsel;

    //Stage 4 - Odd Section
    local1 = *(image + start + inc*7);
    local2 = *(image + start + inc*3)*INVSQRT2FP;
    local3 = *(image + start + inc*5)*INVSQRT2FP;
    local4 = *(image + start + inc*1);
    temp1 = (local4 - local1);
    local4 = (local4 + local1); 
    local1 = temp1;

    //Stage 3 - Odd Section
    temp1 = (local1 + local3);
    local3 = (local1 - local3);    //[4] - [6]
    local1 = temp1;                //[4] + [6]
    temp1 = (local4 - local2);     
    local4 = (local4 + local2);    //[7] + [5]
    local2 = temp1;                //[7] - [5]

    //Stage 2 - Odd Section
    temp1 = BUTTERFLY_MACRO(local1, local4, INVCOS3FP, INVSIN3FP);   //Butterfly [4] [7] COS3
    local1 = temp1 & 0xffff;
    local4 = (temp1 & 0xffff0000) >> 16;

    temp1 = BUTTERFLY_MACRO(local2, local3, INVCOS1FP, INVSIN1FP);   //Butterfly [5] [6] COS1
    local2 = temp1 & 0xffff;
    local3 = (temp1 & 0xffff0000) >> 16;

    //Stage 4 - Even Section AND Stage 1 - Odd Section
    temp_arr[0] = local1;
    temp_arr[1] = local2;
    temp_arr[2] = local3;
    temp_arr[3] = local4;

    local1 = *(image + start) >> 1;
    local2 = *(image + start + inc*4) >> 1;
    local3 = *(image + start + inc*2);
    local4 = *(image + start + inc*6);

    //Stage 3 - Even Section
    temp1 = local1 + local2;
    local2 = local1 - local2;   //[0] - [1]
    local1 = temp1;             //[0] + [1]

    temp1 = BUTTERFLY_MACRO(local3, local4, INVSQRT2COS6, INVSQRT2SIN6); //Butterfly [2] [3] SQRT2COS6
    local3 = (temp1 & 0xffff);    
    local3 = local3 >>2; //separating the shift from the mask forces an arithmetic shift
    local4 = (temp1 & 0xffff0000) >> 16;
    local4 = local4 >>2; //separating the shift from the mask forces an arithmetic shift

    //Stage 2 - Even Section
    temp1 = local1 + local4;  
    temp2 = local2 + local3;   
    local3 = local2 - local3;   //[1] - [2]
    local4 = local1 - local4;   //[0] - [3]
    local1 = temp1;             //[0] + [3]
    local2 = temp2;             //[1] + [2]

    //Stage 1 - Even Section
    *(image + start) = (local1 + temp_arr[3]) >> 1;
    *(image + start + inc*1) = (local2 + temp_arr[2]) >> 1;
    *(image + start + inc*2) = (local3 + temp_arr[1]) >> 1;
    *(image + start + inc*3) = (local4 + temp_arr[0]) >> 1;
    *(image + start + inc*4) = (local4 - temp_arr[0]) >> 1;
    *(image + start + inc*5) = (local3 - temp_arr[1]) >> 1;
    *(image + start + inc*6) = (local2 - temp_arr[2]) >> 1;
    *(image + start + inc*7) = (local1 - temp_arr[3]) >> 1;
    
    return 1;
}