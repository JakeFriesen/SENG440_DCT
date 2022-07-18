## TODO Checklist:
- [X] Copy dct_optimized and write with the embedded ASM instruction
- [ ] Test out 16 vs 32 bit temporary variables, see if there are improvements
    - There are improvements, but it breaks at the moment when converting to 32 bit
    - Need to decide if this is worth figuring out
- [X] Try out compiler optimization flags
    - -O3 works quite well, -ftree-vectorize is even better but needs to be verified on system
    - Verified on VM -ftree-vectorize -O3 works the same
    - Real ARM machine does not like -ftreevectorize, or march=armv6
- [ ] Check for saturation vs wraparound addition
    - Want saturation for most additions, which isn't the default
    - Inline asm sort of added, has not been tested
- [X] Optimize for loops in dct_2d function
- [X] Figure out how the butterfly macro is eliminating the multiplies
    - Automatically replaces mul with add and shifts
- [ ] Von Neuman rounding - should be performed at every truncation - currently not done at all?
    -Added some basic non vn rouding, doesn't change results much
- [ ] Vector Operations - Neon intrinsics
    - There are definitely some places that could be beneficial
    - Potentially a lot of additional work
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
- [ ] Start UML documentation / Schematics
- [ ] Report - Due at the same time as presentation
- [ ] Presentation - 15 slides, 15 minutes
- [X] Barr-C Standards


### list - Jake:
- [x] Barr-C
- [ ] Get working on real ARM machine
- [ ] 32 bit temp variables

