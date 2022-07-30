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
	.file	"butterfly.c"
	.text
	.align	2
	.global	test
	.type	test, %function
test:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r1, asl #5
	mov	r2, r1, asl #3
	stmfd	sp!, {r4, r5, r6}
	add	r2, r2, r3
	add	r5, r1, r0
	mov	r3, r0, asl #4
	mov	ip, r5, asl #8
	mov	r6, r2, asl #2
	mov	r4, r0, asl #2
	add	r4, r4, r3
	add	r2, r2, r6
	sub	ip, ip, r5, asl #2
	rsb	ip, r5, ip
	add	r2, r2, r1
	rsb	r0, r0, r4
	rsb	r2, r2, ip
	sub	r0, r0, r4, asl #4
	add	ip, ip, r0
	mov	r0, r2, asr #4
	and	r0, r0, #1
	mov	r3, ip, asr #4
	add	r0, r0, r2, asr #5
	and	r3, r3, #1
	mov	r0, r0, asl #16
	add	r3, r3, ip, asr #5
	mov	r0, r0, lsr #16
	orr	r0, r0, r3, asl #16
	ldmfd	sp!, {r4, r5, r6}
	bx	lr
	.size	test, .-test
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
