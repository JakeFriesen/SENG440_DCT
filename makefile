native : CC=gcc
native : CFLAGS= -static

arm : CC=arm-linux-gnueabi-gcc
arm : CFLAGS= -static

binaries= test_dct test_dct_arm test_image_gen dct_image_compression test_optimize
assembly = test_dct_arm dct_image_compression_arm
images = image.pgm Decompressed_Image.pgm Compressed_Image.pgm

all: clean native arm

native : image_generation.c dct_image_compression.c dct_optimized.c
	$(CC) -o dct_image_compression  $(CFLAGS) dct_image_compression.c image_generation.c dct_optimized.c

arm : dct_image_compression.c image_generation.c
	$(CC) -o dct_image_compression_arm  $(CFLAGS) dct_image_compression.c image_generation.c

image_gen : image_generation.c test_image_gen.c
	$(CC) -o test_image_gen $(CFLAGS) test_image_gen.c image_generation.c

opt_dct : dct_optimized.c image_generation.c
	$(CC) -o test_optimize $(CFLAGS) dct_optimized.c image_generation.c
.PHONY: clean

clean: 
	rm -f $(binaries) *.o $(images)