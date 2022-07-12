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
	.file	"dct_optimized_asm_instr.c"
	.text
	.align	2
	.global	dct_2d
	.syntax unified
	.arm
	.fpu softvfp
	.type	dct_2d, %function
dct_2d:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, r1
	strh	r3, [fp, #-26]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [fp, #-28]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L2
.L9:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L3
.L8:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L4
.L5:
	ldr	r3, [fp, #-16]
	lsl	r2, r3, #3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrsh	r2, [fp, #-26]
	mul	r2, r3, r2
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #3
	add	r3, r2, r3
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L4:
	ldr	r3, [fp, #-12]
	cmp	r3, #7
	ble	.L5
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L6
.L7:
	ldrsh	r3, [fp, #-26]
	ldr	r2, [fp, #-16]
	mul	r2, r3, r2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	lsl	r2, r3, #3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrsh	r2, [fp, #-26]
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	loeffler_opt
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L6:
	ldr	r3, [fp, #-8]
	cmp	r3, #7
	ble	.L7
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L3:
	ldrsh	r3, [fp, #-28]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #3
	lsl	r3, r3, #16
	asr	r3, r3, #16
	mov	r2, r3
	ldr	r3, [fp, #-16]
	cmp	r3, r2
	blt	.L8
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L2:
	ldrsh	r3, [fp, #-26]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #3
	lsl	r3, r3, #16
	asr	r3, r3, #16
	mov	r2, r3
	ldr	r3, [fp, #-20]
	cmp	r3, r2
	blt	.L9
	nop
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	dct_2d, .-dct_2d
	.align	2
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
	beq	.L11
	ldr	r3, [fp, #-40]
	b	.L12
.L11:
	mov	r3, #1
.L12:
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
	asr	r7, r3, #16
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
	asr	r8, r3, #16
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
	asr	r6, r3, #16
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
	asr	r5, r3, #16
	mov	r2, r7
	mov	r3, r5
	add	r4, r2, r3
	mov	r2, r8
	mov	r3, r6
	add	r9, r2, r3
	lsl	r3, r8, #16
	lsr	r2, r3, #16
	lsl	r3, r6, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r6, r3, #16
	lsl	r3, r7, #16
	lsr	r2, r3, #16
	lsl	r3, r5, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r5, r3, #16
	lsl	r3, r4, #16
	asr	r7, r3, #16
	lsl	r3, r9, #16
	asr	r8, r3, #16
	mov	r2, r7
	mov	r3, r8
	add	r4, r2, r3
	lsl	r3, r7, #16
	lsr	r2, r3, #16
	lsl	r3, r8, #16
	lsr	r3, r3, #16
	sub	r3, r2, r3
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r8, r3, #16
	lsl	r3, r4, #16
	asr	r7, r3, #16
	mov	r3, r6
	lsl	r2, r3, #16
	mov	r3, r5
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	orr	r4, r2, r3
	ldr	r9, .L14
	.syntax divided
@ 105 "dct_optimized_asm_instr.c" 1
	 butterfly 	r3 , r4 , r9 n
@ 0 "" 2
	.arm
	.syntax unified
	mov	r4, r3
	lsl	r3, r4, #16
	asr	r6, r3, #16
	asr	r3, r6, #2
	lsl	r3, r3, #16
	asr	r6, r3, #16
	mov	r3, r4
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r5, r3, #16
	asr	r3, r5, #2
	lsl	r3, r3, #16
	asr	r5, r3, #16
	mov	r4, r7
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
	asr	r7, r3, #16
	mov	r3, r8
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
	asr	r8, r3, #16
	mov	r3, r10
	lsl	r2, r3, #1
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	strh	r6, [r3]	@ movhi
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
	asr	r6, r3, #16
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
	strh	r5, [r3]	@ movhi
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
	asr	r5, r3, #16
	lsl	r2, r4, #1
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	lsl	r2, r2, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	mov	r3, r6
	lsl	r2, r3, #16
	mov	r3, r5
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	orr	r4, r2, r3
	ldr	r9, .L14
	.syntax divided
@ 132 "dct_optimized_asm_instr.c" 1
	 butterfly 	r3 , r4 , r9 n
@ 0 "" 2
	.arm
	.syntax unified
	mov	r4, r3
	lsl	r3, r4, #16
	asr	r7, r3, #16
	mov	r3, r4
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r5, r3, #16
	mov	r3, r6
	lsl	r2, r3, #16
	mov	r3, r5
	lsl	r3, r3, #16
	lsr	r3, r3, #16
	orr	r4, r2, r3
	ldr	r9, .L14
	.syntax divided
@ 144 "dct_optimized_asm_instr.c" 1
	 butterfly 	r3 , r4 , r9 n
@ 0 "" 2
	.arm
	.syntax unified
	mov	r4, r3
	lsl	r3, r4, #16
	asr	r8, r3, #16
	mov	r3, r4
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	asr	r6, r3, #16
	mov	r2, r7
	mov	r3, r6
	add	r3, r2, r3
	asr	r4, r3, #1
	mov	r2, r7
	mov	r3, r6
	sub	r3, r2, r3
	asr	r3, r3, #1
	lsl	r3, r3, #16
	asr	r6, r3, #16
	lsl	r3, r4, #16
	asr	r7, r3, #16
	mov	r2, r5
	mov	r3, r8
	sub	r3, r2, r3
	asr	r4, r3, #1
	mov	r2, r5
	mov	r3, r8
	add	r3, r2, r3
	asr	r3, r3, #1
	lsl	r3, r3, #16
	asr	r5, r3, #16
	lsl	r3, r4, #16
	asr	r8, r3, #16
	mov	r2, r5
	mov	r3, r7
	sub	r3, r2, r3
	asr	r4, r3, #1
	mov	r2, r5
	mov	r3, r7
	add	r3, r2, r3
	asr	r9, r3, #1
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
	ldr	r3, [fp, #-36]
	add	r3, r1, r3
	lsl	r3, r3, #1
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	lsl	r2, r2, #16
	asr	r2, r2, #16
	strh	r2, [r3]	@ movhi
	mov	r1, r6
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
.L15:
	.align	2
.L14:
	.word	9109838
	.size	loeffler_opt, .-loeffler_opt
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
