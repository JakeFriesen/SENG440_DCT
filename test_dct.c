#include <stdio.h>
#include <stdlib.h>
#define COS1 0.98078528
#define COS3 0.83146961
#define COS6 0.38268343
#define SIN1 0.19509032
#define SIN3 0.55557023
#define SIN6 0.92387953
#define SQRT2 1.1421356
#define SQRT8 2.8284271
#define PI 3.1415927

int leoffler (float *line_arr){
    float stage1 [8];
    float stage2 [8];
    float stage3 [8];
    float stage4 [8];
    //Stage 1
    stage1[0] = line_arr[0] + line_arr[7];
    stage1[1] = line_arr[1] + line_arr[6];
    stage1[2] = line_arr[2] + line_arr[5];
    stage1[3] = line_arr[3] + line_arr[4];
    stage1[4] = line_arr[3] - line_arr[4];
    stage1[5] = line_arr[2] - line_arr[5];
    stage1[6] = line_arr[1] - line_arr[6];
    stage1[7] = line_arr[0] - line_arr[7];
    //Stage 2
    stage2[0] = stage1[0] + stage1[3];
    stage2[1] = stage1[1] + stage1[2];
    stage2[2] = stage1[1] - stage1[2];
    stage2[3] = stage1[0] - stage1[3];
    stage2[4] = stage1[4]*COS3 + stage1[7]*SIN3;
    stage2[5] = stage1[5]*COS1 + stage1[6]*SIN1;
    stage2[6] = -stage1[5]*SIN1 + stage1[6]*COS1;
    stage2[7] = -stage1[4]*SIN3 + stage1[7]*COS3;
    //Stage 3
    stage3[0] = stage2[0] + stage2[1];
    stage3[1] = stage2[0] - stage2[1];
    stage3[2] = SQRT2*COS6*stage2[2] + SQRT2*SIN6*stage2[3];
    stage3[3] = -SQRT2*SIN6*stage2[2] + SQRT2*COS6*stage2[3];
    stage3[4] = stage2[4] + stage2[6];
    stage3[6] = stage2[4] - stage2[6];
    stage3[5] = stage2[7] - stage2[5];
    stage3[7] = stage2[7] + stage2[5];
    //Stage 4
    //The renormalization is NOT required, I have it here to verify against MATLAB
    line_arr[0] = stage3[0] / SQRT8;
    line_arr[4] = stage3[1] / SQRT8;
    line_arr[2] = stage3[2] / SQRT8;
    line_arr[6] = stage3[3] / SQRT8;
    line_arr[7] = (stage3[7] - stage3[4]) / SQRT8;
    line_arr[1] = (stage3[7] + stage3[4]) / SQRT8;
    line_arr[3] = stage3[5]*SQRT2 / SQRT8;
    line_arr[5] = stage3[6]*SQRT2 / SQRT8;

    return 1;
}


int main(void){
    printf("Hello World!\n");
    float test_arr [8] = {255, 0, 100, 50, 255, 30, 255, 0};
    float out [8];
    leoffler(&test_arr[0]);
    for(int i = 0; i < 8; i++){
        printf("i=%d : %f \n", i, test_arr[i]);
    }
    return 0;

}
/*
i=0 : 334.107971 
i=1 : 18.485962 
i=2 : 0.662828  - 
i=3 : 94.884583  -
i=4 : 61.871845 
i=5 : 123.972336  - 
i=6 : -54.359993  - 
i=7 : 225.341156 

i=0 : 334.107971 
i=1 : 18.485962 
i=2 : 0.662828 -
i=3 : 123.972336 - 
i=4 : 61.871845 
i=5 : 94.884583 -
i=6 : -54.359993 -
i=7 : 225.341156 

Proper values:
  334.1080
   18.4859
    0.8207
  153.5049
   61.8718
  117.4879
  -67.3096
  225.3411


*/