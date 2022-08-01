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
- [x] Inverse DCT Algorithm
    - Should be able to reverse the order of the stages, and then use von neuman rounding to reduce the number of bits back down to 8, and remove the scale factor
- [x] Packing inputs and output files
    - Since inputs are always 8 bit values, could pack into 32 bit values, reduce mem reads by 4x
    - Would break symmetry between 1D and 2D operation (12 bit intermediate stage, 16 bit final stage)

#### File Handling:
- [X] Negative number support in write/read to file functions
    -Added, minimal testing done
- [ ] ~~Constant line length for saving images~~
    - not that important

#### ARM:
- [X] File can't be opened on VM
    -Fixed, must run executable from top dir, otherwise the path for the image must be changed

#### Hardware:
- [x] The simple project needs to be revised to match what is said on the slides 
- [ ] ~~Ocsilliscope timing?~~

#### Other:
- [X] Start UML documentation / Schematics
- [ ] Report - Due at the same time as presentation
- [ ] Presentation - 15 slides, 15 minutes
- [X] Barr-C Standards

#### Performance Evaluation:
- Need Performance metrics between various stages of optimization
- Need a runable exe for each test, that is the same number of accesses between tests
- [x] unoptimized - with floats - asm and exe for 8x8 running only
- [x] optimized - no flags - asm and exe for 8x8 only
- [x] optimized - all flags - asm and exe for 8x8 only
- asm hardware - Cannot run performance, can't create exe with this



### list - Jake:
- [x] Performance Evaluation
    - [x] valgrind - for unoptimized, optimiqzed, asm instruction
    - [ ] ~~gprof~~ These didn't work well, didn't seem worth it
    - [ ] ~~perf~~
- [x] Think about scale factor, maybe increase to SF=4 after DCT is finishedd
    -SF of 3 set, not changing
- [x] Debug MATLAB code to see why its shifting some pixels (on known good one too)
- [x] Code Cleanup
    - [x] Make sure testbench is operable and can be run by the TAs
    - [x] Remove anything that isn't being used (including previous versions, KEEP everything for unoptimized version)
    - [x] Update Readme with more general usage (MATLAB for comparisons, general walkthrough of where everything is, what files are the final ones, etc...)
    - [x] Clean up makefile, remove the comments stuff, remove things that shouldn't be recompiled/rerun
    - [x] Remove unnessessary binaries
    - [x] Cleanup testbench files, a lot are unnessessary
- [ ] Report - Talk about thumb implementation? It was not much longer
- [x] Report - Talk about PSNR

- [X] Barr-C comments specifically how Sima wanted
- [x] Report
    - [x] Get design challenges done (accuracy, reduced operator cost, time latency)
    - [x] Get numerical analysis done, probably also the discussion
- [x] Hardware needs to be updated
    - [x] Include a timing waveform file
- [ ] REMEMBER TO MAKE A NEW OBJ FILE BEFORE SUBMITTING!!!!