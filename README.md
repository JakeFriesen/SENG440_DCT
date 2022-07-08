README


Things To Do:
1. Fixed Point Arithmetic
         stage 1   stage 2   stage 3   stage 4
0- (8)   -(9)       -(10)     -(11)             -(11)
2- (8)   -(9)       -(10)     -(11)             -(11)
3- (8)   -(9)       -(10)-(x5)-(16)             -(16)
4- (8)   -(9)       -(10)-(x5)-(16)             -(16)
1- (8)   -(9)       -(14)     -(15)             -(16)
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

6. What parts need to be optimized?
Should the file handling parts be optimized too? Seems unnessesary, but that might be what Sima wants?

7. Matrix handling optimizations
- Given the image pointer, would be best to directly manipulate those values?
- When would copying a small amount be beneficial (if its always an array I don't think it will always be stored in mem)
- Currently: Copy to matrix array, and also copy to a buffer

8. Hardware
- The simple project needs to be revised to match what is said on the slides 
- Could also get the ocsilliscope timing
- Full loeffler in hardware? Using vector operations?
- 

9. Others
- Move functions inside dct.h into its own .c file with the header file separate
- Test that the makefile compiles with the flags for arm
10.
- Butterfly instruction as its own inline function.

