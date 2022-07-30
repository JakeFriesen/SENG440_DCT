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
	.file	"butterfly.c"
	.text
	.align	2
	.global	test
	.type	test, %function
test:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	strh	r0, [fp, #-14]	@ movhi
	strh	r1, [fp, #-16]	@ movhi
	strh	r2, [fp, #-18]	@ movhi
	strh	r3, [fp, #-20]	@ movhi
	ldrsh	r3, [fp, #-14]
	ldrsh	r2, [fp, #-16]
	mov	r0, r3
	mov	r1, r2
	mov	r2, #251
	mov	r3, #50
	bl	butterfly
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	ldmfd	sp!, {fp, lr}
	bx	lr
	.size	test, .-test
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
