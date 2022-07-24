native : CC=gcc
native : CFLAGS= -static

CC= arm-linux-gcc
CFLAGS= -O3 -march=armv4t -mtune=arm920t -ftree-vectorize

asm : CC= /opt/arm/4.3.2/bin/arm-linux-gcc
asm : CFLAGS = -O3 -march=armv4t -mtune=arm920t -ftree-vectorize

realarm : CC=arm-linux-gcc
realarm : CFLAGS= -static -O3 -march=armv4t -mtune=arm920t -ftree-vectorize

binaries= test_image_gen dct_image_compression dct_image_compression_arm dct_image_compression_realarm
assembly = test_dct_arm dct_image_compression_arm 
images = image.pgm Decompressed_Image.pgm Compressed_Image.pgm
DIR_T = testbench
DIR_S = source
DIR_O = obj
DIR_CLEAN = $(patsubst %,$(DIR_O)/%,$(binaries))
DIR_ASM = Assembly
_TESTBENCH = dct_optimized.c dct_unoptimized.c image_generation.c
TESTBENCH = $(patsubst %,$(DIR_S)/%,$(_TESTBENCH))
_SRC = dct_image_compression.c dct_optimized.c image_generation.c
SRC = $(patsubst %,$(DIR_S)/%,$(_SRC))
_DIR_IM = test_img
DIR_IM = $(patsubst %,$(_DIR_IM)/%,$(images))

all: clean arm realarm

native : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression  $(CFLAGS) $(SRC)
	./$(DIR_O)/dct_image_compression

arm : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression_realarm  $(CFLAGS) $(ARGS) $(SRC)

image_gen : image_generation.c test_image_gen.c
	$(CC) -o $(DIR_O)/test_image_gen $(CFLAGS) $(DIR_S)/test_image_gen.c $(DIR_S)/image_generation.c

asm : $(DIR_S)/dct_optimized.c
	$(CC) -o $(DIR_ASM)/dct_opt_no_flags.s -S -static $(DIR_S)/dct_optimized.c
	$(CC) -o $(DIR_ASM)/dct_opt_all_flags.s -S -static $(CFLAGS) $(DIR_S)/dct_optimized.c
	$(CC) -o $(DIR_ASM)/dct_opt_all_flags_thumb.s -S -static -mthumb $(CFLAGS) $(DIR_S)/dct_optimized.c
	$(CC) -o $(DIR_ASM)/loeffler_asm_instr.s -S -static $(CFLAGS) $(DIR_S)/dct_optimized_asm_instr.c

realarm : $(SRC)
	$(CC) -o $(DIR_O)/dct_image_compression_realarm  $(CFLAGS) $(SRC)
	lftp -c "open user4:q6coHjd7P@arm; mirror -R '/tmp/SENG440_DCT/obj' 'jake/obj'; mirror -R '/tmp/SENG440_DCT/test_img' 'jake/test_img';"
	./telnet_script.sh | telnet arm
	lftp -c "open user4:q6coHjd7P@arm; mirror 'jake/test_img' '/tmp/SENG440_DCT/test_img';"

statistics : $(SRC) $(DIR_S)/dct_unoptimized.c
	# $(CC) -o $(DIR_O)/comp_unoptimized -static $(DIR_T)/comp_test_unoptimized.c  $(TESTBENCH)
	# $(CC) -o $(DIR_O)/comp_optimized  -static $(DIR_T)/comp_test_optimized.c $(TESTBENCH)
	# $(CC) -o $(DIR_O)/comp_optimized_flags  -static $(CFLAGS) $(DIR_T)/comp_test_optimized.c $(TESTBENCH)
	valgrind --tool=callgrind ./obj/comp_unoptimized
	valgrind --tool=callgrind ./obj/comp_optimized
	valgrind --tool=callgrind ./obj/comp_optimized_flags
	# callgrind_annotate callgrind.out.PID | grep loeffler2d
	# callgrind_annotate callgrind.out.PID | grep loeffler
	# callgrind_annotate callgrind.out.PID | grep loeffler
	valgrind --tool=cachegrind --branch-sim=yes ./obj/comp_unoptimized
	valgrind --tool=cachegrind --branch-sim=yes ./obj/comp_optimized
	valgrind --tool=cachegrind --branch-sim=yes ./obj/comp_optimized_flags

.PHONY: clean

clean: 
	rm -f $(DIR_CLEAN) $(DIR_IM)
