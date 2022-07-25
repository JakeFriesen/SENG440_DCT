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
	.file	"dct_optimized_asm_instr.c"
	.text
	.align	2
	.global	dct_2d_asm
	.type	dct_2d_asm, %function
dct_2d_asm:
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
	ble	.L2
.L3:
	cmp	r9, #0
	movgt	r8, fp, asl #3
	movgt	sl, #0
	ble	.L5
.L4:
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
	bgt	.L4
.L5:
	ldr	r3, [sp, #4]
	add	fp, fp, #1
	cmp	r3, fp
	bgt	.L3
.L2:
	mov	r0, #1
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
	.size	dct_2d_asm, .-dct_2d_asm
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
