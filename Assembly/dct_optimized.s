	.arch armv6
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"dct_optimized.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	butterfly, %function
butterfly:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, fp}
	add	fp, sp, #12
	sub	sp, sp, #8
	mov	ip, r0
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, ip	@ movhi
	strh	r3, [fp, #-14]	@ movhi
	mov	r3, r0	@ movhi
	strh	r3, [fp, #-16]	@ movhi
	mov	r3, r1	@ movhi
	strh	r3, [fp, #-18]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r2, [fp, #-14]
	ldrsh	r3, [fp, #-16]
	add	r5, r2, r3
	ldrsh	r3, [fp, #-18]
	mul	r5, r3, r5
	ldrsh	r2, [fp, #-20]
	ldrsh	r3, [fp, #-18]
	sub	r4, r2, r3
	ldrsh	r3, [fp, #-16]
	mul	r4, r3, r4
	add	r4, r4, r5
	asr	r2, r4, #5
	asr	r3, r4, #4
	and	r3, r3, #1
	add	r4, r2, r3
	uxth	r6, r4
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	add	r4, r2, r3
	rsb	r3, r4, #0
	ldrsh	r2, [fp, #-14]
	mul	r4, r2, r3
	add	r4, r4, r5
	asr	r2, r4, #5
	asr	r3, r4, #4
	and	r3, r3, #1
	add	r4, r2, r3
	lsl	r3, r4, #16
	orr	r6, r6, r3
	mov	r3, r6
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, r6, fp}
	bx	lr
	.size	butterfly, .-butterfly
	.align	2
	.global	dct_2d
	.syntax unified
	.arm
	.fpu softvfp
	.type	dct_2d, %function
dct_2d:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, r1
	strh	r3, [fp, #-26]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L4
.L7:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L5
.L6:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r3, #1
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r3, #2
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r3, #3
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r3, #4
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r3, #5
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r3, #6
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	add	r3, r3, #7
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	ldrsh	r2, [fp, #-26]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldrsh	r3, [fp, #-26]
	mov	r2, r3
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrsh	r2, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldrsh	r2, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldrsh	r2, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldrsh	r2, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldrsh	r2, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldrsh	r2, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldrsh	r2, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L5:
	ldrsh	r3, [fp, #-28]
	asr	r3, r3, #3
	sxth	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	blt	.L6
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L4:
	ldrsh	r3, [fp, #-26]
	asr	r3, r3, #3
	sxth	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	cmp	r3, r2
	blt	.L7
	nop
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	dct_2d, .-dct_2d
	.align	2
	.global	loeffler_opt
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler_opt, %function
loeffler_opt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #32
	sub	sp, sp, #20
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [fp, #-48]
	b	.L10
.L9:
	mov	r3, #1
.L10:
	mov	r9, r3
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	mov	r1, r9
	mov	r3, r1
	lsl	r3, r3, #3
	sub	r1, r3, r1
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	add	r3, r2, r3
	uxth	r3, r3
	sxth	r7, r3
	ldr	r3, [fp, #-44]
	mov	r2, r9
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	mov	r1, r9
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	add	r3, r2, r3
	uxth	r3, r3
	sxth	r8, r3
	mov	r3, r9
	lsl	r2, r3, #1
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	mov	r1, r9
	mov	r3, r1
	lsl	r3, r3, #2
	add	r1, r3, r1
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	add	r3, r2, r3
	uxth	r3, r3
	sxth	r5, r3
	mov	r2, r9
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	mov	r3, r9
	lsl	r1, r3, #2
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	add	r3, r2, r3
	uxth	r3, r3
	sxth	r4, r3
	.syntax divided
@ 126 "source/dct_optimized.c" 1
	 qadd 	r3 , r7 , r4

@ 0 "" 2
	.arm
	.syntax unified
	mov	r6, r3
	mov	r2, r8
	mov	r3, r5
	add	r10, r2, r3
	uxth	r2, r8
	uxth	r3, r5
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r5, r3
	uxth	r2, r7
	uxth	r3, r4
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r4, r3
	sxth	r7, r6
	sxth	r8, r10
	mov	r2, r7
	mov	r3, r8
	add	r6, r2, r3
	uxth	r2, r7
	uxth	r3, r8
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r8, r3
	sxth	r7, r6
	ldr	r3, .L12
	mov	r2, #139
	mov	r1, r4
	mov	r0, r5
	bl	butterfly
	mov	r6, r0
	sxth	r5, r6
	asr	r3, r5, #2
	sxth	r5, r3
	mov	r3, r6
	lsr	r3, r3, #16
	sxth	r4, r3
	asr	r3, r4, #2
	sxth	r4, r3
	mov	r6, r7
	mov	r2, r9
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	mov	r3, r9
	lsl	r1, r3, #2
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r7, r3
	mov	r3, r8
	lsl	r1, r3, #1
	mov	r3, r9
	lsl	r2, r3, #2
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	mov	r3, r9
	lsl	r2, r3, #1
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	mov	r1, r9
	mov	r3, r1
	lsl	r3, r3, #2
	add	r1, r3, r1
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r8, r3
	mov	r3, r9
	lsl	r2, r3, #1
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	strh	r5, [r3]	@ movhi
	ldr	r3, [fp, #-44]
	mov	r2, r9
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	mov	r1, r9
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r5, r3
	mov	r2, r9
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	strh	r4, [r3]	@ movhi
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	mov	r1, r9
	mov	r3, r1
	lsl	r3, r3, #3
	sub	r1, r3, r1
	ldr	r3, [fp, #-44]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r4, r3
	lsl	r1, r6, #1
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	mov	r3, #142
	mov	r2, #213
	mov	r1, r4
	mov	r0, r7
	bl	butterfly
	mov	r6, r0
	sxth	r7, r6
	mov	r3, r6
	lsr	r3, r3, #16
	sxth	r4, r3
	mov	r3, #50
	mov	r2, #251
	mov	r1, r5
	mov	r0, r8
	bl	butterfly
	mov	r6, r0
	sxth	r8, r6
	mov	r3, r6
	lsr	r3, r3, #16
	sxth	r5, r3
	mov	r2, r7
	mov	r3, r5
	add	r3, r2, r3
	asr	r6, r3, #1
	mov	r2, r7
	mov	r3, r5
	sub	r3, r2, r3
	asr	r3, r3, #1
	sxth	r5, r3
	sxth	r7, r6
	mov	r2, r4
	mov	r3, r8
	sub	r3, r2, r3
	asr	r6, r3, #1
	mov	r2, r4
	mov	r3, r8
	add	r3, r2, r3
	asr	r3, r3, #1
	sxth	r4, r3
	sxth	r8, r6
	mov	r2, r4
	mov	r3, r7
	sub	r3, r2, r3
	asr	r6, r3, #1
	mov	r2, r4
	mov	r3, r7
	add	r3, r2, r3
	asr	r10, r3, #1
	mov	r2, r9
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r2, r3, r2
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	sxth	r2, r6
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-44]
	mov	r2, r9
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	sxth	r2, r10
	strh	r2, [r3]	@ movhi
	mov	r1, r8
	mov	r2, r1
	lsl	r2, r2, #1
	add	r2, r2, r1
	lsl	r3, r2, #4
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	asr	r1, r3, #9
	mov	r2, r9
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	mov	r1, r5
	mov	r2, r1
	lsl	r2, r2, #1
	add	r2, r2, r1
	lsl	r3, r2, #4
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	asr	r1, r3, #9
	mov	r2, r9
	mov	r3, r2
	lsl	r3, r3, #2
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L13:
	.align	2
.L12:
	.word	334
	.size	loeffler_opt, .-loeffler_opt
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
