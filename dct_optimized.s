	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
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
	push	{r4, r5, fp}
	add	fp, sp, #8
	sub	sp, sp, #12
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
	sub	r3, r2, r3
	ldrsh	r2, [fp, #-16]
	mul	r3, r2, r3
	add	r3, r5, r3
	asr	r3, r3, #5
	lsl	r4, r3, #16
	lsr	r4, r4, #16
	ldrsh	r2, [fp, #-18]
	ldrsh	r3, [fp, #-20]
	add	r3, r2, r3
	rsb	r3, r3, #0
	ldrsh	r2, [fp, #-14]
	mul	r3, r2, r3
	add	r3, r5, r3
	asr	r3, r3, #5
	lsl	r3, r3, #16
	orr	r4, r4, r3
	mov	r3, r4
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, r5, fp}
	bx	lr
	.size	butterfly, .-butterfly
	.align	2
	.global	loeffler_opt
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler_opt, %function
loeffler_opt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, sp, #32
	sub	sp, sp, #28
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [fp, #-56]
	b	.L5
.L4:
	mov	r3, #1
.L5:
	mov	r10, r3
	ldr	r3, [fp, #-52]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #3
	sub	r1, r3, r1
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r6, r3, #16
	ldr	r3, [fp, #-52]
	mov	r2, r10
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r8, r3, #16
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #2
	add	r1, r3, r1
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r5, r3, #16
	mov	r2, r10
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r3, r10
	lsl	r1, r3, #2
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r4, r3, #16
	mov	r2, r6
	mov	r3, r4
	add	r7, r2, r3
	mov	r2, r8
	mov	r3, r5
	add	r9, r2, r3
	lsl	r3, r8, #16
	lsr	r2, r3, #16
	lsl	r3, r5, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r5, r3, #16
	lsl	r3, r6, #16
	lsr	r2, r3, #16
	lsl	r3, r4, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r4, r3, #16
	lsl	r3, r7, #16
	asr	r6, r3, #16
	lsl	r3, r9, #16
	asr	r8, r3, #16
	mov	r2, r6
	mov	r3, r8
	add	r7, r2, r3
	lsl	r3, r6, #16
	lsr	r2, r3, #16
	lsl	r3, r8, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r8, r3, #16
	lsl	r3, r7, #16
	asr	r6, r3, #16
	ldr	r3, .L7
	mov	r2, #139
	mov	r1, r4
	mov	r0, r5
	bl	butterfly
	str	r0, [fp, #-40]
	mov	r2, r5
	mov	r3, r2
	lsl	r3, r3, #4
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r0, r3, r2
	mov	r1, r4
	mov	r2, r1
	lsl	r2, r2, #1
	add	r2, r2, r1
	lsl	r3, r2, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r1
	lsl	r3, r3, #1
	add	r3, r0, r3
	asr	r3, r3, #5
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	mov	r1, r5
	ldr	r3, .L7+4
	mul	r0, r3, r1
	mov	r1, r4
	mov	r3, r1
	lsl	r3, r3, #4
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	add	r3, r0, r3
	asr	r3, r3, #5
	lsl	r3, r3, #16
	orr	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #16
	asr	r5, r3, #16
	asr	r3, r5, #2
	lsl	r3, r3, #16
	asr	r5, r3, #16
	ldr	r3, [fp, #-40]
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r4, r3, #16
	asr	r3, r4, #2
	lsl	r3, r3, #16
	asr	r4, r3, #16
	mov	r7, r6
	mov	r2, r10
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r3, r10
	lsl	r1, r3, #2
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r6, r3, #16
	mov	r3, r8
	lsl	r2, r3, #1
	mov	r3, r10
	lsl	r1, r3, #2
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	lsl	r2, r2, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #2
	add	r1, r3, r1
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r8, r3, #16
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	strh	r5, [r3]	@ movhi
	ldr	r3, [fp, #-52]
	mov	r2, r10
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r5, r3, #16
	mov	r2, r10
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	strh	r4, [r3]	@ movhi
	ldr	r3, [fp, #-52]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #3
	sub	r1, r3, r1
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r4, r3, #16
	lsl	r2, r7, #1
	ldr	r3, [fp, #-52]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	lsl	r2, r2, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	mov	r2, r6
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #2
	sub	r1, r2, r3
	mov	r2, r4
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r1, r3
	asr	r3, r3, #5
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	mov	r1, r6
	mvn	r3, #141
	mul	r0, r3, r1
	mov	r1, r4
	mov	r3, r1
	lsl	r3, r3, #3
	add	r3, r3, r1
	lsl	r3, r3, #3
	sub	r3, r3, r1
	lsl	r1, r3, #2
	sub	r3, r1, r3
	add	r3, r0, r3
	asr	r3, r3, #5
	lsl	r3, r3, #16
	orr	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #16
	asr	r6, r3, #16
	ldr	r3, [fp, #-40]
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r4, r3, #16
	mov	r2, r8
	mov	r3, r2
	lsl	r3, r3, #6
	sub	r3, r3, r2
	lsl	r3, r3, #2
	sub	r2, r3, r2
	mov	r1, r5
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r1, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	add	r3, r2, r3
	asr	r3, r3, #5
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	mov	r1, r8
	mvn	r3, #49
	mul	r0, r3, r1
	mov	r1, r5
	mov	r3, r1
	lsl	r3, r3, #6
	sub	r3, r3, r1
	lsl	r3, r3, #2
	sub	r3, r3, r1
	add	r3, r0, r3
	asr	r3, r3, #5
	lsl	r3, r3, #16
	orr	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #16
	asr	r8, r3, #16
	ldr	r3, [fp, #-40]
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r5, r3, #16
	mov	r2, r6
	mov	r3, r5
	add	r3, r2, r3
	asr	r7, r3, #1
	mov	r2, r6
	mov	r3, r5
	sub	r3, r2, r3
	asr	r3, r3, #1
	lsl	r3, r3, #16
	asr	r5, r3, #16
	lsl	r3, r7, #16
	asr	r6, r3, #16
	mov	r2, r4
	mov	r3, r8
	sub	r3, r2, r3
	asr	r7, r3, #1
	mov	r2, r4
	mov	r3, r8
	add	r3, r2, r3
	asr	r3, r3, #1
	lsl	r3, r3, #16
	asr	r4, r3, #16
	lsl	r3, r7, #16
	asr	r8, r3, #16
	mov	r2, r4
	mov	r3, r6
	sub	r3, r2, r3
	asr	r7, r3, #1
	mov	r2, r4
	mov	r3, r6
	add	r3, r2, r3
	asr	r9, r3, #1
	mov	r2, r10
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r2, r3, r2
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	lsl	r2, r7, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-52]
	mov	r2, r10
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	lsl	r2, r9, #16
	asr	r2, r2, #16
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
	asr	r2, r3, #9
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #1
	add	r1, r3, r1
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	lsl	r2, r2, #16
	asr	r2, r2, #16
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
	asr	r2, r3, #9
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #2
	add	r1, r3, r1
	ldr	r3, [fp, #-52]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	lsl	r2, r2, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L8:
	.align	2
.L7:
	.word	334
	.word	-334
	.size	loeffler_opt, .-loeffler_opt
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
