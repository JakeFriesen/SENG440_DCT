# 2-D Discrete Cosine Transform
Calem Bardy - V00890988
Jake Friesen - V00906053

## Project Overview

### Compilation Process
To compile the project to compute the 2D-DCT of a test file:
***arm-linux-gcc -o obj/dct_image_compression_realarm  -O3 -march=armv4t -mtune=arm920t -ftree-vectorize  source/dct_image_compression.c source/dct_optimized.c source/image_generation.c***
or use the makefile:
***make arm***
To compile and run on the real arm machine (while on seng440 machine):
***make realarm***
This will automatically telnet into the real arm machine copy the newest binary, and execute the project. By default, this will generate a random image of size 360 x 240. 
To specify an image:
***make realarm ARGS="path/to/image"***
This works for ascii encoded PGM file only. Do not add the extension to the image path. 





## TODO Checklist:
- [X] Copy dct_optimized and write with the embedded ASM instruction
- [X] Test out 16 vs 32 bit temporary variables, see if there are improvements
    - There are improvements, but it breaks at the moment when converting to 32 bit
    - Need to decide if this is worth figuring out
- [X] Try out compiler optimization flags
    - -O3 works quite well, -ftree-vectorize is even better but needs to be verified on system
    - Verified on VM -ftree-vectorize -O3 works the same
    - Real ARM machine does not like -ftreevectorize, or march=armv6
- [X] Check for saturation vs wraparound addition
    - Want saturation for most additions, which isn't the default
    - Inline asm sort of added, has not been tested
- [X] Optimize for loops in dct_2d function
- [X] Figure out how the butterfly macro is eliminating the multiplies
    - Automatically replaces mul with add and shifts
- [X] Von Neuman rounding - should be performed at every truncation - currently not done at all?
    -Added some basic non vn rouding, doesn't change results much
- [X] Vector Operations - Neon intrinsics
    - There are definitely some places that could be beneficial
    - Potentially a lot of additional work
    - Not worth adding, no advantage
- [ ] Inverse DCT Algorithm
    - Should be able to reverse the order of the stages, and then use von neuman rounding to reduce the number of bits back down to 8, and remove the scale factor
- [ ] Packing inputs and output files
    - Since inputs are always 8 bit values, could pack into 32 bit values, reduce mem reads by 4x
    - Would break symmetry between 1D and 2D operation (12 bit intermediate stage, 16 bit final stage)

#### File Handling:
- [X] Negative number support in write/read to file functions
    -Added, minimal testing done
- [ ] Constant line length for saving images
    - not that important

#### ARM:
- [X] File can't be opened on VM
    -Fixed, must run executable from top dir, otherwise the path for the image must be changed

#### Hardware:
- [ ] The simple project needs to be revised to match what is said on the slides 
- [ ] Ocsilliscope timing?

#### Other:
- [X] Start UML documentation / Schematics
- [ ] Report - Due at the same time as presentation
- [ ] Presentation - 15 slides, 15 minutes
- [X] Barr-C Standards

#### Performance Evaluation:
- Need Performance metrics between various stages of optimization
- Need a runable exe for each test, that is the same number of accesses between tests
- [ ] unoptimized - with floats - asm and exe for 8x8 running only
- [ ] optimized - no flags - asm and exe for 8x8 only
- [ ] optimized - all flags - asm and exe for 8x8 only
- asm hardware - Cannot run performance, can't create exe with this



### list - Jake:
- [x] Barr-C
- [X] Get working on real ARM machine
- [X] 32 bit temp variables - Priority 1
    - Isn't worth it, with heavy compile optimizations, it changes by 7 instructions
- [X] Saturation addition? - Priority 2
    - qadd unsupported in Samsung processor, couldn't find a substitute
- [x] Packed Input file? - Priority 3
- [ ] Inverse DCT
- [X] Compile various asm files on real ARM - Done at the end
- [ ] Performance Evaluation
    - [ ] valgrind - for unoptimized, optimized, asm instruction
    - [ ] gprof
    - [ ] perf


