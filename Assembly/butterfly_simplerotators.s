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