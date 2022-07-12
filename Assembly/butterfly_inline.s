butterfly:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
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
	ldrsh	r3, [fp, #-18]
	ldrsh	r2, [fp, #-14]
	mul	r2, r3, r2
	ldrsh	r3, [fp, #-20]
	ldrsh	r1, [fp, #-16]
	mul	r3, r1, r3
	add	r3, r2, r3
	asr	r3, r3, #5
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	str	r3, [fp, #-8]
	ldrsh	r3, [fp, #-20]
	rsb	r3, r3, #0
	ldrsh	r2, [fp, #-14]
	mul	r2, r3, r2
	ldrsh	r3, [fp, #-18]
	ldrsh	r1, [fp, #-16]
	mul	r3, r1, r3
	add	r3, r2, r3
	asr	r3, r3, #5
	lsl	r3, r3, #16
	mov	r2, r3
	ldr	r3, [fp, #-8]
	orr	r3, r3, r2
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