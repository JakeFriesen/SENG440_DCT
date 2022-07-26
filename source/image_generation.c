#include <stdio.h>
#include <stdlib.h>
#include "../header/image_generation.h"

/****************************************************
Image Generation
Create a matrix of 8 bit grayscale values in a 
specified size.
****************************************************/

/*
* image_gen
* Given a width, height, and image pointer, will create a matrix image 
* with values from 0 to 255
*/
int image_gen(u_int16_t width, u_int16_t height, u_int16_t * image, int random)
{
    int i, j;
    //image is a matrix of width x height
    for(i = 0; i < height; i++)
    {
        for(j = 0; j < width; j++)
        {
            *((image+i*width) + j) = (random == 1) ? (rand()%255) : (i+j)%255;
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
    int i, j;
    for(i = 0; i < height; i++)
    {
        for(j = 0; j < width; j++)
        {
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
int save_to_file(u_int16_t width, u_int16_t height, int16_t * image, char * filename)
{
    FILE * fp;
    char filename_ext [100];
    int i, j, k;
    sprintf(filename_ext, "%s.pgm", filename);
    fp = fopen(filename_ext, "w+");

    // Add PGM file header information
    char header [100];
    int num_newline = 0;

    sprintf(header, "P2 \n%d %d \n255 \n", width, height);

    // Write header until the third newline is hit
    for(i = 0; i < 100; i++)
    {
        if(num_newline >= 3)
        {
            break;
        }
        if(header[i] == 10)
        {
            num_newline++;
        }
        fputc(header[i], fp);
    }

    // Write the image data
    for(i = 0; i < height; i++)
    {
        for(j = 0; j < width; j++)
        {
            int16_t cur_bit = *((image+i*width)+j);
            if(cur_bit < 0)
            {
                cur_bit = -cur_bit;
            }
            int ascii [10];
            int mult = 1;
            int idx = 0;
            do{
                ascii [idx] = ((cur_bit/mult)%10) + 48;
                idx++;
                mult*= 10;
            }while(cur_bit/mult != 0 && idx < 10);
            if(*((image+i*width)+j) < 0)
            {//negative number
                ascii[idx] = 45; //'-'
                idx++;
            }
            for(k = 0; k < idx; k++)
            {
                fputc(ascii[idx-k-1], fp);
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
u_int32_t load_from_file(char * filename, u_int16_t * image)
{
    FILE * fp;
    char filename_ext [100];
    u_int16_t width = 0;
    u_int16_t height = 0;
    int cur_num = 0;
    int ascii [2];
    int dimensions[100];
    int i = 0;
    int j;
    int c;
    int mul [4] = {1000, 100, 10, 1};

    //Open the File
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
    for(i = 0; i < 4; i++)
    {
        c = getc(fp);
        if(c == 0x20 || c == 0x0a)
        {
            width = width / (mul[i-1]);
            break;
        } 
        else width += (c-48)*mul[i];
    }
    for(i = 0; i < 4; i++)
    {
        c = getc(fp);
        if(c == 0x20 || c == 0x0a)
        { 
            height = height / (mul[i-1]);
            break;
        }
        else height += (c-48)*mul[i];
    }
    printf("Width:%d, Height:%d\n", width, height);

    //Find newline * 2, skip over max num 
    for(i = 0; i < 2; i++)
    {
        do{
            c = getc(fp);
        }while(c != 0x0a);
    }


    //Write image data to the pointer
    for(i = 0; i < height; i++)
    {
        for(j = 0; j < width; j++)
        {
            cur_num = 0;
            int num_arr [10];
            int idx = 0;
            int mult = 1;

            //Grab the current number, break if a space or newline
            do{
                c = fgetc(fp);
                if(c != 0x0a && c != 0x20)//skip the newline characters
                {
                    num_arr[idx] = c;
                    idx ++;
                }
            }while(c != 0x20 && c != EOF);
            if(c == EOF)break;

            int k = 0;
            // if(num_arr[0] = 45)//'-'
            // {
            //     k++;
            // }
            for(k = 0; k < idx; k++)
            {
                if(num_arr[k] != 45)
                {
                cur_num += (num_arr[idx-k-1] - 48)*mult;
                mult *= 10;
                num_arr[idx-k-1] = 0;
                }
            }
            // if(num_arr[0] = 45)//'-'
            // {
            //     cur_num = -cur_num;
            // }
            
            *((image+i*width)+j) = cur_num;
            // if(j = 0)printf("%d", cur_num);
            
            if(c != 0x20)
            {
                printf("Not a Space, Invalid File!");
                return -1;
            }

        }   
        // printf("%d \n",i);
    }

    // Close the File
    fclose(fp);
    return ((width & 0xffff) << 16) | (height & 0xffff);
}

/*DEPRECATED - Remove
* get_matrix
* Given an image matrix, will return an 8x8 matrix at a given location
*/
int get_matrix(u_int16_t * image, int width, int height, int mat_w, int mat_h, u_int16_t * matrix)
{
    int i, j;
    for (i = 0; i <  8; i++)
    {
        for(j = 0; j < 8; j++)
        {
            *(matrix + i*8+j) = *(image + ((i+(mat_h*8))*width) + (j+ 8*(mat_w)));
        }
    }
}

/*DEPRECATED - Remove
* put_matrix
* Given an 8x8 matrix, will put the matrix into a given image at a specified location
*/
int put_matrix(u_int16_t * image, int width, int height, int mat_w, int mat_h, u_int16_t * matrix)
{
    int i, j;
    for(i = 0; i < 8; i++)
    {
        for(j = 0; j < 8; j++)
        {
            *(image + ((i+(mat_h*8))*width) + (j+ 8*(mat_w))) = *(matrix + i*8+j);
        }
    }
}

/*DEPRECATED - Remove
* print_matrix
* Will print out an 8x8 matrix to console
*/
int print_matrix(u_int16_t* matrix)
{
    int i, j;
    for(i = 0; i < 8; i++)
    {
        for(j = 0; j < 8; j++)
        {
            printf("%3d ", *(matrix + i*8 + j));
        }
        printf("\n");
    }
}