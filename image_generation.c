#include <stdio.h>
#include <stdlib.h>

/****************************************************
Image Generation
Create a matrix of 8 bit grayscale values in a 
specified size.
****************************************************/
int image_gen(u_int16_t width, u_int16_t height, u_int8_t * image)
{
    //image is a matrix of length x width
    for(int i = 0; i < height; i++){
        for(int j = 0; j < width; j++){
            *((image+i*width) + j) = i+j;
        }
    }
    return 1;
}
int print_image(u_int16_t width, u_int16_t height, u_int8_t * image)
{
    for(int i = 0; i < height; i++){
        for(int j = 0; j < width; j++){
            printf("%3d ",*((image+i*width) + j));
        }
        printf("\n");
    }
    return 1;
}

/* 
* save_to_file
* Function that takes the width, height, image matrix, and a filename (without extension),
* and writes it to a file in .pgm format
*/
int save_to_file(u_int16_t width, u_int16_t height, u_int8_t * image, char * filename)
{
    FILE * fp;
    char filename_ext [100];
    sprintf(filename_ext, "%s.pgm", filename);
    fp = fopen(filename_ext, "w+");
    //Add PGM file header information
    char header [100];
    sprintf(header, "P2 \n%d %d \n255 \n", width, height);
    int num_newline = 0;
    for(int i = 0; i < 100; i++){
        if(num_newline >= 3){
            break;
        }
        if(header[i] == 10){
            num_newline++;
        }
        fputc(header[i], fp);
    }
    for(int i = 0; i < height; i++){
        for(int j = 0; j < width; j++){
            u_int8_t cur_bit = *((image+i*width)+j);
            int ascii[3] = {(cur_bit/100)+48, ((cur_bit/10)%10)+48, (cur_bit%10)+48 };

            for (int k = 0; k < 3; k++){
                fputc(ascii[k], fp);
            }
            fputc(32, fp);//add a space
        }
        fputc(10, fp);//add a newline
    }
}

//TODO: Make a file to read data from a file in 8x8 chuncks, return the 8x8 matrix


int main(void){
    u_int16_t width = 8;
    u_int16_t height = 8;
    u_int8_t test_image[width][height];
    image_gen(width, height, (u_int8_t*)test_image);
    // print_image(width, height, (u_int8_t*)test_image);
    save_to_file(width, height, (u_int8_t*)test_image, "Image");
    return 0;
}