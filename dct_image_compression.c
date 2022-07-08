#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "image_generation.h"
#include "dct.h"


int main(void){
    u_int16_t width = 600;
    u_int16_t height = 600;
    u_int16_t image [width][height];
    u_int16_t mat [8][8];
    float fmat [8][8];

    // image_gen(width, height, (u_int16_t*)image, 0);
    // save_to_file(width, height, (u_int16_t*)image, "Image");
    load_from_file("apollonian_gasket.ascii", (u_int16_t*)image);
    for(int w = 0; w < width/8; w++){
        for(int h = 0; h < height/8; h++){
            get_matrix((u_int16_t*)image, width, height, w, h, (u_int16_t*)mat);
            // print_matrix((u_int16_t*)mat);
            for(int i = 0; i < 8; i++){
                for (int j = 0; j < 8; j++){
                    fmat[i][j] = (float)mat[i][j];
                }
            }
            loeffler2d(fmat);
            for(int i = 0; i < 8; i++){
                for (int j = 0; j < 8; j++){
                    mat[i][j] = (u_int16_t)fmat[i][j];
                }
            }
            // print_matrix((u_int16_t*)mat);
            put_matrix((u_int16_t*)image, width, height, w, h, (u_int16_t*)mat);
        }
    }
    save_to_file(width, height, (u_int16_t*)image, "Compressed_Image");

    //Test decompress
    printf("\n Decompression Test \n");
    for(int w = 0; w < width/8; w++){
        for(int h = 0; h < height/8; h++){
            get_matrix((u_int16_t*)image, width, height, w, h, (u_int16_t*)mat);
            for(int i = 0; i < 8; i++){
                for (int j = 0; j < 8; j++){
                    fmat[i][j] = (short int)mat[i][j];
                }
            }
            loeffler2d(fmat);
            for(int i = 0; i < 8; i++){
                for (int j = 0; j < 8; j++){
                    mat[i][j] = (u_int16_t)fmat[i][j];
                }
            }
            // print_matrix((u_int16_t*)mat);
            put_matrix((u_int16_t*)image, width, height, w, h, (u_int16_t*)mat);
        }
    }

    save_to_file(width, height, (u_int16_t*)image, "Decompressed_Image");
    
    // printf("\n Load file with large numbers \n");
    // load_from_file("Compressed_Image", (u_int16_t*)image);
    // get_matrix((u_int16_t*)image, width, height, 0, 0, (u_int16_t*)mat);
    // print_matrix((u_int16_t*)mat);
    return 0;
}