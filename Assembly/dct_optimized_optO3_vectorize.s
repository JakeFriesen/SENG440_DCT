	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"dct_optimized.c"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler_opt.constprop.0, %function
loeffler_opt.constprop.0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	lsl	r1, r1, #1
	sub	sp, sp, #20
	add	r7, r1, #14
	add	r2, r1, #6
	ldrh	fp, [r0, r2]
	ldrh	ip, [r0, r1]
	add	r10, r1, #8
	str	r2, [sp, #12]
	ldrh	r2, [r0, r7]
	ldrh	lr, [r0, r10]
	add	r8, r1, #12
	add	r0, r1, #2
	str	r0, [sp, #4]
	add	ip, ip, r2
	ldrh	r0, [r3, r0]
	ldrh	r2, [r3, r8]
	add	r9, r1, #4
	add	r5, r1, #10
	str	r5, [sp, #8]
	add	r0, r0, r2
	ldrh	r5, [r3, r5]
	ldrh	r2, [r3, r9]
	add	r4, fp, lr
	add	r5, r2, r5
	lsl	r4, r4, #16
	lsl	ip, ip, #16
	lsl	r0, r0, #16
	lsl	r5, r5, #16
	lsr	r4, r4, #16
	lsr	r5, r5, #16
	lsr	ip, ip, #16
	lsr	r0, r0, #16
	sub	r2, ip, r4
	add	ip, ip, r4
	sub	r4, r0, r5
	add	r0, r0, r5
	ldr	r5, .L4
	sub	lr, fp, lr
	mov	fp, r5
	lsl	r2, r2, #16
	asr	r2, r2, #16
	add	r6, r2, r2, lsl #4
	add	r6, r2, r6, lsl #2
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r6, r2, r6, lsl #1
	mla	fp, r4, fp, r6
	add	r6, r4, r4, lsl #4
	add	r6, r4, r6, lsl #2
	add	r4, r4, r6, lsl #1
	add	r6, r2, r2, lsl #1
	rsb	r6, r6, r6, lsl #3
	rsb	r2, r2, r6, lsl #3
	lsl	ip, ip, #16
	lsl	r0, r0, #16
	lsr	ip, ip, #16
	lsr	r0, r0, #16
	add	r2, r4, r2, lsl #1
	ldr	r4, .L4+4
	sub	r6, ip, r0
	lsl	r6, r6, #1
	and	r2, r4, r2, asr #5
	strh	r6, [r3, r10]	@ movhi
	lsl	r2, r2, #16
	ldr	r6, [sp, #8]
	asr	r2, r2, #18
	ldrh	r10, [r3, r9]
	lsl	r5, fp, #11
	ldrh	fp, [r3, r6]
	strh	r2, [r3, r9]	@ movhi
	mvn	r9, #49
	ldr	r2, [sp, #4]
	ldrh	r6, [r3, r8]
	ldrh	r2, [r3, r2]
	asr	r5, r5, #18
	strh	r5, [r3, r8]	@ movhi
	sub	r2, r2, r6
	ldrh	r5, [r3, r1]
	ldrh	r8, [r3, r7]
	lsl	r2, r2, #16
	asr	r2, r2, #16
	sub	r10, r10, fp
	sub	r5, r5, r8
	lsl	r10, r10, #16
	rsb	r8, r2, r2, lsl #6
	asr	r10, r10, #16
	rsb	r8, r2, r8, lsl #2
	mla	r9, r10, r9, r8
	mov	r8, r9
	mvn	r9, #141
	lsl	r5, r5, #16
	asr	r5, r5, #16
	add	r6, r5, r5, lsl #3
	rsb	r5, r5, r6, lsl #3
	lsl	lr, lr, #16
	asr	lr, lr, #16
	rsb	fp, r5, r5, lsl #2
	mla	r9, lr, r9, fp
	mov	fp, r9
	add	r0, ip, r0
	lsl	r0, r0, #1
	strh	r0, [r3, r1]	@ movhi
	mov	r0, #1
	add	r9, lr, lr, lsl #3
	rsb	lr, lr, r9, lsl #3
	rsb	r6, r10, r10, lsl #6
	add	r2, r2, r2, lsl #2
	rsb	r10, r10, r6, lsl #2
	add	r2, r2, r2, lsl #2
	rsb	lr, lr, lr, lsl #2
	add	lr, lr, r5, lsl #1
	add	r2, r10, r2, lsl #1
	and	r2, r4, r2, asr #5
	asr	r6, r8, #5
	and	r4, r4, lr, asr #5
	asr	fp, fp, #5
	lsl	r6, r6, #16
	lsl	r4, r4, #16
	asr	r6, r6, #16
	lsl	r8, r2, #16
	lsl	lr, fp, #16
	asr	r4, r4, #16
	sub	r9, r4, r6
	asr	r8, r8, #16
	asr	lr, lr, #16
	sub	r10, lr, r8
	bic	r2, r9, #1
	bic	r5, r10, #1
	add	r2, r2, r9, asr #1
	add	r5, r5, r10, asr #1
	add	lr, lr, r8
	rsb	r2, r2, r2, lsl #4
	add	r4, r4, r6
	asr	lr, lr, #1
	rsb	r5, r5, r5, lsl #4
	lsl	r2, r2, #2
	ldr	r1, [sp, #4]
	add	r2, r2, r9, asr #1
	lsl	r5, r5, #2
	sub	r9, lr, r4, asr #1
	add	lr, lr, r4, asr #1
	add	r5, r5, r10, asr #1
	asr	r9, r9, #1
	asr	lr, lr, #1
	strh	r9, [r3, r7]	@ movhi
	lsl	r5, r5, #1
	strh	lr, [r3, r1]	@ movhi
	ldr	r1, [sp, #12]
	asr	r5, r5, #9
	strh	r5, [r3, r1]	@ movhi
	lsl	r2, r2, #1
	ldr	r5, [sp, #8]
	asr	r2, r2, #9
	strh	r2, [r3, r5]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L5:
	.align	2
.L4:
	.word	-334
	.word	65535
	.size	loeffler_opt.constprop.0, .-loeffler_opt.constprop.0
	.align	2
	.global	loeffler_opt
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler_opt, %function
loeffler_opt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r2, #0
	mov	r3, r0
	sub	sp, sp, #20
	beq	.L8
	add	r0, r2, r2, lsl #1
	lsl	r6, r0, #1
	rsb	r5, r2, r2, lsl #3
	lsl	r8, r2, #1
	add	ip, r2, r2, lsl #2
	lsl	r9, r2, #2
.L7:
	add	r0, r1, r0
	add	r2, r1, r2
	add	r6, r1, r6
	lsl	lr, r0, #1
	lsl	r6, r6, #1
	add	r0, r1, ip
	lsl	r2, r2, #1
	str	r2, [sp, #4]
	lsl	r7, r0, #1
	add	r5, r1, r5
	ldrh	r0, [r3, r2]
	add	r9, r1, r9
	ldrh	r2, [r3, r6]
	add	r8, r1, r8
	lsl	r5, r5, #1
	lsl	r1, r1, #1
	lsl	r8, r8, #1
	lsl	r9, r9, #1
	ldrh	fp, [r3, lr]
	ldrh	r4, [r3, r1]
	ldrh	ip, [r3, r5]
	str	r7, [sp, #8]
	str	lr, [sp, #12]
	ldrh	r7, [r3, r7]
	ldrh	lr, [r3, r9]
	add	r0, r0, r2
	ldrh	r2, [r3, r8]
	add	ip, r4, ip
	add	r7, r2, r7
	add	r4, fp, lr
	lsl	ip, ip, #16
	lsl	r4, r4, #16
	lsl	r0, r0, #16
	lsl	r7, r7, #16
	lsr	r4, r4, #16
	lsr	r7, r7, #16
	lsr	ip, ip, #16
	lsr	r0, r0, #16
	sub	r2, ip, r4
	add	ip, ip, r4
	sub	r4, r0, r7
	add	r0, r0, r7
	ldr	r7, .L10
	sub	lr, fp, lr
	mov	fp, r7
	lsl	r2, r2, #16
	asr	r2, r2, #16
	add	r10, r2, r2, lsl #4
	add	r10, r2, r10, lsl #2
	lsl	r4, r4, #16
	asr	r4, r4, #16
	add	r10, r2, r10, lsl #1
	mla	fp, r4, fp, r10
	add	r10, r4, r4, lsl #4
	add	r10, r4, r10, lsl #2
	add	r4, r4, r10, lsl #1
	add	r10, r2, r2, lsl #1
	rsb	r10, r10, r10, lsl #3
	rsb	r2, r2, r10, lsl #3
	lsl	ip, ip, #16
	lsl	r0, r0, #16
	lsr	ip, ip, #16
	lsr	r0, r0, #16
	add	r2, r4, r2, lsl #1
	ldr	r4, .L10+4
	sub	r10, ip, r0
	lsl	r10, r10, #1
	and	r2, r4, r2, asr #5
	strh	r10, [r3, r9]	@ movhi
	lsl	r2, r2, #16
	ldr	r10, [sp, #8]
	asr	r2, r2, #18
	ldrh	r9, [r3, r8]
	lsl	r7, fp, #11
	ldrh	fp, [r3, r10]
	strh	r2, [r3, r8]	@ movhi
	ldr	r2, [sp, #4]
	ldrh	r8, [r3, r6]
	ldrh	r2, [r3, r2]
	asr	r7, r7, #18
	sub	r2, r2, r8
	mvn	r8, #49
	strh	r7, [r3, r6]	@ movhi
	ldrh	r6, [r3, r1]
	ldrh	r7, [r3, r5]
	lsl	r2, r2, #16
	sub	r6, r6, r7
	lsl	r6, r6, #16
	asr	r6, r6, #16
	asr	r2, r2, #16
	sub	r9, r9, fp
	add	r7, r6, r6, lsl #3
	rsb	r6, r6, r7, lsl #3
	lsl	r9, r9, #16
	rsb	r7, r2, r2, lsl #6
	asr	r9, r9, #16
	rsb	r7, r2, r7, lsl #2
	mla	r8, r9, r8, r7
	mov	r7, r8
	mvn	r8, #141
	lsl	lr, lr, #16
	asr	lr, lr, #16
	rsb	fp, r6, r6, lsl #2
	mla	r8, lr, r8, fp
	mov	fp, r8
	add	r0, ip, r0
	lsl	r0, r0, #1
	strh	r0, [r3, r1]	@ movhi
	mov	r0, #1
	add	r10, lr, lr, lsl #3
	rsb	lr, lr, r10, lsl #3
	rsb	r8, r9, r9, lsl #6
	add	r2, r2, r2, lsl #2
	add	r2, r2, r2, lsl #2
	rsb	r9, r9, r8, lsl #2
	rsb	lr, lr, lr, lsl #2
	add	r8, r9, r2, lsl #1
	add	lr, lr, r6, lsl #1
	and	r8, r4, r8, asr #5
	asr	r7, r7, #5
	and	r4, r4, lr, asr #5
	asr	fp, fp, #5
	lsl	r7, r7, #16
	lsl	r4, r4, #16
	asr	r7, r7, #16
	lsl	lr, fp, #16
	asr	r4, r4, #16
	lsl	r8, r8, #16
	sub	r9, r4, r7
	asr	r8, r8, #16
	asr	lr, lr, #16
	sub	r10, lr, r8
	bic	r2, r9, #1
	bic	r6, r10, #1
	add	r2, r2, r9, asr #1
	add	r6, r6, r10, asr #1
	add	lr, lr, r8
	rsb	r2, r2, r2, lsl #4
	add	r4, r4, r7
	asr	lr, lr, #1
	rsb	r6, r6, r6, lsl #4
	lsl	r2, r2, #2
	ldr	r1, [sp, #4]
	add	r2, r2, r9, asr #1
	lsl	r6, r6, #2
	sub	r9, lr, r4, asr #1
	add	lr, lr, r4, asr #1
	add	r6, r6, r10, asr #1
	asr	r9, r9, #1
	asr	lr, lr, #1
	strh	r9, [r3, r5]	@ movhi
	ldr	r7, [sp, #8]
	strh	lr, [r3, r1]	@ movhi
	lsl	r6, r6, #1
	ldr	lr, [sp, #12]
	lsl	r2, r2, #1
	asr	r6, r6, #9
	asr	r2, r2, #9
	strh	r6, [r3, lr]	@ movhi
	strh	r2, [r3, r7]	@ movhi
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L8:
	mov	r9, #4
	mov	r0, #3
	mov	ip, #5
	mov	r8, #2
	mov	r6, #6
	mov	r5, #7
	mov	r2, #1
	b	.L7
.L11:
	.align	2
.L10:
	.word	-334
	.word	65535
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
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	asr	r2, r2, #3
	sub	sp, sp, #20
	cmp	r2, #0
	str	r2, [sp]
	ble	.L12
	lsl	r3, r3, #3
	str	r3, [sp, #8]
	lsl	r3, r1, #2
	str	r3, [sp, #12]
	mov	r3, #0
	mov	r5, r1
	mov	r4, r0
	str	r3, [sp, #4]
	add	fp, r1, r1, lsl #2
.L15:
	mov	r8, #0
	ldr	r6, [sp, #4]
	ldr	r3, [sp, #12]
	add	r10, r6, r3
.L16:
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
	ldr	r3, [sp]
	add	r8, r8, #1
	cmp	r8, r3
	add	r10, fp, r10
	add	r6, fp, r7
	bne	.L16
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	add	r3, r3, #8
	cmp	r3, r2
	str	r3, [sp, #4]
	bne	.L15
.L12:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	dct_2d, .-dct_2d
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
