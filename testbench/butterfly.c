#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../header/image_generation.h"
#include "../header/dct_optimized.h"

inline int32_t butterfly(int16_t val1, int16_t val2, int16_t const1, int16_t const2)
{
    register int32_t result, temp, res;
    temp = val1 + val2;
    temp = temp * const1;
    //result 1
    res = const2 - const1;
    res = res * val2;
    res = res + temp;
    //Include a bit reduction of 5
    res = (res >> 5) + (res>>4 & 1);//rounding
    result = (res) & 0xffff;

    //result 2
    res = const1 + const2;
    res = -res * val1;
    res = res + temp;
    //Include a bit reduction of 5
    res = (res >> 5) + (res>>4 & 1);//rounding
    result |= ((res) & 0xffff) << 16;
    return result;
}
#define BUTTERFLY_MACRO(val1, val2, const1, const2) (((val1*const1 + val2*const2) >> 5) & 0xffff )| \
                                                    ((((-val1*const2 + val2*const1) >> 5) & 0xffff) << 16)
int32_t test(int16_t a, int16_t b, int16_t c, int16_t d){


    int32_t ret = butterfly(a, b, COS1FP, SIN1FP);

    return ret;
}