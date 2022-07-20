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
	.type	loeffler_opt, %function
loeffler_opt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	stmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	cmp	r2, #0
	mov	fp, r0
	sub	sp, sp, #24
	mov	r9, r1
	moveq	r0, #1
	moveq	r2, #7
	moveq	r7, #6
	moveq	r8, #2
	moveq	ip, #5
	moveq	r3, #3
	moveq	sl, #4
	beq	.L3
	mov	r0, r2
	mov	r3, r2, asl #1
	mov	r1, r0, asl #2
	mov	r2, r2, asl #3
	rsb	r7, r3, r2
	mov	r8, r3
	mov	sl, r1
	rsb	r2, r0, r2
	add	ip, r1, r0
	add	r3, r3, r0
.L3:
	add	r1, r0, r9
	add	r2, r2, r9
	mov	r1, r1, asl #1
	mov	r2, r2, asl #1
	str	r1, [sp, #16]
	ldrh	r6, [fp, r2]
	add	r7, r7, r9
	str	r2, [sp, #20]
	ldr	r2, [sp, #16]
	add	r1, ip, r9
	add	sl, sl, r9
	mov	r7, r7, asl #1
	add	r8, r8, r9
	add	r3, r3, r9
	mov	r9, r9, asl #1
	ldrh	ip, [fp, r2]
	ldrh	r4, [fp, r9]
	mov	r8, r8, asl #1
	mov	r1, r1, asl #1
	mov	r3, r3, asl #1
	mov	sl, sl, asl #1
	ldrh	r5, [fp, r7]
	ldrh	r2, [fp, r8]
	str	r1, [sp, #12]
	str	r3, [sp, #8]
	ldrh	r1, [fp, r1]
	ldrh	r3, [fp, r3]
	ldrh	r0, [fp, sl]
	add	r6, r6, r4
	add	r5, r5, ip
	mov	r6, r6, asl #16
	mov	r5, r5, asl #16
	add	r1, r1, r2
	add	r0, r0, r3
	mov	r1, r1, asl #16
	mov	r0, r0, asl #16
	mov	ip, r6, asr #16
	mov	r3, r5, asr #16
	add	ip, ip, r0, asr #16
	add	r3, r3, r1, asr #16
	mov	ip, ip, asl #16
	mov	r3, r3, asl #16
	mov	r2, r3, lsr #16
	mov	r4, ip, asr #16
	mov	r0, r0, lsr #16
	mov	r1, r1, lsr #16
	add	r4, r4, r3, asr #16
	rsb	r2, r2, ip, lsr #16
	rsb	r0, r0, r6, lsr #16
	rsb	r1, r1, r5, lsr #16
	mov	r0, r0, asl #16
	mov	r2, r2, asl #16
	mov	r4, r4, asl #16
	mov	r1, r1, asl #16
	orr	r1, r1, r0, lsr #16
	mov	r2, r2, lsr #16
	mov	r4, r4, lsr #16
	ldr	ip, .L6
#APP
@ 151 "source/dct_optimized_asm_instr.c" 1
	 butterfly 	r1 , r1 , ip

@ 0 "" 2
	mov	r3, r1, asl #16
	ldr	r5, [sp, #16]
	mov	r2, r2, asl #1
	mov	r3, r3, asr #18
	strh	r2, [fp, sl]	@ movhi
	strh	r3, [fp, r8]	@ movhi
	ldrh	r2, [fp, r5]
	mov	r1, r1, asr #18
	ldr	r5, [sp, #20]
	ldrh	r0, [fp, r7]
	strh	r1, [fp, r7]	@ movhi
	ldrh	r3, [fp, r9]
	ldrh	r1, [fp, r5]
	rsb	r2, r0, r2
	rsb	r3, r1, r3
	mov	r4, r4, asl #1
	mov	r2, r2, asl #16
	mov	r3, r3, asl #16
	strh	r4, [fp, r9]	@ movhi
	orr	r3, r2, r3, lsr #16
#APP
@ 176 "source/dct_optimized_asm_instr.c" 1
	 butterfly 	r3 , r3 , ip

@ 0 "" 2
	orr	r2, r2, r3, lsr #16
	mov	r4, r3, asr #16
#APP
@ 186 "source/dct_optimized_asm_instr.c" 1
	 butterfly 	r2 , r2 , ip

@ 0 "" 2
	mov	r1, r2, asl #16
	mov	r1, r1, asr #16
	rsb	r5, r1, r4
	mov	r5, r5, asr #1
	mov	r3, r3, asl #16
	mov	r3, r3, asr #16
	mov	r2, r2, asr #16
	mov	r0, r5, asl #4
	sub	r0, r0, r5, asl #2
	rsb	r6, r2, r3
	add	r4, r4, r1
	add	r2, r2, r3
	mov	r6, r6, asr #1
	mov	r2, r2, asr #1
	mov	r3, r0, asl #4
	mov	r4, r4, asr #1
	mov	ip, r6, asl #4
	rsb	r3, r0, r3
	add	r0, r2, r4
	rsb	r4, r2, r4
	ldr	r2, [sp, #20]
	sub	ip, ip, r6, asl #2
	mov	r4, r4, asr #1
	strh	r4, [fp, r2]	@ movhi
	mov	r1, ip, asl #4
	add	r3, r3, r5
	ldr	r2, [sp, #8]
	ldr	r5, [sp, #16]
	rsb	r1, ip, r1
	mov	r0, r0, asr #1
	mov	r3, r3, lsr #8
	strh	r0, [fp, r5]	@ movhi
	add	r1, r1, r6
	strh	r3, [fp, r2]	@ movhi
	ldr	r3, [sp, #12]
	mov	r1, r1, asr #8
	strh	r1, [fp, r3]	@ movhi
	mov	r0, #1
	add	sp, sp, #24
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp}
	bx	lr
.L7:
	.align	2
.L6:
	.word	9109838
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
	ble	.L9
.L10:
	cmp	r9, #0
	movgt	r8, fp, asl #3
	movgt	sl, #0
	ble	.L12
.L11:
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
	bgt	.L11
.L12:
	ldr	r3, [sp, #4]
	add	fp, fp, #1
	cmp	r3, fp
	bgt	.L10
.L9:
	mov	r0, #1
	add	sp, sp, #12
	ldmfd	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx	lr
	.size	dct_2d, .-dct_2d
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
