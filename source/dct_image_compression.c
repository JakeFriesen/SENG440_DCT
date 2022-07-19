#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/image_generation.h"
#include "../header/dct_optimized.h"


int main(void)
{
    u_int16_t width = 600;
    u_int16_t height = 600;
    u_int16_t image [width][height];
    int i, j;

    int16_t test_arr3[8][8] = 
    // {{255, 255, 255, 255, 255, 255, 255, 255}, {255, 255, 255, 255, 255, 255, 255, 255}, {255, 255, 255, 255, 255, 255, 255, 255}, {255, 255, 255, 255, 255, 255, 255, 255},
    //                         {255, 255, 255, 255, 255, 255, 255, 255}, {255, 255, 255, 255, 255, 255, 255, 255}, {255, 255, 255, 255, 255, 255, 255, 255}, {255, 255, 255, 255, 255, 255, 255, 255}};
    {{10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {255, 0, 100, 50, 255, 30, 255, 0}, {10, 20, 30, 40, 50, 60, 70, 80},
                            {255, 0, 100, 50, 255, 30, 255, 0}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}};

    dct_2d((int16_t*)test_arr3, 8, 8);

    printf("2D Fixed point results\n");
    for(i = 0; i < 8; i++)
    {
        for(j = 0; j < 8; j++)
        {
            float f = (float)test_arr3[i][j] / (1<<5);//Cast to float to view result without scale factor
            printf("%.2f\t", f );
        }
        printf("\n");
    }

    // image_gen(width, height, (u_int16_t*)image, 0);                             //Cast image matrix to the image pointer
    // save_to_file(width, height, (int16_t*)image, "Image");
    load_from_file("test_img/apollonian_gasket.ascii", (int16_t*)image);

    dct_2d((int16_t*)image, width, height);                                     //Cast image matrix to the image pointer
    save_to_file(width, height, (int16_t*)image, "test_img/Compressed_Image");  //Cast image matrix to the image pointer

    //Test purely to check loading negative numbers, should use idct, which is not implemented
    // load_from_file("test_img/Compressed_Image", (int16_t*)image);                        //Cast image matrix to the image pointer
    // dct_2d((int16_t*)image, width, height);                                     //Cast image matrix to the image pointer
    // save_to_file(width, height, (int16_t*)image, "test_img/Decompressed_Image");//Cast image matrix to the image pointer

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

  Fixed Point 2D Results
  2D Fixed point results
  506.25  -124.00 0.62    93.88   43.75   78.38   -47.62  158.25
  37.09   14.81   0.12    28.75   11.09   21.41   -12.12  40.53
  -135.12 -54.06  -0.59   -104.75 -40.44  -77.97  43.97   -147.59
  -44.06  -17.62  -0.22   -34.16  -13.19  -25.44  14.31   -48.12
  0.00    0.00    0.00    0.00    0.00    0.00    0.00    0.00
  -65.84  -26.34  -0.31   -51.06  -19.72  -38.00  21.41   -71.94
  55.69   22.25   0.22    43.16   16.66   32.12   -18.16  60.81
  187.38  74.94   0.78    145.25  56.06   108.09  -61.03  204.66

1D DCT Results:
945.00  51.50   2.50    434.00  175.00  331.50  -190.50 637.50
*/