#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "header/image_generation.h"
#include "header/dct_optimized.h"


int main(void){
    u_int16_t width = 600;
    u_int16_t height = 600;
    u_int16_t image [width][height];

    int16_t test_arr [8] = {255, 0, 100, 50, 255, 30, 255, 0};
    int16_t test_arr3[8][8] = {{10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {255, 0, 100, 50, 255, 30, 255, 0}, {10, 20, 30, 40, 50, 60, 70, 80},
                            {255, 0, 100, 50, 255, 30, 255, 0}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}};


    dct_2d((int16_t*)test_arr3, 8, 8);


    printf("2D Fixed point results\n");
    for(int i = 0; i < 8; i++){
        for(int j = 0; j < 8; j++){
            float f = (float)test_arr3[i][j] / (1<<5);
            printf("%.2f\t", f );
        }
        printf("\n");
    }

    // image_gen(width, height, (u_int16_t*)image, 0);
    // save_to_file(width, height, (u_int16_t*)image, "Image");
    load_from_file("test_img/apollonian_gasket.ascii", (u_int16_t*)image);

    dct_2d((int16_t*)image, width, height);
    save_to_file(width, height, (u_int16_t*)image, "Compressed_Image");

    return 0;
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