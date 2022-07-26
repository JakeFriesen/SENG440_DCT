# 2-D Discrete Cosine Transform
Calem Bardy - V00890988
Jake Friesen - V00906053

## Project Overview

### Compilation Process
To compile the project to compute the 2D-DCT of a test file:
***arm-linux-gcc -o obj/dct_image_compression_realarm  -O3 -march=armv4t -mtune=arm920t -ftree-vectorize  source/dct_image_compression.c source/dct_optimized.c source/image_generation.c***
or use the makefile:
***make arm***
To run the project with the binary
***./obj/dct_image_compression_realarm***
By default, this will generate a random image of size 360 x 240. An image can also be specified:
***./obj/dct_image_compression_realarm path/to/image***
This works for ascii encoded PGM files only, with a maximum size of 1000 x 1000. Do not add the extension to the image path. Two sample images are provided in *test_img/* 

To compile and run on the real arm machine (while on seng440 machine):
***make realarm*** 
or
***make realarm ARGS="path/to/image"***
This will automatically telnet into the real arm machine copy the newest binary, and execute the project. 

To compile the asm files with no flags, all flags, and with the asm instruction:
***make asm***
The results will be saved in /Assembly

To view the files decompressed, using the MATLAB file *MATLAB/decompress_dct.mlx* and specify which sample image was chosen. This will show the original image as well as the decompressed image.