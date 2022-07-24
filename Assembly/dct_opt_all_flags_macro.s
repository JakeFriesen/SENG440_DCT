	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 4
	.file	"dct_optimized.c"
	.text
	.align	2
	.type	loeffler_opt, %function
loeffler_opt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	subs	ip, r2, #0
	mov	fp, r0
	sub	sp, sp, #48
	mov	r0, r1
	moveq	r6, #1
	addeq	r2, r2, #7
	moveq	r7, #6
	moveq	r4, #2
	moveq	r5, #5
	moveq	r1, #3
	moveq	r3, #4
	beq	.L3
	mov	r3, ip, asl #1
	mov	r1, ip, asl #2
	mov	r4, r3
	mov	r2, ip, asl #3
	rsb	r7, r3, r2
	add	r5, r1, ip
	mov	r3, r1
	mov	r6, ip
	rsb	r2, ip, r2
	add	r1, r4, ip
.L3:
	add	r1, r1, r0
	mov	r1, r1, asl #1
	add	r2, r2, r0
	str	r1, [sp, #12]
	add	ip, r3, r0
	add	r1, r5, r0
	mov	r2, r2, asl #1
	str	r2, [sp, #36]
	mov	ip, ip, asl #1
	add	r3, r4, r0
	add	r2, r7, r0
	mov	r1, r1, asl #1
	ldrh	r4, [fp, ip]
	str	r1, [sp, #16]
	mov	r3, r3, asl #1
	ldr	r1, [sp, #12]
	mov	r2, r2, asl #1
	str	r3, [sp, #20]
	str	r2, [sp, #28]
	add	r3, r6, r0
	mov	r0, r0, asl #1
	ldrh	r8, [fp, r1]
	str	ip, [sp, #8]
	ldrh	r1, [fp, r0]
	str	r4, [sp, #44]
	ldr	ip, [sp, #36]
	ldr	r4, [sp, #28]
	str	r0, [sp, #40]
	mov	r3, r3, asl #1
	ldr	r0, [sp, #16]
	str	r3, [sp, #32]
	ldr	r2, [sp, #20]
	ldrh	sl, [fp, ip]
	ldrh	r9, [fp, r0]
	ldr	ip, [sp, #32]
	ldrh	r0, [fp, r4]
	ldr	r4, [sp, #44]
	ldrh	r3, [fp, r2]
	ldrh	r2, [fp, ip]
	add	ip, r4, r8
	add	sl, sl, r1
	add	r9, r9, r3
	mov	ip, ip, asl #16
	str	ip, [sp, #4]
	add	r3, r0, r2
	mov	r9, r9, asl #16
	mov	sl, sl, asl #16
	mov	ip, ip, lsr #16
	mov	r3, r3, asl #16
	rsb	ip, ip, sl, lsr #16
	mov	r1, r9, lsr #16
	rsb	r1, r1, r3, lsr #16
	mov	ip, ip, asl #16
	mov	ip, ip, asr #16
	mov	r1, r1, asl #16
	mov	r1, r1, asr #16
	mov	r0, ip, asl #5
	str	r3, [sp, #24]
	sub	r0, r0, ip, asl #3
	mov	r3, r1, asl #4
	mov	r7, r1, asl #2
	mov	r5, r1, asl #5
	sub	r5, r5, r1, asl #3
	add	r7, r7, r3
	mov	r2, r0, asl #3
	rsb	r2, r0, r2
	mov	r6, ip, asl #2
	mov	r0, ip, asl #4
	mov	r3, r7, asl #3
	mov	r4, r5, asl #3
	add	r6, r6, r0
	rsb	r4, r5, r4
	rsb	r3, r7, r3
	rsb	r3, r1, r3
	rsb	r2, ip, r2
	mov	r0, r6, asl #3
	rsb	r1, r4, r1
	ldr	r4, [sp, #24]
	rsb	r0, r6, r0
	mov	r2, r2, asl #1
	add	r2, r2, r3
	rsb	r0, ip, r0
	mov	r3, r4, asr #16
	ldr	ip, [sp, #4]
	add	r3, r3, r9, asr #16
	mov	r1, r1, asl #1
	mov	r2, r2, asr #5
	mov	sl, sl, asr #16
	mov	r9, r3, asl #16
	add	sl, sl, ip, asr #16
	add	r0, r0, r1
	mov	r2, r2, asl #16
	mov	sl, sl, asl #16
	mov	r0, r0, asr #5
	mov	r3, r9, lsr #16
	mov	r2, r2, lsr #16
	orr	r2, r2, r0, asl #16
	rsb	r3, r3, sl, lsr #16
	ldr	r0, [sp, #8]
	mov	r3, r3, asl #1
	strh	r3, [fp, r0]	@ movhi
	ldr	r4, [sp, #16]
	ldr	r3, [sp, #20]
	mov	r1, r2, asl #16
	mov	r1, r1, asr #18
	ldrh	r5, [fp, r4]
	ldrh	r6, [fp, r3]
	strh	r1, [fp, r3]	@ movhi
	ldr	r0, [sp, #28]
	ldr	ip, [sp, #32]
	mov	r2, r2, asr #18
	ldrh	r4, [fp, r0]
	ldrh	r7, [fp, ip]
	strh	r2, [fp, r0]	@ movhi
	ldr	ip, [sp, #36]
	ldr	r2, [sp, #40]
	ldr	r0, [sp, #44]
	ldrh	r3, [fp, ip]
	ldrh	r1, [fp, r2]
	rsb	r8, r0, r8
	rsb	r1, r3, r1
	mov	r8, r8, asl #16
	mov	r8, r8, asr #16
	mov	r1, r1, asl #16
	mov	r1, r1, asr #16
	mov	r3, r8, asl #6
	mov	ip, r8, asl #3
	add	ip, ip, r3
	mov	r0, r1, asl #3
	mov	r3, r1, asl #6
	rsb	ip, r8, ip
	rsb	r6, r5, r6
	rsb	r7, r4, r7
	add	r0, r0, r3
	rsb	r0, r1, r0
	mov	r3, ip, asl #2
	mov	r6, r6, asl #16
	mov	r7, r7, asl #16
	mov	r6, r6, asr #16
	mov	r7, r7, asr #16
	rsb	r3, ip, r3
	mov	r2, r0, asl #1
	mov	r5, r7, asl #3
	add	r2, r2, r3
	mov	r1, r0, asl #2
	mov	r3, r6, asl #3
	mov	r8, r6, asl #1
	mov	r4, r7, asl #1
	add	r8, r8, r3
	add	r4, r4, r5
	rsb	r1, r0, r1
	mov	r3, r7, asl #8
	mov	r5, r6, asl #8
	mov	r2, r2, asr #5
	sub	r1, r1, ip, asl #1
	sub	r3, r3, r7, asl #2
	sub	r5, r5, r6, asl #2
	mov	r0, r8, asl #2
	mov	ip, r4, asl #2
	mov	r2, r2, asl #16
	add	r8, r8, r0
	rsb	r5, r6, r5
	add	r4, r4, ip
	mov	r1, r1, asr #5
	rsb	r3, r7, r3
	mov	r2, r2, lsr #16
	orr	r2, r2, r1, asl #16
	rsb	r3, r8, r3
	add	r4, r4, r5
	mov	ip, r2, asl #16
	mov	r3, r3, asl #11
	mov	r4, r4, asl #11
	mov	ip, ip, asr #16
	mov	r4, r4, asr #16
	mov	r3, r3, asr #16
	mov	r2, r2, asr #16
	rsb	r5, r4, r2
	rsb	r6, r3, ip
	mov	r5, r5, asr #1
	mov	r6, r6, asr #1
	mov	r1, r5, asl #4
	mov	r0, r6, asl #4
	sub	r1, r1, r5, asl #2
	sub	r0, r0, r6, asl #2
	add	r3, r3, ip
	add	r2, r2, r4
	mov	r3, r3, asr #1
	mov	ip, r1, asl #4
	mov	r4, r0, asl #4
	mov	r2, r2, asr #1
	mov	sl, sl, asr #16
	rsb	ip, r1, ip
	rsb	r4, r0, r4
	add	r1, r3, r2
	ldr	r0, [sp, #36]
	add	sl, sl, r9, asr #16
	rsb	r2, r3, r2
	ldr	r3, [sp, #40]
	mov	sl, sl, asl #1
	mov	r2, r2, asr #1
	strh	sl, [fp, r3]	@ movhi
	add	ip, ip, r5
	strh	r2, [fp, r0]	@ movhi
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #32]
	mov	r1, r1, asr #1
	mov	ip, ip, lsr #8
	strh	r1, [fp, r2]	@ movhi
	add	r4, r4, r6
	strh	ip, [fp, r3]	@ movhi
	ldr	ip, [sp, #16]
	mov	r4, r4, lsr #8
	strh	r4, [fp, ip]	@ movhi
	mov	r0, #1
	add	sp, sp, #48
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
	.size	loeffler_opt, .-loeffler_opt
	.align	2
	.global	dct_2d
	.type	dct_2d, %function
dct_2d:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	mov	r3, r1, asr #3
	cmp	r3, #0
	sub	sp, sp, #12
	mov	r6, r1
	str	r3, [sp, #4]
	mov	r7, r0
	movgt	r9, r2, asr #3
	movgt	fp, #0
	ble	.L7
.L8:
	cmp	r9, #0
	movgt	r8, fp, asl #3
	movgt	sl, #0
	ble	.L10
.L9:
	mov	r4, sl, asl #3
	mla	r5, r6, r4, r8
	mov	r2, #0
	mov	r1, r5
	mov	r0, r7
	bl	loeffler_opt
	mla	r1, r4, r6, r6
	mov	r2, #0
	add	r1, r1, r8
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #2
	mla	r1, r6, r3, r8
	mov	r2, #0
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #3
	mla	r1, r6, r3, r8
	mov	r2, #0
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #4
	mla	r1, r6, r3, r8
	mov	r2, #0
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #5
	mla	r1, r6, r3, r8
	mov	r2, #0
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #6
	mla	r1, r6, r3, r8
	mov	r2, #0
	mov	r0, r7
	add	r4, r4, #7
	bl	loeffler_opt
	mla	r1, r6, r4, r8
	mov	r2, #0
	mov	r0, r7
	bl	loeffler_opt
	mov	r1, r5
	mov	r2, r6
	mov	r0, r7
	bl	loeffler_opt
	add	r1, r5, #1
	mov	r2, r6
	mov	r0, r7
	bl	loeffler_opt
	add	r1, r5, #2
	mov	r2, r6
	mov	r0, r7
	bl	loeffler_opt
	add	r1, r5, #3
	mov	r2, r6
	mov	r0, r7
	bl	loeffler_opt
	add	r1, r5, #4
	mov	r2, r6
	mov	r0, r7
	bl	loeffler_opt
	add	r1, r5, #5
	mov	r2, r6
	mov	r0, r7
	bl	loeffler_opt
	add	r1, r5, #6
	mov	r2, r6
	mov	r0, r7
	bl	loeffler_opt
	add	sl, sl, #1
	mov	r0, r7
	add	r1, r5, #7
	mov	r2, r6
	bl	loeffler_opt
	cmp	r9, sl
	bgt	.L9
.L10:
	ldr	r3, [sp, #4]
	add	fp, fp, #1
	cmp	r3, fp
	bgt	.L8
.L7:
	mov	r0, #1
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
	.size	dct_2d, .-dct_2d
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
