int image_gen(u_int16_t width, u_int16_t height, u_int16_t * image);
int print_image(u_int16_t width, u_int16_t height, u_int16_t * image);
int save_to_file(u_int16_t width, u_int16_t height, u_int16_t * image, char * filename);
int load_from_file(char * filename, u_int16_t * image);
int get_matrix(u_int16_t * image, int width, int height, int mat_w, int mat_h, u_int16_t * matrix);
int put_matrix(u_int16_t * image, int width, int height, int mat_w, int mat_h, u_int16_t * matrix);
int print_matrix(u_int16_t* matrix);
