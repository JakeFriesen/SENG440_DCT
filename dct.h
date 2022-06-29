// Includes
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Definitions
#define COS1 0.98078528
#define COS3 0.83146961
#define COS6 0.38268343
#define SIN1 0.19509032
#define SIN3 0.55557023
#define SIN6 0.92387953
#define SQRT2 1.41421356
#define SQRT8 2.8284271
#define PI 3.1415927
#define DEBUG 0

// 1-D DCT using Loeffler method
int loeffler (float *line_arr){
    //TODO: Move everything to short ints
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

// 2-D DCT using Loeffler method
int loeffler2d(float arr[8][8]){
    int i = 0, j = 0;
    float buffer[8];
    
    if (DEBUG){
        printf("\nInput Array\n");
        for(i = 0; i < 8; i++){
            for(j = 0; j < 8; j++){
                printf("%.3f ", i, arr[i][j]);
            }
            printf("\n");
        }
    }


    // Run loeffler for each row
    for(i = 0; i < 8; i++){
        // Copy row to buffer
        for(j = 0; j < 8; j++){
            buffer[j] = arr[i][j];
        }
        
        loeffler(buffer);

        // Copy back to array
        for(j = 0; j < 8; j++){
            arr[i][j] = buffer[j];
        }
    }

    if (DEBUG){
        printf("\nInput Array\n");
        for(i = 0; i < 8; i++){
            for(j = 0; j < 8; j++){
                printf("%.3f ", i, arr[i][j]);
            }
            printf("\n");
        }
    }

    // Run loeffler for each column
    for(i = 0; i < 8; i++){
        // Copy row to buffer
        for(j = 0; j < 8; j++){
            buffer[j] = arr[j][i];
        }
        
        loeffler(&buffer[0]);

        // Copy back to array
        for(j = 0; j < 8; j++){
            arr[j][i] = buffer[j];
        }
    }

    if (DEBUG){
        printf("\nInput Array\n");
        for(i = 0; i < 8; i++){
            for(j = 0; j < 8; j++){
                printf("%.3f ", i, arr[i][j]);
            }
            printf("\n");
        }
    }

    return 1;
}