#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/image_generation.h"
#include "../header/dct_optimized.h"


int main( int argc, char *argv[])
{
    u_int16_t width = 320;
    u_int16_t height = 240;
    u_int16_t image [1000][1000];//Support up to 1000x1000 image
    u_int32_t return_val;
    char image_name [100];

    if(argc == 2)
    {
      sprintf(image_name, "%s", argv[1]);
      printf("Using supplied image: %s.pgm \n", image_name);
      return_val = load_from_file(image_name, (int16_t*)image);
      width = (return_val>>16) & 0xffff;
      height = return_val&0xffff;
      save_to_file(width, height, (int16_t*)image, "test_img/Image");
      dct_2d((int16_t*)image, width, height);                                     //Cast image matrix to the image pointer
      printf("Top number %d\n", image[0][0]);
      //TODO: highest num is 65280d = 0xff00, which results in -256 becuase it is signed 16 bit
      // Maybe need to reduce scale factor by 1?
      //Temporarily reduced precision down to SF=3, which works, but its low precision
      save_to_file(width, height, (int16_t*)image, "test_img/Compressed_Image");  //Cast image matrix to the image pointer
    }
    else
    {
      printf("Using Pregenerated Image\n");
      image_gen(width, height, (u_int16_t*)image, 1);                             //Cast image matrix to the image pointer
      save_to_file(width, height, (int16_t*)image, "test_img/Image");
      dct_2d((int16_t*)image, width, height);                                     //Cast image matrix to the image pointer
      save_to_file(width, height, (int16_t*)image, "test_img/Compressed_Image");  //Cast image matrix to the image pointer
    }    

    return 0;
}