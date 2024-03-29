#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/dct.h"

/*
* test_dct
* This is a testbech for the unoptimized project using floating point
* arithmetic and no additional optimizations
*/
int main(){
    // Define testing arrays
    float test_arr [8] = {255, 0, 100, 50, 255, 30, 255, 0};
    float test_arr2[8][8] = {{255, 0, 100, 50, 255, 30, 255, 0}, {255, 0, 100, 50, 255, 30, 255, 0}, {255, 0, 100, 50, 255, 30, 255, 0}, {255, 0, 100, 50, 255, 30, 255, 0},
                            {255, 0, 100, 50, 255, 30, 255, 0}, {255, 0, 100, 50, 255, 30, 255, 0}, {255, 0, 100, 50, 255, 30, 255, 0}, {255, 0, 100, 50, 255, 30, 255, 0}};
    float test_arr3[8][8] = {{10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80},
                            {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}};

    // 1-D test
    printf("1-D DCT:\n");
    loeffler(test_arr);
    int i = 0;
    for(i = 0; i < 8; i++){
        printf("i=%d : %f \n", i, test_arr[i]);
    }

    // 2-D test
    printf("2-D DCT:\n");
    // loeffler2d(test_arr3);
    // for(i = 0; i < 8; i++){
    //     printf("i=%d : %f \n", i, test_arr3[0][i]);
    // }

    return 0;

}
/*
Output Values:
i=0 : 334.107971 
i=1 : 18.485962 
i=2 : 0.820726 
i=3 : 153.504852 
i=4 : 61.871845 
i=5 : 117.487854 
i=6 : -67.309555 
i=7 : 225.341156 

Values from MATLAB (1-D test):
  334.1080
   18.4859
    0.8207
  153.5049
   61.8718
  117.4879
  -67.3096
  225.3411


*/