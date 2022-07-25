#define COS1FP 251      //SF of 2^8
#define COS3FP 213      //SF of 2^8
#define COS6FP 98       //SF of 2^8
#define SIN1FP 50       //SF of 2^8
#define SIN3FP 142      //SF of 2^8
#define SIN6FP 237      //SF of 2^8
#define SQRT2COS6 139   //SF of 2^8
#define SQRT2SIN6 334   //SF of 2^8 (9bit)
#define SQRT2FP 362     //SF of 2^8 (9bit)

#define INVCOS1FP 131      //SF of 2^7
#define INVCOS3FP 154      //SF of 2^7
#define INVCOS6FP 334       //SF of 2^7
#define INVSIN1FP 328       //SF of 2^6
#define INVSIN3FP 230      //SF of 2^7
#define INVSIN6FP 139      //SF of 2^7
#define INVSQRT2COS6 237   //SF of 2^7
#define INVSQRT2SIN6 98   //SF of 2^8 
#define INVSQRT2FP 91     //SF of 2^7 
int32_t dct_2d (int16_t* image, int16_t width, int16_t height);
static int32_t loeffler_opt (int16_t *image, u_int32_t start, u_int32_t colsel);
static inline int32_t butterfly(int16_t val1, int16_t val2, int16_t const1, int16_t const2);
int32_t inverse_dct_2d (int16_t* image, int16_t width, int16_t height);
static int32_t inverse_loeffler_opt (int16_t *image, u_int32_t start, u_int32_t colsel);