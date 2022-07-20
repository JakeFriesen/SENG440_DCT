native : CC=gcc
native : CFLAGS= -static

arm : CC=arm-linux-gnueabi-gcc
arm : CFLAGS= -static -O3 

asm : CC= /opt/arm/4.3.2/bin/arm-linux-gcc
asm : CFLAGS = -O3 -march=armv4t -mtune=arm920t -ftree-vectorize

realarm : CC=arm-linux-gcc
realarm : CFLAGS= -static -O3 -march=armv4t -mtune=arm920t -ftree-vectorize

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
	# $(CC) -o $(DIR_ASM)/dct_opt_no_flags.s -S -static $(DIR_S)/dct_optimized.c
	$(CC) -o $(DIR_ASM)/dct_opt_all_flags_32bit.s -S -static $(CFLAGS) $(DIR_S)/dct_optimized.c
	# $(CC) -o $(DIR_ASM)/loeffler_asm_instr.s -S -static $(CFLAGS) $(DIR_S)/dct_optimized_asm_instr.c

realarm : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression_realarm  $(CFLAGS) $(ARGS) $(SRC)
	lftp -c "open user4:q6coHjd7P@arm; mirror -R '/tmp/SENG440_DCT/obj' 'jake/obj'; mirror -R '/tmp/SENG440_DCT/test_img' 'jake/test_img';"
	(sleep 1; 			\
	echo user4; 		\
	sleep 1; 			\
	echo q6coHjd7P; 	\
	sleep 1; 			\
	echo "chmod +x jake/obj/dct_image_compre\ssion_realarm"; \
	sleep 1; 			\
	echo "cd jake"; 	\
	echo "./obj/dct_image_compression_realarm";\
	sleep 5; 			\
	echo "cd ..";		\
	sleep 1; 			\
	echo "rm -rf jake"; \
	sleep 1;) | telnet arm

.PHONY: clean

clean: 
	rm -f $(DIR_CLEAN) $(DIR_IM)
