#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "dct_optimized.h"
#include "image_generation.h"

u_int32_t butterfly(int32_t packed_in, int32_t packed_constant){
    int16_t temp1 = (packed_in & 0xffff0000)>>16;
    int16_t temp2 = packed_in & 0xffff;
    int16_t const1 = (packed_constant & 0xffff0000)>>16;
    int16_t const2 = packed_constant & 0xffff;
    int16_t res1 = temp1*const1 + temp2*const2;
    int16_t res2 = -temp1*const2 + temp2*const1;
    u_int32_t result = (res1<<16) & (res2);
}

int fbutterfly(float in[2], float out[2], float constant[2]){
    out[0] = constant[0]*in[0] + constant[1]*in[1];
    out[1] = -constant[1]*in[0] + constant[0]*in[1];
}


int loeffler_opt (int16_t *line_arr){
    //TODO: Just have one array of intermediate values (not array?)
    //TODO: Split up even and odd parts to reduce temporary variables
    int32_t temp1, temp2;
    int16_t local1, local2, local3, local4;

    //Stage 1 - Even Section
    local1 = line_arr[0] + line_arr[7];  //9-bit
    local2 = line_arr[1] + line_arr[6];  //9-bit
    local3 = line_arr[2] + line_arr[5];  //9-bit
    local4 = line_arr[3] + line_arr[4];  //9-bit

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
    temp2 = (temp1 + temp2) >> 2;           //SF 2^5
    temp1 = -SQRT2SIN6*local3;              //10*8bit AF 2^7 - this is moved ahead of local3 = temp2;
    local3 = temp2;
    temp2 = SQRT2COS6*local4;               //10*8bit SF 2^8
    temp2 = ((temp2 >> 1) | (temp2 & 1));   //SF 2^7 with vn rounding
    local4 = (temp1 + temp2) >> 2;          //SF 2^5

    //Stage 4 - Even Section AND Stage 1 - Odd Section
    temp1 = local1;
    local1 = line_arr[3] - line_arr[4];  //9-bit
    line_arr[4] = local2;                //11bit, SF 0
    local2 = line_arr[2] - line_arr[5];  //9-bit
    line_arr[2] = local3;                //16bit, SF 5
    local3 = line_arr[1] - line_arr[6];  //9-bit
    line_arr[6] = local4;                //16bit, SF 5
    local4 = line_arr[0] - line_arr[7];  //9-bit
    line_arr[0] = temp1;                 //11bit, SF 0

    //Stage 2 - Odd Section
    temp1 = local1*COS3FP;            //9*8bit 
    temp2 = local4*SIN3FP;            //9*8bit 
    temp2 = (temp1 + temp2) >> 2;     //15bit SF 6
    temp1 = local1*SIN3FP;            //9*8bit 
    local1 = temp2;
    temp2 = local4*COS3FP;            //9*8bit 
    local4 = (temp2 - temp1) >> 2;    //15bit SF 6

    temp1 = local2*COS1FP;            //9*8bit
    temp2 = local3*SIN1FP;            //9*8bit
    temp2 = (temp1 + temp2) >> 2;    //15bit SF 6
    temp1 = local2*SIN1FP;            //9*8bit
    local2 = temp2;
    temp2 = local3*COS1FP;            //9*8bit
    local3 = (temp2 - temp1) >> 2;    //15bit SF 6

    //Stage 3 - Odd Section
    temp1 = local1 + local3;      //16-bit SF 6
    local3 = local1 - local3;     //16-bit SF 6
    local1 = temp1;
    temp1 = local4 - local2;      //16-bit SF 6
    local4 = local4 + local2;     //16-bit SF 6
    local2 = temp1;

    //Stage 4 - Odd Section
    temp1 = (local4 - local1) >> 1;
    temp2 = (local4 + local1) >> 1;
    line_arr[7] = temp1; //16bit, SF 5
    line_arr[1] = temp2; //16bit, SF 5
    line_arr[3] = (local2*SQRT2FP) >> 9;     //16bit, SF 5
    line_arr[5] = (local3*SQRT2FP) >> 9;     //16bit, SF 5

    return 1;
}

int main(void){
    int16_t test_arr [8] = {255, 0, 100, 50, 255, 30, 255, 0};
    //Expected output without scaling   
    //945.0000   52.2862    2.3214  434.1773  175.0000  332.3058 -190.3802  637.3610
    int sf [8] = {0,5,5,5,0,5,5,5};

    loeffler_opt(test_arr);
    printf("Results with SF included\n");
    for(int i = 0; i < 8; i++){
        printf("%d ", test_arr[i]);
    }
    printf("\n Results with SF removed, floats\n");
    for(int i = 0; i < 8; i++){
        float f = (float)test_arr[i] / (1<<(sf[i]));
        printf("%.3f ", f);
    }
    printf("\n");
}
/*
1-D DCT:
Stage1
255.000 255.000 130.000 305.000 -205.000 70.000 -255.000 255.000 
Stage2
560.000 385.000 125.000 -50.000 -28.781 18.907 -263.757 325.917 
Stage3
945.000 175.000 2.321 -190.380 -292.537 307.010 234.976 344.824 
i=0 : 945.000000 
i=1 : 52.286194 
i=2 : 2.321364 
i=3 : 434.177277 
i=4 : 175.000000 
i=5 : 332.305847 
i=6 : -190.380173 
i=7 : 637.361023 

*/