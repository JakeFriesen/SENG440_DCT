	.arch armv6
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"dct_optimized.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler_opt.constprop.0, %function
loeffler_opt.constprop.0:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	lsl	r1, r1, #1
	mov	r3, r0
	add	r0, r1, #14
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r2, r1, #6
	ldrh	ip, [r3, r0]
	ldrh	lr, [r3, r1]
	sub	sp, sp, #28
	add	r9, r1, #12
	add	r10, r1, #4
	add	fp, r1, #8
	add	r4, r1, #2
	add	r5, r1, #10
	ldrh	r8, [r3, fp]
	ldrh	r7, [r3, r4]
	str	r0, [sp, #4]
	str	r4, [sp, #8]
	ldrh	r0, [r3, r10]
	ldrh	r4, [r3, r9]
	str	r2, [sp, #20]
	add	lr, lr, ip
	ldrh	r2, [r3, r2]
	ldrh	ip, [r3, r5]
	str	r8, [sp, #16]
	add	r7, r7, r4
	add	r8, r2, r8
	add	r0, r0, ip
	uxth	r8, r8
	uxth	r7, r7
	uxth	lr, lr
	uxth	r0, r0
	str	r5, [sp, #12]
	sub	ip, lr, r8
	sub	r5, r7, r0
	sxth	ip, ip
	sxth	r5, r5
	add	r4, r5, ip
	rsb	r6, r5, r5, lsl #23
	add	lr, lr, r8
	add	r8, r4, r4, lsl #4
	add	r6, r5, r6, lsl #4
	add	r8, r4, r8, lsl #2
	add	ip, ip, ip, lsl #1
	add	r8, r4, r8, lsl #1
	add	r6, r5, r6, lsl #2
	add	ip, ip, ip, lsl #6
	add	ip, r8, ip
	rsb	r6, r5, r6, lsl #3
	add	r6, r8, r6
	asr	r4, ip, #4
	and	r4, r4, #1
	add	ip, r4, ip, asr #5
	asr	r4, r6, #4
	add	r0, r7, r0
	and	r4, r4, #1
	add	r6, r4, r6, asr #5
	uxth	r0, r0
	uxth	lr, lr
	ldr	r5, [sp, #12]
	ldr	r4, [sp, #8]
	sub	r7, lr, r0
	sxth	ip, ip
	sxth	r6, r6
	lsl	r7, r7, #1
	asr	ip, ip, #2
	asr	r6, r6, #2
	strh	r7, [r3, fp]	@ movhi
	ldrh	r7, [r3, r5]
	ldrh	r8, [r3, r10]
	strh	ip, [r3, r10]	@ movhi
	ldrh	ip, [r3, r4]
	ldrh	r4, [r3, r9]
	strh	r6, [r3, r9]	@ movhi
	ldr	r6, [sp, #4]
	ldrh	r5, [r3, r1]
	sub	r4, ip, r4
	ldrh	r6, [r3, r6]
	ldr	ip, [sp, #16]
	sub	r8, r8, r7
	sub	r2, r2, ip
	sub	r6, r5, r6
	sxth	r2, r2
	sxth	r6, r6
	add	r5, r2, r6
	sxth	r8, r8
	add	r7, r5, r5, lsl #3
	add	r9, r2, r2, lsl #3
	rsb	r5, r5, r7, lsl #3
	rsb	r7, r6, r6, lsl #26
	sxth	r4, r4
	add	r10, r8, r4
	rsb	r2, r2, r9, lsl #3
	rsb	r7, r6, r7, lsl #3
	add	r9, r8, r8, lsl #2
	rsb	ip, r4, r4, lsl #24
	rsb	r9, r9, r9, lsl #4
	add	r6, r6, r7, lsl #3
	rsb	r7, r10, r10, lsl #6
	add	ip, r4, ip, lsl #2
	rsb	r10, r10, r7, lsl #2
	rsb	r5, r5, r5, lsl #2
	add	r8, r8, r9, lsl #2
	add	r2, r2, r2, lsl #2
	add	r6, r5, r6
	sub	r8, r10, r8
	rsb	ip, r4, ip, lsl #3
	sub	r2, r5, r2
	rsb	ip, r4, ip, lsl #3
	asr	r5, r2, #4
	asr	r4, r6, #4
	asr	fp, r8, #4
	and	r5, r5, #1
	and	r4, r4, #1
	and	fp, fp, #1
	add	ip, r10, ip
	add	r2, r5, r2, asr #5
	add	r8, fp, r8, asr #5
	add	r5, r4, r6, asr #5
	asr	r9, ip, #4
	sxth	r5, r5
	sxth	r8, r8
	sub	r6, r5, r8
	and	r9, r9, #1
	add	ip, r9, ip, asr #5
	bic	r4, r6, #1
	add	r4, r4, r6, asr #1
	sxth	r2, r2
	sxth	ip, ip
	sub	r7, r2, ip
	rsb	r4, r4, r4, lsl #4
	add	ip, r2, ip
	add	r8, r5, r8
	bic	fp, r7, #1
	add	fp, fp, r7, asr #1
	asr	ip, ip, #1
	lsl	r4, r4, #2
	sub	r2, ip, r8, asr #1
	add	r4, r4, r6, asr #1
	add	lr, lr, r0
	ldr	r6, [sp, #4]
	rsb	fp, fp, fp, lsl #4
	lsl	lr, lr, #1
	asr	r2, r2, #1
	strh	lr, [r3, r1]	@ movhi
	add	ip, ip, r8, asr #1
	strh	r2, [r3, r6]	@ movhi
	lsl	fp, fp, #2
	ldr	r2, [sp, #8]
	add	fp, fp, r7, asr #1
	asr	ip, ip, #1
	strh	ip, [r3, r2]	@ movhi
	lsl	fp, fp, #1
	ldr	r2, [sp, #20]
	lsl	r4, r4, #1
	ldr	r5, [sp, #12]
	asr	fp, fp, #9
	asr	r4, r4, #9
	mov	r0, #1
	strh	fp, [r3, r2]	@ movhi
	strh	r4, [r3, r5]	@ movhi
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	loeffler_opt.constprop.0, .-loeffler_opt.constprop.0
	.align	2
	.global	loeffler_opt
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler_opt, %function
loeffler_opt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, r0
	sub	sp, sp, #28
	beq	.L6
	add	r4, r2, r2, lsl #1
	mov	r0, r4
	rsb	lr, r2, r2, lsl #3
	lsl	r4, r4, #1
	lsl	r6, r2, #1
	add	ip, r2, r2, lsl #2
	lsl	r8, r2, #2
.L5:
	add	ip, r1, ip
	add	r0, r1, r0
	add	lr, r1, lr
	add	r2, r1, r2
	add	r4, r1, r4
	add	r6, r1, r6
	add	r8, r1, r8
	lsl	r4, r4, #1
	lsl	r6, r6, #1
	lsl	r7, ip, #1
	lsl	r2, r2, #1
	lsl	fp, r0, #1
	lsl	r8, r8, #1
	lsl	r1, r1, #1
	lsl	lr, lr, #1
	ldrh	ip, [r3, r4]
	ldrh	r0, [r3, r7]
	ldrh	r10, [r3, r1]
	ldrh	r9, [r3, r2]
	str	lr, [sp, #8]
	str	r1, [sp, #4]
	ldrh	lr, [r3, lr]
	ldrh	r1, [r3, r6]
	str	r2, [sp, #12]
	str	fp, [sp, #20]
	ldrh	r2, [r3, r8]
	ldrh	fp, [r3, fp]
	add	r10, r10, lr
	add	r9, r9, ip
	add	lr, fp, r2
	add	r1, r1, r0
	uxth	r10, r10
	uxth	r9, r9
	uxth	r1, r1
	uxth	lr, lr
	sub	r0, r10, lr
	sub	r5, r9, r1
	sxth	r0, r0
	sxth	r5, r5
	add	ip, r5, r0
	str	r7, [sp, #16]
	add	lr, r10, lr
	rsb	r7, r5, r5, lsl #23
	add	r10, ip, ip, lsl #4
	add	r7, r5, r7, lsl #4
	add	r10, ip, r10, lsl #2
	add	r0, r0, r0, lsl #1
	add	r10, ip, r10, lsl #1
	add	r7, r5, r7, lsl #2
	add	r0, r0, r0, lsl #6
	add	r0, r10, r0
	rsb	r7, r5, r7, lsl #3
	add	r7, r10, r7
	asr	ip, r0, #4
	add	r1, r9, r1
	and	ip, ip, #1
	add	r0, ip, r0, asr #5
	asr	ip, r7, #4
	uxth	r1, r1
	and	ip, ip, #1
	uxth	lr, lr
	sub	r9, lr, r1
	add	r7, ip, r7, asr #5
	sxth	r0, r0
	ldr	ip, [sp, #16]
	lsl	r9, r9, #1
	asr	r0, r0, #2
	strh	r9, [r3, r8]	@ movhi
	sxth	r7, r7
	ldrh	r8, [r3, r6]
	ldrh	r9, [r3, ip]
	strh	r0, [r3, r6]	@ movhi
	ldr	r0, [sp, #12]
	asr	r7, r7, #2
	ldrh	ip, [r3, r4]
	ldrh	r0, [r3, r0]
	ldr	r5, [sp, #8]
	strh	r7, [r3, r4]	@ movhi
	ldr	r4, [sp, #4]
	ldrh	r5, [r3, r5]
	sub	r2, fp, r2
	ldrh	r4, [r3, r4]
	sxth	r2, r2
	sub	ip, r0, ip
	sub	r5, r4, r5
	sxth	ip, ip
	sxth	r5, r5
	add	r4, r2, r5
	sub	r7, r8, r9
	add	r6, r4, r4, lsl #3
	sxth	r7, r7
	rsb	r0, ip, ip, lsl #24
	rsb	r4, r4, r6, lsl #3
	rsb	r6, r5, r5, lsl #26
	add	r9, ip, r7
	add	r0, ip, r0, lsl #2
	add	fp, r2, r2, lsl #3
	add	r8, r7, r7, lsl #2
	rsb	r6, r5, r6, lsl #3
	rsb	r2, r2, fp, lsl #3
	rsb	r0, ip, r0, lsl #3
	rsb	r8, r8, r8, lsl #4
	add	r5, r5, r6, lsl #3
	rsb	r6, r9, r9, lsl #6
	rsb	r4, r4, r4, lsl #2
	rsb	r9, r9, r6, lsl #2
	rsb	r0, ip, r0, lsl #3
	add	r7, r7, r8, lsl #2
	add	r2, r2, r2, lsl #2
	sub	r2, r4, r2
	add	r5, r4, r5
	add	r0, r9, r0
	sub	r7, r9, r7
	asr	ip, r2, #4
	asr	r8, r5, #4
	asr	fp, r0, #4
	asr	r10, r7, #4
	and	ip, ip, #1
	and	r8, r8, #1
	and	fp, fp, #1
	and	r10, r10, #1
	add	r4, r8, r5, asr #5
	add	r2, ip, r2, asr #5
	add	r0, fp, r0, asr #5
	add	r7, r10, r7, asr #5
	sxth	r2, r2
	sxth	r4, r4
	sxth	r0, r0
	sxth	r7, r7
	sub	r6, r2, r0
	sub	r5, r4, r7
	add	r0, r2, r0
	add	lr, lr, r1
	ldr	r1, [sp, #4]
	add	r7, r4, r7
	bic	r10, r6, #1
	bic	ip, r5, #1
	add	r10, r10, r6, asr #1
	add	ip, ip, r5, asr #1
	asr	r0, r0, #1
	lsl	lr, lr, #1
	strh	lr, [r3, r1]	@ movhi
	sub	r2, r0, r7, asr #1
	ldr	lr, [sp, #8]
	rsb	r10, r10, r10, lsl #4
	rsb	ip, ip, ip, lsl #4
	asr	r2, r2, #1
	strh	r2, [r3, lr]	@ movhi
	add	r0, r0, r7, asr #1
	ldr	r2, [sp, #12]
	lsl	r10, r10, #2
	lsl	ip, ip, #2
	add	r10, r10, r6, asr #1
	add	ip, ip, r5, asr #1
	asr	r7, r0, #1
	strh	r7, [r3, r2]	@ movhi
	lsl	r10, r10, #1
	ldr	fp, [sp, #20]
	lsl	ip, ip, #1
	ldr	r7, [sp, #16]
	asr	r10, r10, #9
	asr	ip, ip, #9
	mov	r0, #1
	strh	r10, [r3, fp]	@ movhi
	strh	ip, [r3, r7]	@ movhi
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L6:
	mov	r8, #4
	mov	r0, #3
	mov	ip, #5
	mov	r6, #2
	mov	r4, #6
	mov	lr, #7
	mov	r2, #1
	b	.L5
	.size	loeffler_opt, .-loeffler_opt
	.align	2
	.global	dct_2d
	.syntax unified
	.arm
	.fpu softvfp
	.type	dct_2d, %function
dct_2d:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	asr	r3, r1, #3
	cmp	r3, #0
	bxle	lr
	asr	r2, r2, #3
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	cmp	r2, #0
	str	r2, [sp, #4]
	ble	.L8
	lsl	r3, r3, #3
	mov	r5, r1
	mov	r4, r0
	add	fp, r1, r1, lsl #2
	str	r3, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #8]
.L11:
	ldr	r6, [sp, #8]
	mov	r8, #0
	add	r10, r6, r5, lsl #2
.L12:
	add	r7, r6, r5
	mov	r1, r6
	mov	r0, r4
	bl	loeffler_opt.constprop.0
	add	r9, r7, r5
	mov	r1, r7
	mov	r0, r4
	bl	loeffler_opt.constprop.0
	add	r7, r9, r5
	mov	r1, r9
	mov	r0, r4
	bl	loeffler_opt.constprop.0
	mov	r1, r7
	mov	r0, r4
	bl	loeffler_opt.constprop.0
	mov	r1, r10
	mov	r0, r4
	add	r10, r5, r10
	bl	loeffler_opt.constprop.0
	add	r9, r10, r5
	mov	r1, r10
	mov	r0, r4
	bl	loeffler_opt.constprop.0
	add	r10, r9, r5
	mov	r1, r9
	mov	r0, r4
	bl	loeffler_opt.constprop.0
	mov	r1, r10
	mov	r0, r4
	bl	loeffler_opt.constprop.0
	mov	r1, r6
	mov	r2, r5
	mov	r0, r4
	bl	loeffler_opt
	add	r1, r6, #1
	mov	r2, r5
	mov	r0, r4
	bl	loeffler_opt
	add	r1, r6, #2
	mov	r2, r5
	mov	r0, r4
	bl	loeffler_opt
	add	r1, r6, #3
	mov	r2, r5
	mov	r0, r4
	bl	loeffler_opt
	add	r1, r6, #4
	mov	r2, r5
	mov	r0, r4
	bl	loeffler_opt
	add	r1, r6, #5
	mov	r2, r5
	mov	r0, r4
	bl	loeffler_opt
	add	r1, r6, #6
	mov	r2, r5
	mov	r0, r4
	bl	loeffler_opt
	add	r1, r6, #7
	mov	r2, r5
	mov	r0, r4
	bl	loeffler_opt
	ldr	r3, [sp, #4]
	add	r8, r8, #1
	cmp	r8, r3
	add	r10, fp, r10
	add	r6, fp, r7
	bne	.L12
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	add	r3, r3, #8
	cmp	r3, r2
	str	r3, [sp, #8]
	bne	.L11
.L8:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	dct_2d, .-dct_2d
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
