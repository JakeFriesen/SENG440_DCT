#define COS1FP 251      //SF of 2^8
#define COS3FP 213      //SF of 2^8
#define COS6FP 98       //SF of 2^8
#define SIN1FP 50       //SF of 2^8
#define SIN3FP 142      //SF of 2^8
#define SIN6FP 237      //SF of 2^8
#define SQRT2COS6 139   //SF of 2^8
#define SQRT2SIN6 334   //SF of 2^8 (9bit)
#define SQRT2FP 362     //SF of 2^8 (9bit)
void dct_2d (int16_t* image, int16_t width, int16_t height);
int loeffler_opt (int16_t *image, int start, int colsel);
static inline int32_t butterfly(int16_t val1, int16_t val2, int16_t const1, int16_t const2);