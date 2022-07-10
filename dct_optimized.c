#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dct_optimized.h"
#include "image_generation.h"

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

int main(void){
    int16_t test_arr [8] = {255, 0, 100, 50, 255, 30, 255, 0};
    int16_t test_arr3[8][8] = {{10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {255, 0, 100, 50, 255, 30, 255, 0}, {10, 20, 30, 40, 50, 60, 70, 80},
                            {255, 0, 100, 50, 255, 30, 255, 0}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}};
    int16_t buf [8];

    int sf [8] = {1,1,1,1,1,1,1,1};

    //1D
    for(int i = 0; i < 8; i++){
        loeffler_opt((int16_t*)test_arr3, 8*i, 0);
    }
    //2D
    for(int i = 0; i < 8; i++){
        loeffler_opt((int16_t*)test_arr3, i, 8);
    }

    printf("2D Fixed point results\n");
    for(int i = 0; i < 8; i++){
        for(int j = 0; j < 8; j++){
            float f = (float)test_arr3[i][j] / (1<<5);
            printf("%.2f ", f );
        }
        printf("\n");
    }



    //Expected output without scaling   
    //945.0000   52.2862    2.3214  434.1773  175.0000  332.3058 -190.3802  637.3610
    // loeffler_opt(test_arr);
    // printf("Results with SF included\n");
    // for(int i = 0; i < 8; i++){
    //     printf("%d ", test_arr[i]);
    // }
    // printf("\n Results with SF removed, floats\n");
    // for(int i = 0; i < 8; i++){
    //     float f = (float)test_arr[i] / (1<<(sf[i]));
    //     printf("%.3f ", f);
    // }
    // printf("\n");
}
/*
2D Test results from MATLAB
  506.2500 -123.5908    0.5803   94.2582   43.7500   78.8147  -47.5950  158.2647
   37.2788   14.9435    0.1479   28.8815   11.1518   21.5381  -12.1319   40.7069
 -135.1174  -54.1630   -0.5362 -104.6814  -40.4197  -78.0651   43.9721 -147.5424
  -43.9733  -17.6271   -0.1745  -34.0681  -13.1544  -25.4059   14.3105  -48.0170
         0         0         0         0         0         0         0         0
  -65.8108  -26.3808   -0.2611  -50.9865  -19.6870  -38.0227   21.4172  -71.8625
   55.9675   22.4351    0.2221   43.3605   16.7424   32.3356  -18.2138   61.1141
  187.4132   75.1263    0.7437  145.1973   56.0638  108.2794  -60.9910  204.6472


*/