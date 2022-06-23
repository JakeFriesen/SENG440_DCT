#include <stdio.h>
#include <stdlib.h>

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
int image_gen(u_int16_t width, u_int16_t height, u_int8_t * image)
{
    //image is a matrix of width x height
    for(int i = 0; i < height; i++){
        for(int j = 0; j < width; j++){
            *((image+i*width) + j) = i+j;
        }
    }
    return 1;
}

/*
* print_image
* Given the width, height, and pointer to an image, print out the 
* image matrix to the console in decimal format
*/
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
            u_int8_t cur_bit = *((image+i*width)+j);
            int ascii[3] = {(cur_bit/100)+48, ((cur_bit/10)%10)+48, (cur_bit%10)+48 };

            for (int k = 0; k < 3; k++){
                fputc(ascii[k], fp);
            }
            fputc(32, fp);//add a space
        }
        fputc(10, fp);//add a newline
    }
    // Close the File
    fclose(fp);
}

//TODO: Make a file to read data from a file in 8x8 chuncks, return the 8x8 matrix

int load_from_file(char * filename, u_int8_t * image)
{
    FILE * fp;
    char filename_ext [100];
    int width = 0;
    int height = 0;
    int cur_num = 0;
    int ascii [2];
    int c;
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
    // Read Dimensions
    for(int i = 1; i <1000; i=i*10){
        c = getc(fp);
        if(c == 0x20) break;
        else width += (c-48)*i;
    }
    for(int i = 1; i < 1000; i=i*10){
        c = getc(fp);
        if(c == 0x20) break;
        else height += (c-48)*i;
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
            for(int mul = 100; mul != 0; mul /= 10){
                c = fgetc(fp);
                cur_num += (c-48)*mul;
            }
            *((image+i*width)+j) = cur_num;
            c = fgetc(fp); //read the space
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



//TODO: This main should be removed once testing is finished
int main(void)
{
    u_int16_t width = 4;
    u_int16_t height = 4;
    u_int8_t test_image[width][height];
    u_int8_t new_image[width][height];
    image_gen(width, height, (u_int8_t*)test_image);
    // print_image(width, height, (u_int8_t*)test_image);
    save_to_file(width, height, (u_int8_t*)test_image, "Image");
    load_from_file("Image", (u_int8_t*)new_image);
    // print_image(width, height, (u_int8_t*)new_image);
    save_to_file(width, height, (u_int8_t*)new_image, "New_Image");
    return 0;
}