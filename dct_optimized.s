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
	.global	butterfly
	.syntax unified
	.arm
	.fpu softvfp
	.type	butterfly, %function
butterfly:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	lsr	r3, r3, #16
	strh	r3, [fp, #-20]	@ movhi
	ldr	r3, [fp, #-24]
	strh	r3, [fp, #-18]	@ movhi
	ldr	r3, [fp, #-28]
	lsr	r3, r3, #16
	strh	r3, [fp, #-16]	@ movhi
	ldr	r3, [fp, #-28]
	strh	r3, [fp, #-14]	@ movhi
	ldrh	r3, [fp, #-20]
	ldrh	r2, [fp, #-16]
	mul	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldrh	r3, [fp, #-18]
	ldrh	r1, [fp, #-14]
	mul	r3, r1, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [fp, #-12]	@ movhi
	ldrsh	r3, [fp, #-20]
	rsb	r3, r3, #0
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	ldrh	r2, [fp, #-14]
	mul	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	ldrh	r3, [fp, #-18]
	ldrh	r1, [fp, #-16]
	mul	r3, r1, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	strh	r3, [fp, #-10]	@ movhi
	ldrsh	r3, [fp, #-12]
	lsl	r2, r3, #16
	ldrsh	r3, [fp, #-10]
	and	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	butterfly, .-butterfly
	.align	2
	.global	loeffler_opt
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler_opt, %function
loeffler_opt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7, r8, r9, r10, fp}
	add	fp, sp, #28
	sub	sp, sp, #16
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [fp, #-40]
	b	.L5
.L4:
	mov	r3, #1
.L5:
	mov	r10, r3
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #3
	sub	r1, r3, r1
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r6, r3, #16
	ldr	r3, [fp, #-36]
	mov	r2, r10
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
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
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r9, r3, #16
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #2
	add	r1, r3, r1
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r8, r3, #16
	mov	r2, r10
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r3, r10
	lsl	r1, r3, #2
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	add	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r7, r3, #16
	mov	r2, r6
	mov	r3, r7
	add	r4, r2, r3
	mov	r2, r9
	mov	r3, r8
	add	r5, r2, r3
	lsl	r3, r9, #16
	lsr	r2, r3, #16
	lsl	r3, r8, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r8, r3, #16
	lsl	r3, r6, #16
	lsr	r2, r3, #16
	lsl	r3, r7, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r7, r3, #16
	lsl	r3, r4, #16
	asr	r6, r3, #16
	lsl	r3, r5, #16
	asr	r9, r3, #16
	mov	r2, r6
	mov	r3, r9
	add	r4, r2, r3
	lsl	r3, r6, #16
	lsr	r2, r3, #16
	lsl	r3, r9, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r9, r3, #16
	lsl	r3, r4, #16
	asr	r6, r3, #16
	mov	r2, r8
	mov	r3, r2
	lsl	r3, r3, #4
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r4, r3, r2
	asr	r2, r4, #1
	and	r3, r4, #1
	orr	r4, r2, r3
	mov	r1, r7
	mov	r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	lsl	r2, r3, #3
	sub	r2, r2, r3
	lsl	r2, r2, #3
	sub	r5, r2, r1
	add	r3, r4, r5
	asr	r5, r3, #6
	mov	r2, r8
	mvn	r3, #166
	mul	r4, r3, r2
	lsl	r3, r5, #16
	asr	r8, r3, #16
	mov	r2, r7
	mov	r3, r2
	lsl	r3, r3, #4
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r5, r3, r2
	asr	r2, r5, #1
	and	r3, r5, #1
	orr	r5, r2, r3
	add	r3, r4, r5
	asr	r3, r3, #6
	lsl	r3, r3, #16
	asr	r7, r3, #16
	mov	r4, r6
	mov	r2, r10
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r3, r10
	lsl	r1, r3, #2
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r6, r3, #16
	mov	r3, r9
	lsl	r2, r3, #1
	mov	r3, r10
	lsl	r1, r3, #2
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	lsl	r2, r2, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #2
	add	r1, r3, r1
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r9, r3, #16
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	strh	r8, [r3]	@ movhi
	ldr	r3, [fp, #-36]
	mov	r2, r10
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
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
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r8, r3, #16
	mov	r2, r10
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	strh	r7, [r3]	@ movhi
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r2, r3, #16
	mov	r1, r10
	mov	r3, r1
	lsl	r3, r3, #3
	sub	r1, r3, r1
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldrsh	r3, [r3]
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r7, r3, #16
	lsl	r2, r4, #1
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
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
	sub	r4, r2, r3
	mov	r2, r7
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #1
	mov	r5, r3
	add	r3, r4, r5
	asr	r5, r3, #5
	mov	r2, r6
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #1
	mov	r4, r3
	lsl	r3, r5, #16
	asr	r6, r3, #16
	mov	r2, r7
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #2
	sub	r5, r2, r3
	sub	r3, r5, r4
	asr	r3, r3, #5
	lsl	r3, r3, #16
	asr	r7, r3, #16
	mov	r2, r9
	mov	r3, r2
	lsl	r3, r3, #6
	sub	r3, r3, r2
	lsl	r3, r3, #2
	sub	r4, r3, r2
	mov	r2, r8
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r5, r3
	add	r3, r4, r5
	asr	r5, r3, #5
	mov	r2, r9
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r4, r3
	lsl	r3, r5, #16
	asr	r9, r3, #16
	mov	r2, r8
	mov	r3, r2
	lsl	r3, r3, #6
	sub	r3, r3, r2
	lsl	r3, r3, #2
	sub	r5, r3, r2
	sub	r3, r5, r4
	asr	r3, r3, #5
	lsl	r3, r3, #16
	asr	r8, r3, #16
	mov	r2, r6
	mov	r3, r8
	add	r3, r2, r3
	asr	r4, r3, #1
	mov	r2, r6
	mov	r3, r8
	sub	r3, r2, r3
	asr	r3, r3, #1
	lsl	r3, r3, #16
	asr	r8, r3, #16
	lsl	r3, r4, #16
	asr	r6, r3, #16
	mov	r2, r7
	mov	r3, r9
	sub	r3, r2, r3
	asr	r4, r3, #1
	mov	r2, r7
	mov	r3, r9
	add	r3, r2, r3
	asr	r3, r3, #1
	lsl	r3, r3, #16
	asr	r7, r3, #16
	lsl	r3, r4, #16
	asr	r9, r3, #16
	mov	r2, r7
	mov	r3, r6
	sub	r3, r2, r3
	asr	r4, r3, #1
	mov	r2, r7
	mov	r3, r6
	add	r3, r2, r3
	asr	r5, r3, #1
	mov	r2, r10
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r2, r3, r2
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	lsl	r2, r4, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-36]
	mov	r2, r10
	add	r3, r3, r2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	lsl	r2, r5, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	mov	r1, r9
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
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	lsl	r2, r2, #16
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
	lsl	r3, r3, #2
	add	r1, r3, r1
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	lsl	r2, r2, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	mov	r3, #1
	mov	r0, r3
	sub	sp, fp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp}
	bx	lr
	.size	loeffler_opt, .-loeffler_opt
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
