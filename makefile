native : CC=gcc
native : CFLAGS= -static

arm : CC=arm-linux-gnueabi-gcc
arm : CFLAGS= -static

binaries= test_dct test_dct_arm test_image_gen
assembly = test_dct_arm

all: clean native arm

native : test_dct.c image_generation.c
	$(CC) -o test_dct  $(CFLAGS) test_dct.c image_generation.c

arm : test_dct.c image_generation.c
	$(CC) -o test_dct_arm  test_dct.c image_generation.c

image_gen : image_generation.c test_image_gen.c
	$(CC) -o test_image_gen test_image_gen.c image_generation.c

.PHONY: clean

clean: 
	rm -f $(binaries) *.o