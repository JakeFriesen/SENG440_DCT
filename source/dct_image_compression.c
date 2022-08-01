#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/image_generation.h"
#include "../header/dct_optimized.h"


int main( int argc, char *argv[])
{
  //Barr-C 5.2 Fixed Width Integers (pg.34)
  u_int16_t width = 320;
  u_int16_t height = 240;
  u_int16_t image [1024][1024];//Support up to 1024x1024 image
  u_int32_t return_val;
  char image_name [100];

  if(argc == 2)
  {// Barr-C 1.3 Braces (pg.10)
    sprintf(image_name, "%s", argv[1]);
    printf("Using supplied image: %s.pgm \n", image_name);
    //Barr-C 1.6 Casts (pg.13) Cast image matrix to the image pointer
    return_val = load_from_file(image_name, (int16_t*)image);
    width = (return_val>>16) & 0xffff;  //Barr-C 1.4 Parentheses (pg.11)
    height = return_val&0xffff;
    //Barr-C 1.6 Casts (pg.13) Cast image matrix to the image pointer
    save_to_file(width, height, (int16_t*)image, "test_img/Image");
    //Barr-C 1.6 Casts (pg.13) Cast image matrix to the image pointer
    dct_2d((int16_t*)image, width, height);                                     
    //Temporarily reduced precision down to SF=3, which works, but its low precision
    //Barr-C 1.6 Casts (pg.13) Cast image matrix to the image pointer
    save_to_file(width, height, (int16_t*)image, "test_img/Compressed_Image");
  }
  else
  {// Barr-C 1.3 Braces (pg.10)
    printf("Using Pregenerated Image\n");
    //Barr-C 1.6 Casts (pg.13) Cast image matrix to the image pointer
    image_gen(width, height, (u_int16_t*)image, 0);                             
    save_to_file(width, height, (int16_t*)image, "test_img/Image");
    //Barr-C 1.6 Casts (pg.13) Cast image matrix to the image pointer
    dct_2d((int16_t*)image, width, height);                                     
    //Barr-C 1.6 Casts (pg.13) Cast image matrix to the image pointer
    save_to_file(width, height, (int16_t*)image, "test_img/Compressed_Image");  
  }    

  //Barr-C 6.2 Functions (pg.42) Single exit point
  return 0;
}