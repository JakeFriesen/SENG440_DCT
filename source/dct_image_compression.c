#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/image_generation.h"
#include "../header/dct_optimized.h"


int main( int argc, char *argv[])
{
    u_int16_t width = 8;
    u_int16_t height = 8;
    u_int16_t image [1000][1000];//Support up to 1000x1000 image
    u_int32_t return_val;
    char image_name [100];
    int16_t vec [8] = {255, 0, 100, 50, 255, 30, 255, 0};
    int16_t test_arr3[8][8] = 
    {{10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}, 
    {255, 0, 100, 50, 255, 30, 255, 0}, {10, 20, 30, 40, 50, 60, 70, 80},
    {255, 0, 100, 50, 255, 30, 255, 0}, {10, 20, 30, 40, 50, 60, 70, 80}, 
    {10, 20, 30, 40, 50, 60, 70, 80}, {10, 20, 30, 40, 50, 60, 70, 80}};

    if(argc == 2)
    {
      sprintf(image_name, "%s", argv[1]);
      printf("Using supplied image: %s.pgm \n", image_name);
      return_val = load_from_file(image_name, (int16_t*)image);
      width = (return_val>>16) & 0xffff;
      height = return_val&0xffff;
      dct_2d((int16_t*)image, width, height);                                     //Cast image matrix to the image pointer
      save_to_file(width, height, (int16_t*)image, "test_img/Compressed_Image");  //Cast image matrix to the image pointer
    }
    else
    {
      printf("Using Pregenerated Image\n");
      image_gen(width, height, (u_int16_t*)image, 0);                             //Cast image matrix to the image pointer
      save_to_file(width, height, (int16_t*)image, "test_img/Image");
      dct_2d((int16_t*)test_arr3, width, height);                                     //Cast image matrix to the image pointer
      save_to_file(width, height, (int16_t*)test_arr3, "test_img/Compressed_Image");  //Cast image matrix to the image pointer
    }    

    //Decompression Test
    // inverse_dct_2d((int16_t*)test_arr3, width, height);
    // save_to_file(width, height, (int16_t*)test_arr3, "test_img/Decompressed_Image");

    loeffler_opt((int16_t*)vec, 0, 0);
    printf("DCT\n");
    for(int i = 0; i < 8; i++){
      printf("%.2f ", (float)vec[i]/2);
    }
    printf("\n");
    for(int i = 0; i < 8; i++){
      printf("%d ", vec[i]);
    }
    printf("\n");
    inverse_loeffler_opt((int16_t*)vec, 0, 0);
    printf("Inverse DCT\n");
    for(int i = 0; i < 8; i++){
      printf("%.2f ", (float)vec[i]/1.414);
    }
    printf("\n");

    return 0;
}