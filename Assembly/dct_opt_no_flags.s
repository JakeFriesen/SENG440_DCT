	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 18, 4
	.file	"dct_optimized.c"
	.text
	.align	2
	.global	dct_2d
	.type	dct_2d, %function
dct_2d:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, r1
	strh	r3, [fp, #-26]	@ movhi
	strh	r2, [fp, #-28]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L2
.L5:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L3
.L4:
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #3
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	add	r2, r3, #1
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	add	r2, r3, #2
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	add	r2, r3, #3
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	add	r2, r3, #4
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	add	r2, r3, #5
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	add	r2, r3, #6
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	mov	r3, r3, asl #3
	add	r2, r3, #7
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r0, [fp, #-24]
	mov	r1, r3
	mov	r2, #0
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	mov	r2, r3, asl #3
	ldrsh	r3, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-20]
	mov	r3, r3, asl #3
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldrsh	r2, [fp, #-26]
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldrsh	r2, [fp, #-26]
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	ldrsh	r2, [fp, #-26]
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #3
	ldrsh	r2, [fp, #-26]
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	ldrsh	r2, [fp, #-26]
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #5
	ldrsh	r2, [fp, #-26]
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #6
	ldrsh	r2, [fp, #-26]
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #7
	ldrsh	r2, [fp, #-26]
	ldr	r0, [fp, #-24]
	mov	r1, r3
	bl	loeffler_opt
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L3:
	ldrsh	r3, [fp, #-28]
	mov	r3, r3, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r2, r3, asr #16
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L4
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L2:
	ldrsh	r3, [fp, #-26]
	mov	r3, r3, asr #3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r2, r3, asr #16
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L5
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	dct_2d, .-dct_2d
	.align	2
	.type	loeffler_opt, %function
loeffler_opt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L8
	ldr	r1, [fp, #-24]
	str	r1, [fp, #-52]
	b	.L9
.L8:
	mov	r2, #1
	str	r2, [fp, #-52]
.L9:
	ldr	r4, [fp, #-52]
	ldr	r3, [fp, #-20]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r4
	mov	r3, r3, asl #3
	rsb	r2, r4, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-20]
	add	r3, r4, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r4
	mov	r2, r3, asl #1
	mov	r3, r2, asl #2
	rsb	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-36]
	mov	r2, r4, asl #1
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r4
	mov	r3, r3, asl #2
	add	r2, r3, r4
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	mov	r3, r4
	mov	r3, r3, asl #1
	add	r2, r3, r4
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	mov	r2, r4, asl #2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	add	r3, r1, r3
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-40]
	mov	r3, r1, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	add	r2, r2, r3
	str	r2, [fp, #-48]
	ldr	r2, [fp, #-36]
	mov	r3, r2, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	add	r2, r2, r3
	str	r2, [fp, #-44]
	ldr	r2, [fp, #-36]
	mov	r3, r2, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-40]
	mov	r3, r2, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-48]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-40]
	ldr	r1, [fp, #-44]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	mov	r3, r2, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-36]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	add	r2, r2, r3
	str	r2, [fp, #-48]
	ldr	r2, [fp, #-40]
	mov	r3, r2, asl #16
	mov	r2, r3, lsr #16
	ldr	r1, [fp, #-36]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-48]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-40]
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #139
	mov	r3, #332
	add	r3, r3, #2
	bl	butterfly
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #2
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-40]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	str	r3, [fp, #-48]
	mov	r3, r4
	mov	r3, r3, asl #1
	add	r2, r3, r4
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	mov	r2, r4, asl #2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-40]
	mov	r2, r4, asl #2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldr	r2, [fp, #-36]
	strh	r2, [r3, #0]	@ movhi
	mov	r2, r4, asl #1
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r4
	mov	r3, r3, asl #2
	add	r2, r3, r4
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-36]
	mov	r2, r4, asl #1
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r4, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r4
	mov	r2, r3, asl #1
	mov	r3, r2, asl #2
	rsb	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	mov	r3, r4
	mov	r2, r3, asl #1
	mov	r3, r2, asl #2
	rsb	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	mov	r3, r3, asr #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, [fp, #-20]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r1, r3, lsr #16
	mov	r3, r4
	mov	r3, r3, asl #3
	rsb	r2, r4, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrh	r3, [r3, #0]
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	rsb	r3, r3, r1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-20]
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r1, [fp, #-48]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #0]	@ movhi
	ldr	r2, [fp, #-40]
	mov	r3, r2, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #213
	mov	r3, #142
	bl	butterfly
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-48]
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-36]
	mov	r3, r1, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	mov	r0, r2
	mov	r1, r3
	mov	r2, #251
	mov	r3, #50
	bl	butterfly
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-48]
	mov	r3, r3, lsr #16
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	ldr	r1, [fp, #-40]
	mov	r3, r1, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	add	r3, r2, r3
	mov	r3, r3, asr #1
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-40]
	mov	r3, r2, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-48]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-40]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-36]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r2
	mov	r3, r3, asr #1
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-36]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	add	r3, r2, r3
	mov	r3, r3, asr #1
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-48]
	mov	r3, r2, asl #16
	mov	r3, r3, lsr #16
	str	r3, [fp, #-36]
	ldr	r1, [fp, #-28]
	mov	r3, r1, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-40]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	rsb	r3, r3, r2
	mov	r3, r3, asr #2
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-28]
	mov	r3, r2, asl #16
	mov	r2, r3, asr #16
	ldr	r1, [fp, #-40]
	mov	r3, r1, asl #16
	mov	r3, r3, asr #16
	add	r3, r2, r3
	mov	r3, r3, asr #2
	str	r3, [fp, #-44]
	mov	r3, r4
	mov	r3, r3, asl #3
	rsb	r2, r4, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r1, [fp, #-48]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #0]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r4, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r1, [fp, #-44]
	mov	r3, r1, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r2, #0]	@ movhi
	mov	r3, r4
	mov	r3, r3, asl #1
	add	r2, r3, r4
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r0, r3, r2
	ldr	r2, [fp, #-36]
	mov	r3, r2, asl #16
	mov	r1, r3, asr #16
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	rsb	r2, r3, r2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	mov	r3, r3, asr #10
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r0, #0]	@ movhi
	mov	r3, r4
	mov	r3, r3, asl #2
	add	r2, r3, r4
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3, asl #1
	ldr	r3, [fp, #-16]
	add	r0, r3, r2
	ldr	r1, [fp, #-32]
	mov	r3, r1, asl #16
	mov	r1, r3, asr #16
	mov	r3, r1
	mov	r3, r3, asl #2
	mov	r2, r3, asl #2
	rsb	r2, r3, r2
	mov	r3, r2, asl #4
	rsb	r3, r2, r3
	add	r3, r3, r1
	mov	r3, r3, asl #1
	mov	r3, r3, asr #10
	mov	r3, r3, asl #16
	mov	r3, r3, lsr #16
	strh	r3, [r0, #0]	@ movhi
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #8
	ldmfd	sp!, {r4, fp, lr}
	bx	lr
	.size	loeffler_opt, .-loeffler_opt
	.align	2
	.type	butterfly, %function
butterfly:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	strh	r0, [fp, #-6]	@ movhi
	strh	r1, [fp, #-8]	@ movhi
	strh	r2, [fp, #-10]	@ movhi
	strh	r3, [fp, #-12]	@ movhi
	ldrsh	r2, [fp, #-6]
	ldrsh	r3, [fp, #-8]
	add	r0, r2, r3
	ldrsh	r3, [fp, #-10]
	mul	r0, r3, r0
	ldrsh	r2, [fp, #-12]
	ldrsh	r3, [fp, #-10]
	rsb	r2, r3, r2
	str	r2, [fp, #-16]
	ldrsh	r3, [fp, #-8]
	ldr	r1, [fp, #-16]
	mul	r1, r3, r1
	str	r1, [fp, #-16]
	ldr	r2, [fp, #-16]
	add	r2, r2, r0
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asr #5
	ldr	ip, [fp, #-16]
	mov	r3, ip, asr #4
	and	r3, r3, #1
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-16]
	mov	r1, r2, asl #16
	mov	r1, r1, lsr #16
	ldrsh	r2, [fp, #-10]
	ldrsh	r3, [fp, #-12]
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	rsb	r2, r3, #0
	ldrsh	r3, [fp, #-6]
	mul	ip, r3, r2
	str	ip, [fp, #-16]
	ldr	r2, [fp, #-16]
	add	r2, r2, r0
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r2, r3, asr #5
	ldr	ip, [fp, #-16]
	mov	r3, ip, asr #4
	and	r3, r3, #1
	add	r2, r2, r3
	str	r2, [fp, #-16]
	ldr	r0, [fp, #-16]
	mov	r3, r0, asl #16
	orr	r1, r1, r3
	mov	r3, r1
	mov	r0, r3
	add	sp, fp, #0
	ldmfd	sp!, {fp}
	bx	lr
	.size	butterfly, .-butterfly
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
