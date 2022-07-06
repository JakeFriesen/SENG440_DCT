#include <stdio.h>
#include <stdlib.h>
#include "image_generation.h"

int main(void)
{
    printf("Image Generation Tests");
    u_int16_t width = 16;
    u_int16_t height = 8;
    u_int16_t test_image[width][height];
    u_int16_t new_image[width][height];
    u_int16_t matrix [8][8];
    image_gen(width, height, (u_int16_t*)test_image, 1);
    print_image(width, height, (u_int16_t*)test_image);
    save_to_file(width, height, (u_int16_t*)test_image, "Image");
    load_from_file("Image", (u_int16_t*)new_image);
    print_image(width, height, (u_int16_t*)new_image);
    save_to_file(width, height, (u_int16_t*)new_image, "New_Image");
    get_matrix((u_int16_t*)new_image, width, height, 0, 0, (u_int16_t*)matrix);
    print_matrix((u_int16_t*)matrix);
    matrix[0][0] = 111;
    put_matrix((u_int16_t*)new_image, width, height, 0, 0, (u_int16_t*)matrix);
    print_image(width, height, (u_int16_t*)new_image);
    return 0;
}