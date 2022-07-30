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
{// Barr-C 1.3 Braces (pg.10)
    int i, j;
    //image is a matrix of width x height
    for(i = 0; i < height; i++)
    {// Barr-C 1.3 Braces (pg.10)
        for(j = 0; j < width; j++)
        {// Barr-C 1.3 Braces (pg.10)
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
{// Barr-C 1.3 Braces (pg.10)
    int i, j;
    for(i = 0; i < height; i++)
    {// Barr-C 1.3 Braces (pg.10)
        for(j = 0; j < width; j++)
        {// Barr-C 1.3 Braces (pg.10)
            printf("%3d ",*((image+i*width) + j));
        }
        printf("\n");
    }
    return 1;
}

/* 
* save_to_file
* Function that takes the width, height, image matrix, and a filename (without extension),
* and writes it to a file in .txt file (width by height, suitable for MATLAB matrices)
*/
int save_to_file(u_int16_t width, u_int16_t height, int16_t * image, char * filename)
{// Barr-C 1.3 Braces (pg.10)
    FILE * fp;
    char filename_ext [100];
    int i, j, k;
    sprintf(filename_ext, "%s.txt", filename);
    fp = fopen(filename_ext, "w+");

    // Add PGM file header information
    char header [100];
    int num_newline = 0;

    sprintf(header, "P2 \n%d %d \n255 \n", width, height);

    // Write the image data
    for(i = 0; i < height; i++)
    {// Barr-C 1.3 Braces (pg.10)
        for(j = 0; j < width; j++)
        {// Barr-C 1.3 Braces (pg.10)
            int16_t cur_bit = *((image+i*width)+j);
            if(cur_bit < 0)
            {// Barr-C 1.3 Braces (pg.10)
                cur_bit = -cur_bit;
            }
            int ascii [10];
            int mult = 1;
            int idx = 0;
            do
            {// Barr-C 1.3 Braces (pg.10)
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
{// Barr-C 1.3 Braces (pg.10)
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
    {// Barr-C 1.3 Braces (pg.10)
        printf("File Cannot Be Opened");
        return -1;
    }

    //Read the PGM header
    ascii[0] = fgetc(fp);
    ascii[1] = fgetc(fp);
    if(ascii[0] != 80 || ascii[1] != 50)
    {// Barr-C 1.3 Braces (pg.10)
        printf("This is not a PGM file!");
        printf("Header is: %c%c", ascii[0], ascii[1]);
        return -1;
    }

    //Find newline
    do
    {// Barr-C 1.3 Braces (pg.10)
        c = getc(fp);
    }while(c != 0x0a);

    //Read Dimensions
    for(i = 0; i < 4; i++)
    {// Barr-C 1.3 Braces (pg.10)
        c = getc(fp);
        if(c == 0x20 || c == 0x0a)
        {// Barr-C 1.3 Braces (pg.10)
            width = width / (mul[i-1]);
            break;
        } 
        else width += (c-48)*mul[i];
    }
    for(i = 0; i < 4; i++)
    {// Barr-C 1.3 Braces (pg.10)
        c = getc(fp);
        if(c == 0x20 || c == 0x0a)
        { // Barr-C 1.3 Braces (pg.10)
            height = height / (mul[i-1]);
            break;
        }
        else height += (c-48)*mul[i];
    }
    printf("Width:%d, Height:%d\n", width, height);

    //Find newline * 2, skip over max num 
    for(i = 0; i < 1; i++)
    {// Barr-C 1.3 Braces (pg.10)
        do
        {// Barr-C 1.3 Braces (pg.10)
            c = getc(fp);
        }
        while(c != 0x0a);
    }


    //Write image data to the pointer
    for(i = 0; i < height; i++)
    {// Barr-C 1.3 Braces (pg.10)
        for(j = 0; j < width; j++)
        {// Barr-C 1.3 Braces (pg.10)
            cur_num = 0;
            int num_arr [10];
            int idx = 0;
            int mult = 1;
            int k;

            //Grab the current number, break if a space or newline
            do
            {// Barr-C 1.3 Braces (pg.10)
                c = fgetc(fp);
                if(c != 0x0a && c != 0x20)//skip the newline characters
                {// Barr-C 1.3 Braces (pg.10)
                    num_arr[idx] = c;
                    idx ++;
                }
            }while(c != 0x20 && c != EOF);
            if(c == EOF)break;

            for(k = 0; k < idx; k++)
            {// Barr-C 1.3 Braces (pg.10)
                if(num_arr[k] != 45)
                {
                cur_num += (num_arr[idx-k-1] - 48)*mult;
                mult *= 10;
                num_arr[idx-k-1] = 0;
                }
            }
            
            *((image+i*width)+j) = cur_num;
            
            if(c != 0x20)
            {// Barr-C 1.3 Braces (pg.10)
                printf("Not a Space, Invalid File!");
                return -1;
            }

        }
    }

    // Close the File
    fclose(fp);
    return ((width & 0xffff) << 16) | (height & 0xffff);
}