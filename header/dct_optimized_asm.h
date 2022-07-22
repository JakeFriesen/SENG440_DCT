#define COS1FP 251      //SF of 2^8
#define COS3FP 213      //SF of 2^8
#define COS6FP 98       //SF of 2^8
#define SIN1FP 50       //SF of 2^8
#define SIN3FP 142      //SF of 2^8
#define SIN6FP 237      //SF of 2^8
#define SQRT2COS6 139   //SF of 2^8
#define SQRT2SIN6 334   //SF of 2^8 (9bit)
#define SQRT2FP 362     //SF of 2^8 (9bit)
int dct_2d_asm (int16_t* image, int16_t width, int16_t height);
static int loeffler_opt_asm (int16_t *image, u_int32_t start, u_int32_t colsel);