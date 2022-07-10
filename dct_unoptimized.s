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
	.file	"dct_unoptimized.c"
	.text
	.global	__aeabi_fadd
	.global	__aeabi_fsub
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_dadd
	.global	__aeabi_d2f
	.global	__aeabi_ddiv
	.section	.rodata
	.align	2
.LC0:
	.word	__stack_chk_guard
	.text
	.align	2
	.global	loeffler
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler, %function
loeffler:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #112
	str	r0, [fp, #-120]
	ldr	r3, .L4
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3,#0
	ldr	r3, [fp, #-120]
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #28
	ldr	r3, [r3]	@ float
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-112]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #4
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #24
	ldr	r3, [r3]	@ float
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-108]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #8
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #20
	ldr	r3, [r3]	@ float
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-104]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #12
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #16
	ldr	r3, [r3]	@ float
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-100]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #12
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #16
	ldr	r3, [r3]	@ float
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-96]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #8
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #20
	ldr	r3, [r3]	@ float
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-92]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #4
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #24
	ldr	r3, [r3]	@ float
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-88]	@ float
	ldr	r3, [fp, #-120]
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-120]
	add	r3, r3, #28
	ldr	r3, [r3]	@ float
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-84]	@ float
	ldr	r3, [fp, #-112]	@ float
	ldr	r2, [fp, #-100]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-80]	@ float
	ldr	r3, [fp, #-108]	@ float
	ldr	r2, [fp, #-104]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-76]	@ float
	ldr	r3, [fp, #-108]	@ float
	ldr	r2, [fp, #-104]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-72]	@ float
	ldr	r3, [fp, #-112]	@ float
	ldr	r2, [fp, #-100]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-68]	@ float
	ldr	r3, [fp, #-96]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+4
	ldr	r3, .L4+8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #-84]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+12
	ldr	r3, .L4+16
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-64]	@ float
	ldr	r3, [fp, #-92]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+20
	ldr	r3, .L4+24
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #-88]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+28
	ldr	r3, .L4+32
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-60]	@ float
	ldr	r3, [fp, #-92]	@ float
	eor	r3, r3, #-2147483648
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+28
	ldr	r3, .L4+32
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #-88]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+20
	ldr	r3, .L4+24
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-56]	@ float
	ldr	r3, [fp, #-96]	@ float
	eor	r3, r3, #-2147483648
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+12
	ldr	r3, .L4+16
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #-84]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+4
	ldr	r3, .L4+8
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-52]	@ float
	ldr	r3, [fp, #-80]	@ float
	ldr	r2, [fp, #-76]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-48]	@ float
	ldr	r3, [fp, #-80]	@ float
	ldr	r2, [fp, #-76]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-72]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+36
	ldr	r3, .L4+40
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #-68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+44
	ldr	r3, .L4+48
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-72]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+44
	ldr	r3, .L4+52
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	ldr	r3, [fp, #-68]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+36
	ldr	r3, .L4+40
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [fp, #-36]	@ float
	ldr	r3, [fp, #-64]	@ float
	ldr	r2, [fp, #-56]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-32]	@ float
	ldr	r3, [fp, #-64]	@ float
	ldr	r2, [fp, #-56]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-24]	@ float
	ldr	r3, [fp, #-52]	@ float
	ldr	r2, [fp, #-60]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fsub
	mov	r3, r0
	str	r3, [fp, #-28]	@ float
	ldr	r3, [fp, #-52]	@ float
	ldr	r2, [fp, #-60]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-20]	@ float
	ldr	r3, [fp, #-48]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
	mov	r2, r0
	ldr	r3, [fp, #-120]
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-44]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, [fp, #-120]
	add	r4, r3, #16
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
	ldr	r3, [fp, #-40]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, [fp, #-120]
	add	r4, r3, #8
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
	ldr	r3, [fp, #-36]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, [fp, #-120]
	add	r4, r3, #24
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
	ldr	r3, [fp, #-20]	@ float
	ldr	r2, [fp, #-32]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fsub
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, [fp, #-120]
	add	r4, r3, #28
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
	ldr	r3, [fp, #-20]	@ float
	ldr	r2, [fp, #-32]	@ float
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, [fp, #-120]
	add	r4, r3, #4
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
	ldr	r3, [fp, #-28]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+64
	ldr	r3, .L4+68
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, [fp, #-120]
	add	r4, r3, #12
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
	ldr	r3, [fp, #-24]	@ float
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L4+64
	ldr	r3, .L4+68
	bl	__aeabi_dmul
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r2, .L4+56
	ldr	r3, .L4+60
	bl	__aeabi_ddiv
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r3, [fp, #-120]
	add	r4, r3, #20
	bl	__aeabi_d2f
	mov	r3, r0
	str	r3, [r4]	@ float
	mov	r3, #1
	ldr	r2, .L4
	ldr	r1, [r2]
	ldr	r2, [fp, #-16]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L3
	bl	__stack_chk_fail
.L3:
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
.L5:
	.align	2
.L4:
	.word	.LC0
	.word	668085255
	.word	1072339814
	.word	940533242
	.word	1071761211
	.word	-809504441
	.word	1072652951
	.word	940918071
	.word	1070135480
	.word	2039657844
	.word	1071731066
	.word	-1883621286
	.word	1073014702
	.word	-1074468946
	.word	1663890946
	.word	1074176158
	.word	1708926943
	.word	1073127582
	.size	loeffler, .-loeffler
	.section	.rodata
	.align	2
.LC1:
	.word	__stack_chk_guard
	.text
	.align	2
	.global	loeffler2d
	.syntax unified
	.arm
	.fpu softvfp
	.type	loeffler2d, %function
loeffler2d:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	str	r0, [fp, #-56]
	ldr	r3, .L21
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3,#0
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L7
.L12:
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L8
.L9:
	ldr	r3, [fp, #-48]
	lsl	r3, r3, #5
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldr	r2, [fp, #-44]
	ldr	r2, [r3, r2, lsl #2]	@ float
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	str	r2, [r3, #-36]	@ float
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L8:
	ldr	r3, [fp, #-44]
	cmp	r3, #7
	ble	.L9
	sub	r3, fp, #40
	mov	r0, r3
	bl	loeffler
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L10
.L11:
	ldr	r3, [fp, #-48]
	lsl	r3, r3, #5
	ldr	r2, [fp, #-56]
	add	r2, r2, r3
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r1, [r3, #-36]	@ float
	ldr	r3, [fp, #-44]
	str	r1, [r2, r3, lsl #2]	@ float
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L10:
	ldr	r3, [fp, #-44]
	cmp	r3, #7
	ble	.L11
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L7:
	ldr	r3, [fp, #-48]
	cmp	r3, #7
	ble	.L12
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L13
.L18:
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L14
.L15:
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #5
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldr	r2, [fp, #-48]
	ldr	r2, [r3, r2, lsl #2]	@ float
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	str	r2, [r3, #-36]	@ float
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L14:
	ldr	r3, [fp, #-44]
	cmp	r3, #7
	ble	.L15
	sub	r3, fp, #40
	mov	r0, r3
	bl	loeffler
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L16
.L17:
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #5
	ldr	r2, [fp, #-56]
	add	r2, r2, r3
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r1, [r3, #-36]	@ float
	ldr	r3, [fp, #-48]
	str	r1, [r2, r3, lsl #2]	@ float
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L16:
	ldr	r3, [fp, #-44]
	cmp	r3, #7
	ble	.L17
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L13:
	ldr	r3, [fp, #-48]
	cmp	r3, #7
	ble	.L18
	mov	r3, #1
	ldr	r2, .L21
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L20
	bl	__stack_chk_fail
.L20:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L22:
	.align	2
.L21:
	.word	.LC1
	.size	loeffler2d, .-loeffler2d
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",%progbits
