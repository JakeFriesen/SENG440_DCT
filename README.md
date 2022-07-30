# 2-D Discrete Cosine Transform
Calem Bardy - V00890988
Jake Friesen - V00906053

## Project Overview
The Discrete Cosine Transform was implemented using the Loeffler algorithm to transform 8-bit grayscale images into 16-bit compressed images. This project can take in ascii encoded pgm files and will output a txt file with the resulting tranformed image. 

### Description of Files
|Files                        | Description                                                             |
|-----------------------------|-------------------------------------------------------------------------|
|**Assembly**                 |                                                                         |
| *dct_opt_all_flags_macro.s* | Optimized Code with compilation flags, using butterfly macro            |
| *dct_opt_all_flags_thumb.s* | Optimized Code with compilation flags, using thumb instruction          |
| *dct_opt_all_flags.s*       | Optimized Code with compilations flags, using inline butterfly function |
| *loeffler_asm_instr.s*      | Optimized Code, using hardware butterfly asm instruction                |
| *dct_opt_no_flags.s*        | Optimized Code with no additional compilation flags                     |
| *dct_unoptimized.s*         | Unoptimized Code, using floating point and basic Loeffler               |
|**Source**                   |                                                                         |
|*dct_image_compression.c*    | Main function for Final DCT implementation                              |
|*dct_optimized_asm_instr.c*  | Alternate Loeffler functions using hardware butterfly instruction       |
|*dct_optimized.c*            | Main Loeffler functions, called by *dct_image_compression*              |
|*dct_unoptimzed.c*           | Brute Force Loeffler functions, uses floats and is unoptimized          |
|*image_generation.c*         | Support functions called by *dct_image_compression* to load/save files  |
|**Header**                   |                                                                         |
|*dct_optimized_asm.h*        | Alternate header file for hardware butterfly instruction                |
|*dct_optimized.h*            | Main header file for Final DCT implementation                           |
|*dct.h*                      | Header for brute force implementation                                   |
|*image_generation.h*         | Header for *image_generation* functions                                 |
|**MATLAB**                   |                                                                         |
|*decompress_dct.mlx *        | MATLAB file to perform idct2 and compare against the original image     |
|*project_testing_DCT_matrices.mlx*| MATLAB testing file for preliminary Loeffler functionality         |
|**Other Files**              |                                                                         |
|*Hardware/*                  |   Directory for VHDL source files for hardware implementation           |
|*obj/*                       | Directory for executables                                               |
|*test_img/*                  | Directory for sample images, and output files                           |
|*Documentation/Overview_Diagram.md* | UML sequence diagram                                             |
|*telnet_script.sh*           | bash script for connecting to real arm machine                          |


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
This will automatically telnet into the real arm machine copy the newest binary, and execute the project. 

To compile the asm files with no flags, all flags, and with the asm instruction:
***make asm***
The results will be saved in */Assembly*

To view the files decompressed, using the MATLAB file *MATLAB/decompress_dct.mlx* and specify which sample image was chosen. This will show the original image as well as the decompressed image.