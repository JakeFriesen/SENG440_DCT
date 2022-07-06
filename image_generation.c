#include <stdio.h>
#include <stdlib.h>
#include "image_generation.h"

/****************************************************
Image Generation
Create a matrix of 8 bit grayscale values in a 
specified size.
****************************************************/

/*
* image_gen
* Given a width, height, and image pointer, will create a matrix image 
* with values from 0 to 255
* TODO: Needs random value test generator
*/
int image_gen(u_int16_t width, u_int16_t height, u_int16_t * image, int random)
{
    //image is a matrix of width x height
    for(int i = 0; i < height; i++){
        for(int j = 0; j < width; j++){
            *((image+i*width) + j) = (random == 1) ? (rand()%255) : (i+j);
        }
    }
    return 1;
}

/*
* print_image
* Given the width, height, and pointer to an image, print out the 
* image matrix to the console in decimal format
*/
int print_image(u_int16_t width, u_int16_t height, u_int16_t * image)
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
int save_to_file(u_int16_t width, u_int16_t height, u_int16_t * image, char * filename)
{
    FILE * fp;
    char filename_ext [100];
    sprintf(filename_ext, "%s.pgm", filename);
    fp = fopen(filename_ext, "w+");

    // Add PGM file header information
    char header [100];
    int num_newline = 0;

    sprintf(header, "P2 \n%d %d \n255 \n", width, height);

    // Write header until the third newline is hit
    for(int i = 0; i < 100; i++){
        if(num_newline >= 3){
            break;
        }
        if(header[i] == 10){
            num_newline++;
        }
        fputc(header[i], fp);
    }

    // Write the image data
    for(int i = 0; i < height; i++){
        for(int j = 0; j < width; j++){
            u_int16_t cur_bit = *((image+i*width)+j);
            //TODO: Support larger values, should be variable based on input scale?
            int ascii [10];
            int mult = 1;
            int i = 0;
            do{
                ascii [i] = ((cur_bit/mult)%10) + 48;
                i++;
                mult*= 10;
            }while(cur_bit/mult != 0 && i < 10);

            for(int j = 0; j < i; j++){
                fputc(ascii[i-j-1], fp);
            }

            fputc(32, fp);//add a space
        }
        fputc(10, fp);//add a newline
    }
    // Close the File
    fclose(fp);
}

/*
* load_from_file
* Function to load a pgm file from a filename string 
* and store it in the given image matrix
*/
int load_from_file(char * filename, u_int16_t * image)
{
    FILE * fp;
    char filename_ext [100];
    int width = 0;
    int height = 0;
    int cur_num = 0;
    int ascii [2];
    int dimensions[100];
    int i = 0;
    int c;
    int mul [4] = {1000, 100, 10, 1};
    sprintf(filename_ext, "%s.pgm", filename);
    fp = fopen(filename_ext, "r");
    if(fp == NULL)
    {
        printf("File Cannot Be Opened");
        return -1;
    }

    //Read the PGM header
    ascii[0] = fgetc(fp);
    ascii[1] = fgetc(fp);
    if(ascii[0] != 80 || ascii[1] != 50)
    {
        printf("This is not a PGM file!");
        printf("Header is: %c%c", ascii[0], ascii[1]);
        return -1;
    }
    //Find newline
    do{
        c = getc(fp);
    }while(c != 0x0a);

    //Read Dimensions
    for(int i = 0; i < 4; i++){
        c = getc(fp);
        if(c == 0x20){
            width = width / (mul[i-1]);
            break;
        } 
        else width += (c-48)*mul[i];
    }
    for(int i = 0; i < 4; i++){
        c = getc(fp);
        if(c == 0x20){ 
            height = height / (mul[i-1]);
            break;
        }
        else height += (c-48)*mul[i];
    }
    printf("Width:%d, Height:%d\n", width, height);

    //Find newline * 2
    for(int i = 0; i < 2; i++){
        do{
            c = getc(fp);
        }while(c != 0x0a);
    }


    //Write image data to the pointer
    for(int i = 0; i < height; i++){
        for(int j = 0; j < width; j++){
            cur_num = 0;
            int num_arr [10];
            int idx = 0;
            int mult = 1;
            do{
                c = fgetc(fp);
                num_arr[idx] = c;
                idx ++;
            }while(c != 0x20);
            //num_arr is also storing the space, so index up to idx-1, use idx-k-2
            for(int k = 0; k < idx-1; k++){
                cur_num += (num_arr[idx-k-2] - 48)*mult;
                mult *= 10;
            }

            // for(int mul = 100; mul != 0; mul /= 10){
            //     c = fgetc(fp);
            //     cur_num += (c-48)*mul;
            // }
            *((image+i*width)+j) = cur_num;
            // c = fgetc(fp); //read the space
            if(c != 0x20){
                printf("Not a Space, Invalid File!");
                return -1;
            }
        }   
        c = fgetc(fp);//read the newline
        if(c != 0x0A && c != EOF){
            printf("Not a Newline, Invalid File!");
            printf("i=%d, c=%x", i, c);
            return -1;
        }
    }

    // Close the File
    fclose(fp);
}

/*
* get_matrix
* Given an image matrix, will return an 8x8 matrix at a given location
* TODO: This indexing method is pretty terrible, consider revising
*/
int get_matrix(u_int16_t * image, int width, int height, int mat_w, int mat_h, u_int16_t * matrix)
{
    for (int i = 0; i <  8; i++){
        for(int j = 0; j < 8; j++){
            *(matrix + i*8+j) = *(image + ((i+(mat_h*8))*width) + (j+ 8*(mat_w)));
        }
    }
}

/*
* put_matrix
* Given an 8x8 matrix, will put the matrix into a given image at a specified location
* TODO: This indexing method is pretty terrible, consider revising
*/
int put_matrix(u_int16_t * image, int width, int height, int mat_w, int mat_h, u_int16_t * matrix)
{
    for(int i = 0; i < 8; i++){
        for(int j = 0; j < 8; j++){
            *(image + ((i+(mat_h*8))*width) + (j+ 8*(mat_w))) = *(matrix + i*8+j);
        }
    }
}

/*
* print_matrix
* Will print out an 8x8 matrix to console
*/
int print_matrix(u_int16_t* matrix)
{
    for(int i = 0; i < 8; i++){
        for(int j = 0; j < 8; j++){
            printf("%3d ", *(matrix + i*8 + j));
        }
        printf("\n");
    }
}