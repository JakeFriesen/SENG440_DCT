#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/dct_optimized.h"
#include "../header/dct.h"

/*
* BUTTERFLY_MACRO
* multiplications optimized out by compiler - reduced to 1 mul, rest are add and shifts
*/
#define INV_BUTTERFLY_MACRO(val1, val2, const1, const2) (((val1*const1 - val2*const2) >> 5) & 0xffff )| \
                                                    ((((val2*const1 + val1*const2) >> 5) & 0xffff) << 16)

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


 int32_t inverse_loeffler_opt (int16_t *image, u_int32_t start, u_int32_t colsel)
{
    register int32_t temp1, temp2; //32bit temp variables to accomodate larger values before rounding
    register int16_t local1, local2, local3, local4; //16bit local variables to manipulate and copy back to image
    register u_int32_t inc; //Increment method to choose between row and columns
    int16_t temp_arr [8];
    float temp_fl;

    //Determine increment method
    inc = (colsel == 0) ? 1 : colsel;

    temp_arr[0] = *(image + start);// / (1 << 5);
    temp_arr[1] = *(image + start + inc*4) ;/// (1 << 5);
    temp_arr[2] = *(image + start + inc*2); // / (1 << 5);
    temp_arr[3] = *(image + start + inc*6); // / (1 << 5);
    temp_arr[4] = *(image + start + inc*7); // / (1 << 5);
    temp_arr[5] = *(image + start + inc*3); // / (1 << 5);
    temp_arr[6] = *(image + start + inc*5); // / (1 << 5);
    temp_arr[7] = *(image + start + inc*1); // / (1 << 5);

    //stage 1
    temp1 = (temp_arr[4] + temp_arr[7])  >> 1;
    temp_arr[7] = (temp_arr[7] - temp_arr[4])  >> 1;
    temp_arr[4] = temp1;
    temp_arr[5] = (temp_arr[5] * INVSQRT2FP )>> 8;
    temp_arr[6] = (temp_arr[6] * INVSQRT2FP )>> 8;
    
    printf("Stage 1 \n");
    for(int i = 0; i < 8; i++){
        printf("%d ", temp_arr[i]);
    }
    printf("\n");


    temp1 = (temp_arr[0] + temp_arr[1]) >> 1;
    temp_arr[1] = (temp_arr[0] - temp_arr[1])  >> 1;
    temp_arr[0] = temp1;
    
    temp1 = INV_BUTTERFLY_MACRO(temp_arr[2], temp_arr[3], SQRT2COS6, SQRT2SIN6);
    temp_arr[2] = temp1 & 0xffff;
    temp_arr[3] = (temp1 & 0xffff0000) >> 16;
    temp_arr[2] = (temp_arr[2]) >> 3;
    temp_arr[3] = (temp_arr[3]) >> 3;

    temp1 = (temp_arr[4] + temp_arr[6])  >> 1;
    temp_arr[6] = (temp_arr[4] - temp_arr[6])  >> 1;
    temp_arr[4] = temp1;
    temp1 = (temp_arr[7] - temp_arr[5])  >> 1;
    temp_arr[5] = (temp_arr[7] + temp_arr[5])  >> 1;
    temp_arr[7] = temp1;


    printf("Stage 2 \n");
    for(int i = 0; i < 8; i++){
        printf("%d ", temp_arr[i]);
    }
    printf("\n");

    temp1 = (temp_arr[0] + temp_arr[3])  >> 1;
    temp_arr[3] = (temp_arr[0] - temp_arr[3])  >> 1;
    temp_arr[0] = temp1;
    temp1 = (temp_arr[1] + temp_arr[2])  >> 1;
    temp_arr[2] = (temp_arr[1] - temp_arr[2])  >> 1;
    temp_arr[1] = temp1;

    temp1 = INV_BUTTERFLY_MACRO(temp_arr[4], temp_arr[7], COS3FP, SIN3FP);
    temp_arr[4] = temp1 & 0xffff;
    temp_arr[7] = (temp1 & 0xffff0000) >> 16;
    temp_arr[4] = temp_arr[4] >> 3;
    temp_arr[7] = temp_arr[7] >> 3;

    temp1 = INV_BUTTERFLY_MACRO(temp_arr[5], temp_arr[6], COS1FP, SIN1FP);
    temp_arr[5] = temp1 & 0xffff;
    temp_arr[6] = (temp1 & 0xffff0000) >> 16;
    temp_arr[5] = temp_arr[5] >> 3;
    temp_arr[6] = temp_arr[6] >> 3;

    printf("Stage 3 \n");
    for(int i = 0; i < 8; i++){
        printf("%d ", temp_arr[i]);
    }
    printf("\n");

    *(image + start) = (temp_arr[0] + temp_arr[7])  >> 2;
    *(image + start + inc*1) = (temp_arr[1] + temp_arr[6])  >> 2;
    *(image + start + inc*2) = (temp_arr[2] + temp_arr[5])  >> 2;
    *(image + start + inc*3) = (temp_arr[3] + temp_arr[4])  >> 2;
    *(image + start + inc*4) = (temp_arr[3] - temp_arr[4])  >> 2;
    *(image + start + inc*5) = (temp_arr[2] - temp_arr[5])  >> 2;
    *(image + start + inc*6) = (temp_arr[1] - temp_arr[6])  >> 2;
    *(image + start + inc*7) = (temp_arr[0] - temp_arr[7])  >> 2;
    
    return 1;
}