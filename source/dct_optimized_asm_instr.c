#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/dct_optimized.h"

/****************************************************
        Discrete Cosine Transform Operations
Functions for performing DCT oprerations on an image
pointer.
****************************************************/


/*
* loeffler_opt
* this function performs a 1D DCT via the Loeffler Algorithm
* For every DCT operation, the input bit value increases by 4 bit
*   i.e 1D- original 8-bit values to 12-bit
*       2D- 12-bit from 1D up to 16-bit
* Optimizations: 
*   -Even and Odd Sections performed individually to minimize local variables
*   -Local Variables set as register
*   -Fixed Point Arithmetic used to eliminate float operations
*   -Image Pointer is passed in to reduce mem copies
*/
static int loeffler_opt (int16_t *image, int start, int colsel)
{
    register int32_t temp1, temp2; //32bit temp variables to accomodate larger values before rounding
    register int16_t local1, local2, local3, local4; //16bit local variables to manipulate and copy back to image
    register int inc; //Increment method to choose between row and columns

    //Determine increment method
    inc = (colsel == 0) ? 1 : colsel;

    //Stage 1 - Even Section
    local1 = *(image + start) + *(image + start + inc*7);           //Load [0] + [7]
    local2 = *(image + start + inc*1) + *(image + start + inc*6);   //Load [1] + [6]
    local3 = *(image + start + inc*2) + *(image + start + inc*5);   //Load [2] + [5]
    local4 = *(image + start + inc*3) + *(image + start + inc*4);   //Load [3] + [4]

    //Stage 2 - Even Section
    temp1 = local1 + local4;   
    temp2 = local2 + local3;   
    local3 = local2 - local3;   //[1] - [2]
    local4 = local1 - local4;   //[0] - [3]
    local1 = temp1;             //[0] + [3]
    local2 = temp2;             //[1] + [2]
    
    //Stage 3 - Even Section
    temp1 = local1 + local2;
    local2 = local1 - local2;   //[0] - [1]
    local1 = temp1;             //[0] + [1]

    temp1 = ((local3 & 0xffff)<<16) | (local4 & 0xffff);
    temp2 = ((SQRT2COS6 & 0xffff)<<16) | (SQRT2SIN6 & 0xffff);
    __asm__ __volatile__ (
        " butterfly \t%0 , %1 , %2\ n"
        : "=r" ( temp1 )
        : "r" (temp1), "r" (temp2)
    );
    
    local3 = (temp1 & 0xffff);             
    local3 = local3 >>2; //separating the shift from the mask forces an arithmetic shift
    local4 = (temp1 & 0xffff0000) >> 16;
    local4 = local4 >>2; //separating the shift from the mask forces an arithmetic shift

    //Stage 4 - Even Section AND Stage 1 - Odd Section
    temp1 = local1;
    local1 = *(image + start + inc*3) - *(image + start + inc*4);   //[3] -[4]
    *(image + start + inc*4) = local2 << 1;                         //[4] Saved
    local2 = *(image + start + inc*2) - *(image + start + inc*5);   //[2] - [5]
    *(image + start + inc*2) = local3;                              //[2] Saved
    local3 = *(image + start + inc*1) - *(image + start + inc*6);   //[1] - [6]
    *(image + start + inc*6) = local4;                              //[6] Saved
    local4 = *(image + start) - *(image + start + inc*7);           //[0] - [7]
    *(image + start) = temp1 << 1;                                  //[0] Saved

    //Stage 2 - Odd Section
    temp1 = ((local3 & 0xffff)<<16) | (local4 & 0xffff);
    temp2 = ((SQRT2COS6 & 0xffff)<<16) | (SQRT2SIN6 & 0xffff);
    __asm__ __volatile__ (
        " butterfly \t%0 , %1 , %2\ n"
        : "=r" ( temp1 )
        : "r" (temp1), "r" (temp2)
    );
    local1 = temp1 & 0xffff;
    local4 = (temp1 & 0xffff0000) >> 16;

    temp1 = ((local3 & 0xffff)<<16) | (local4 & 0xffff);
    temp2 = ((SQRT2COS6 & 0xffff)<<16) | (SQRT2SIN6 & 0xffff);
    __asm__ __volatile__ (
        " butterfly \t%0 , %1 , %2\n"
        : "=r" ( temp1 )
        : "r" (temp1), "r" (temp2)
    );
    local2 = temp1 & 0xffff;
    local3 = (temp1 & 0xffff0000) >> 16;

    //Stage 3 - Odd Section
    temp1 = (local1 + local3) >> 1;      
    local3 = (local1 - local3) >> 1;    //[4] - [6]
    local1 = temp1;                     //[4] + [6]      
    temp1 = (local4 - local2) >> 1;     
    local4 = (local4 + local2) >> 1;    //[7] + [5]
    local2 = temp1;                     //[7] - [5]

    //Stage 4 - Odd Section
    temp1 = (local4 - local1) >> 1;                     //[7] - [4]
    temp2 = (local4 + local1) >> 1;                     //[7] + [4]
    *(image + start + inc*7) = temp1;                   //[7] Saved
    *(image + start + inc*1) = temp2;                   //[1] Saved
    *(image + start + inc*3) = (local2*SQRT2FP) >> 9;   //[3]*SQRT2 Saved
    *(image + start + inc*5) = (local3*SQRT2FP) >> 9;   //[5]*SQRT2 Saved

    return 1;
}