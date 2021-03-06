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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	subs	ip, r2, #0
	mov	fp, r0
	sub	sp, sp, #40
	mov	r0, r1
	moveq	r5, #1
	moveq	r4, #7
	moveq	r6, #6
	moveq	r8, #2
	moveq	r1, #5
	addeq	r2, r2, #3
	moveq	r3, #4
	beq	.L3
	mov	r3, ip, asl #1
	mov	r2, ip, asl #3
	mov	r8, r3
	mov	r1, ip, asl #2
	rsb	r6, r3, r2
	rsb	r4, ip, r2
	mov	r3, r1
	mov	r5, ip
	add	r1, r1, ip
	add	r2, r8, ip
.L3:
	add	r2, r2, r0
	add	r3, r3, r0
	mov	r2, r2, asl #1
	str	r2, [sp, #8]
	add	r1, r1, r0
	add	r2, r4, r0
	mov	r3, r3, asl #1
	str	r3, [sp, #4]
	mov	r1, r1, asl #1
	add	r3, r5, r0
	mov	r2, r2, asl #1
	str	r1, [sp, #12]
	str	r2, [sp, #28]
	add	r1, r6, r0
	mov	r3, r3, asl #1
	str	r3, [sp, #24]
	ldr	ip, [sp, #28]
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	mov	r1, r1, asl #1
	str	r1, [sp, #20]
	ldrh	r2, [fp, r2]
	ldrh	r6, [fp, r3]
	ldrh	r9, [fp, ip]
	ldr	r1, [sp, #8]
	ldr	r3, [sp, #20]
	ldr	ip, [sp, #24]
	add	r8, r8, r0
	mov	r8, r8, asl #1
	mov	r0, r0, asl #1
	ldrh	sl, [fp, r1]
	str	r2, [sp, #36]
	ldrh	r1, [fp, r8]
	ldrh	r2, [fp, r0]
	str	r0, [sp, #32]
	ldrh	r0, [fp, r3]
	ldrh	r3, [fp, ip]
	add	r6, r6, r1
	add	r3, r0, r3
	ldr	r1, [sp, #36]
	mov	r3, r3, asl #16
	str	r3, [sp, #16]
	add	r7, r1, sl
	mov	r6, r6, asl #16
	mov	r7, r7, asl #16
	add	r9, r9, r2
	ldr	r2, [sp, #16]
	mov	r9, r9, asl #16
	mov	r3, r7, lsr #16
	mov	r0, r6, lsr #16
	rsb	r0, r0, r2, lsr #16
	rsb	r3, r3, r9, lsr #16
	mov	r0, r0, asl #16
	mov	r3, r3, asl #16
	mov	r0, r0, asr #16
	mov	r3, r3, asr #16
	add	r5, r3, r0
	mov	r2, r5, asl #4
	mov	ip, r5, asl #2
	mov	r1, r3, asl #1
	add	ip, ip, r2
	add	r1, r1, r3
	mov	r3, r0, asl #6
	mov	r4, ip, asl #3
	sub	r3, r3, r0, asl #2
	rsb	r4, ip, r4
	mov	r2, r1, asl #6
	rsb	r3, r0, r3
	rsb	r4, r5, r4
	add	r1, r1, r2
	mov	r3, r3, asl #3
	add	r1, r4, r1
	add	r3, r3, r0
	rsb	r4, r3, r4
	mov	r2, r1, asr #4
	ldr	r3, [sp, #16]
	and	r2, r2, #1
	add	r2, r2, r1, asr #5
	mov	r1, r3, asr #16
	mov	r3, r4, asr #4
	add	r1, r1, r6, asr #16
	and	r3, r3, #1
	mov	r2, r2, asl #16
	mov	r9, r9, asr #16
	add	r3, r3, r4, asr #5
	mov	r1, r1, asl #16
	add	r9, r9, r7, asr #16
	mov	r2, r2, lsr #16
	ldr	ip, [sp, #4]
	orr	r2, r2, r3, asl #16
	mov	r9, r9, asl #16
	mov	r3, r1, lsr #16
	ldr	r0, [sp, #12]
	str	r1, [sp, #0]
	rsb	r3, r3, r9, lsr #16
	mov	r1, r2, asl #16
	strh	r3, [fp, ip]	@ movhi
	mov	r1, r1, asr #19
	ldrh	r5, [fp, r0]
	ldrh	r4, [fp, r8]
	ldr	r3, [sp, #20]
	strh	r1, [fp, r8]	@ movhi
	ldr	r1, [sp, #24]
	mov	r2, r2, asr #19
	ldrh	r0, [fp, r3]
	ldrh	r8, [fp, r1]
	strh	r2, [fp, r3]	@ movhi
	ldr	ip, [sp, #32]
	ldr	r2, [sp, #28]
	ldrh	r1, [fp, ip]
	ldrh	r3, [fp, r2]
	ldr	ip, [sp, #36]
	rsb	r1, r3, r1
	rsb	sl, ip, sl
	mov	sl, sl, asl #16
	mov	r1, r1, asl #16
	mov	sl, sl, asr #16
	mov	r1, r1, asr #16
	add	r3, r1, sl
	mov	r2, r3, asl #6
	rsb	r8, r0, r8
	mov	ip, r3, asl #3
	rsb	r4, r5, r4
	add	ip, ip, r2
	mov	r8, r8, asl #16
	mov	r8, r8, asr #16
	rsb	ip, r3, ip
	mov	r2, r1, asl #6
	mov	r3, sl, asl #6
	mov	r7, r1, asl #3
	mov	r0, sl, asl #3
	mov	r4, r4, asl #16
	mov	r4, r4, asr #16
	add	r7, r7, r2
	add	r0, r0, r3
	mov	r5, r8, asl #3
	mov	r3, r8, asl #5
	rsb	r0, sl, r0
	add	r5, r5, r3
	add	sl, r8, r4
	mov	r3, r4, asl #4
	mov	r6, ip, asl #2
	rsb	r1, r7, r1
	mov	r7, r4, asl #2
	add	r7, r7, r3
	rsb	r6, ip, r6
	mov	r3, r5, asl #2
	mov	ip, sl, asl #8
	add	r1, r6, r1
	mov	r2, r0, asl #2
	add	r5, r5, r3
	sub	ip, ip, sl, asl #2
	rsb	r4, r4, r7
	add	r0, r0, r2
	rsb	ip, sl, ip
	add	r5, r5, r8
	mov	r2, r1, asr #4
	sub	r4, r4, r7, asl #4
	rsb	r6, r0, r6
	add	r4, ip, r4
	and	r2, r2, #1
	rsb	ip, r5, ip
	add	r2, r2, r1, asr #5
	mov	r0, ip, asr #4
	mov	r1, r6, asr #4
	and	r1, r1, #1
	mov	r2, r2, asl #16
	and	r0, r0, #1
	add	r1, r1, r6, asr #5
	add	r0, r0, ip, asr #5
	mov	r2, r2, lsr #16
	mov	r3, r4, asr #4
	orr	r2, r2, r1, asl #16
	mov	r0, r0, asl #16
	mov	r0, r0, asr #16
	mov	r1, r2, asl #16
	and	r3, r3, #1
	mov	r2, r2, asr #16
	rsb	r5, r0, r2
	add	r3, r3, r4, asr #5
	mov	r5, r5, asr #1
	mov	r3, r3, asl #16
	mov	r1, r1, asr #16
	mov	r3, r3, asr #16
	mov	ip, r5, asl #4
	sub	ip, ip, r5, asl #2
	rsb	r6, r3, r1
	add	r2, r2, r0
	add	r3, r3, r1
	mov	r3, r3, asr #1
	mov	r1, ip, asl #4
	mov	r2, r2, asr #1
	rsb	r1, ip, r1
	add	ip, r3, r2
	rsb	r2, r3, r2
	ldr	r3, [sp, #0]
	mov	r9, r9, asr #16
	add	r9, r9, r3, asr #16
	ldr	r3, [sp, #32]
	mov	r6, r6, asr #1
	strh	r9, [fp, r3]	@ movhi
	mov	r4, r6, asl #4
	ldr	r3, [sp, #28]
	sub	r4, r4, r6, asl #2
	mov	r2, r2, asr #2
	strh	r2, [fp, r3]	@ movhi
	mov	r0, r4, asl #4
	ldr	r2, [sp, #24]
	rsb	r0, r4, r0
	mov	ip, ip, asr #2
	strh	ip, [fp, r2]	@ movhi
	add	r1, r1, r5
	add	r0, r0, r6
	ldr	r3, [sp, #8]
	ldr	ip, [sp, #12]
	mov	r1, r1, lsr #9
	mov	r0, r0, lsr #9
	strh	r1, [fp, r3]	@ movhi
	strh	r0, [fp, ip]	@ movhi
	mov	r0, #1
	add	sp, sp, #40
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
