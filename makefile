native : CC=gcc
native : CFLAGS= -static

arm : CC=arm-linux-gnueabi-gcc
arm : CFLAGS= -static

binaries= test_dct test_dct_arm test_image_gen dct_image_compression test_optimize
assembly = test_dct_arm dct_image_compression_arm
images = image.pgm Decompressed_Image.pgm Compressed_Image.pgm
DIR_S = source
DIR_O = obj
DIR_ASM = Assembly
_SRC = dct_image_compression.c dct_optimized.c image_generation.c
SRC = $(patsubst %,$(DIR_S)/%,$(_SRC))

all: clean native arm

native : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression  $(CFLAGS) $(SRC)
	./$(DIR_O)/dct_image_compression

arm : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression_arm  $(CFLAGS) $(ARGS) $(SRC)

image_gen : image_generation.c test_image_gen.c
	$(CC) -o $(DIR_O)/test_image_gen $(CFLAGS) $(DIR_S)/test_image_gen.c $(DIR_S)/image_generation.c

asm : $(DIR_S)/dct_optimized.c
	arm-linux-gnueabi-gcc -o $(DIR_ASM)/dct_optimized.s -S -static $(ARGS) $(DIR_S)/dct_optimized.c

.PHONY: clean

clean: 
	rm -f $(binaries) $(DIR_O)/* $(images)