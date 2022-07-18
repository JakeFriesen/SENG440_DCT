native : CC=gcc
native : CFLAGS= -static

arm : CC=arm-linux-gnueabi-gcc
arm : CFLAGS= -static -O3 

#-march=armv4t -mtune=arm920t -ftree-vectorize
asm : CFLAGS = -static -O3 -ftree-vectorize -march=armv6

realarm : CC=arm-linux-gcc
realarm : CFLAGS= -static -O3

binaries= test_image_gen dct_image_compression dct_image_compression_arm
assembly = test_dct_arm dct_image_compression_arm 
images = image.pgm Decompressed_Image.pgm Compressed_Image.pgm
DIR_S = source
DIR_O = obj
DIR_CLEAN = $(patsubst %,$(DIR_O)/%,$(binaries))
DIR_ASM = Assembly
_SRC = dct_image_compression.c dct_optimized.c image_generation.c
SRC = $(patsubst %,$(DIR_S)/%,$(_SRC))
_DIR_IM = test_img
DIR_IM = $(patsubst %,$(_DIR_IM)/%,$(images))

all: clean native arm

native : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression  $(CFLAGS) $(SRC)
	./$(DIR_O)/dct_image_compression

arm : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression_arm  $(CFLAGS) $(ARGS) $(SRC)

image_gen : image_generation.c test_image_gen.c
	$(CC) -o $(DIR_O)/test_image_gen $(CFLAGS) $(DIR_S)/test_image_gen.c $(DIR_S)/image_generation.c

asm : $(DIR_S)/dct_optimized.c
	arm-linux-gnueabi-gcc -o $(DIR_ASM)/dct_optimized.s -S $(CFLAGS) $(ARGS) $(DIR_S)/dct_optimized.c

realarm : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression_realarm  $(CFLAGS) $(ARGS) $(SRC)
	lftp -c "open user4:q6coHjd7P@arm; put obj/dct_image_compression_realarm;"
	telnet arm
	(sleep 1; echo user4; sleep 1; echo q6coHjd7P; sleep 1; echo chmod +x dct_image_compression_realarm)
	
.PHONY: clean

clean: 
	rm -f $(DIR_CLEAN) $(DIR_IM)