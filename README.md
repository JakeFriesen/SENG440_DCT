README


Things To Do:
1. Fixed Point Arithmetic
         stage 1   stage 2   stage 3   stage 4
0- (8)   -(9)       -(10)     -(11)             -(11)
1- (8)   -(9)       -(10)     -(15)             -(16)
2- (8)   -(9)       -(10)-(x5)-(11)             -(11)
3- (8)   -(9)       -(10)-(x5)-(16)             -(16)
4- (8)   -(9) -(x4) -(14)     -(16)             -(16)
5- (8)   -(9) -(x4) -(14)     -(15)-(x4)-(19)-vn-(16)
6- (8)   -(9) -(x4) -(14)     -(15)-(x4)-(19)-vn-(16)
7- (8)   -(9) -(x4) -(14)     -(15)             -(16)

Need to have fewer bits after 1-d dct, but have full 16 bit after 2-d dct
Reduce 16 down to 12, through loeffler again up to 20, then down to 16?

2. Inverse DCT Algorithm
"Note that the inverse
DCT uses exactly the same algorithmic structure as the DCT itself, but in reverse order. Outputs thus become inputs and vice
versa."
- Should be able to reverse the order of the stages, and then use von neuman rounding to reduce the number of bits back down to 8, and remove the scale factor


3. Proper File Management
- negative number support
- non pgm files for compressed images
- 

4. Vector Operations?
Seems like it will be a lot of work, but could be useful

5. Saturation vs Wrap-around?
Probably want saturation?

8. Hardware
- The simple project needs to be revised to match what is said on the slides 
- Could also get the ocsilliscope timing
- Full loeffler in hardware? Using vector operations?
- 

9. Others
- Test that the makefile compiles with the flags for arm


TODO Checklist:
[X] Copy dct_optimized and write with the embedded ASM instruction
[ ] Test out 16 vs 32 bit temporary variables, see if there are improvements
    - There are improvements, but it breaks at the moment when converting to 32 bit
    - Need to decide if this is work figuring out
[X] Try out compiler optimization flags
    - -O3 works quite well, -ftree-vectorize is even better but needs to be verified on system
    - Verified on VM -ftree-vectorize -O3 works the same
[ ] Check for saturation vs wraparound addition
[X] Optimize for loops in dct_2d function
[X] Figure out how the butterfly macro is eliminating the multiplies
    - Automatically replaces mul with add and shifts
[ ] Von Neuman rounding - should be performed at every truncation - currently not done at all?
    -Added some basic non vn rouding, doesn't change results much

File Handling:
[X] Negative number support in write/read to file functions
    -Added, minimal testing done
[ ] Constant line length for saving images

ARM:
[X] File can't be opened on VM
    -Fixed, must run executable from top dir, otherwise the path for the image must be changed

Other:
[ ] Start UML documentation / Schematics
[ ] Report - When is this due?
[ ] Presentation - 15 slides, 15 minutes

