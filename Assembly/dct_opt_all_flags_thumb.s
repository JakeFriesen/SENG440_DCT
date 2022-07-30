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
	.code	16
	.file	"dct_optimized.c"
	.text
	.align	2
	.code	16
	.thumb_func
	.type	loeffler_opt, %function
loeffler_opt:
	push	{r4, r5, r6, r7, lr}
	mov	r7, fp
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6, r7}
	mov	r4, r1
	sub	sp, sp, #36
	mov	r1, r2
	cmp	r2, #0
	beq	.LCB8
	b	.L2	@long jump
.LCB8:
	mov	r1, #2
	mov	ip, r1
	mov	r3, #5
	mov	r7, #3
	mov	r1, #4
	mov	r2, #1
	mov	r5, #7
	mov	r6, #6
	mov	r8, r3
	mov	sl, r7
	mov	fp, r1
.L3:
	lsl	r3, r4, #1
	add	r2, r2, r4
	add	r7, r0, r3
	lsl	r2, r2, #1
	add	r3, r5, r4
	add	r2, r0, r2
	add	r6, r6, r4
	lsl	r3, r3, #1
	str	r2, [sp, #16]
	add	r3, r0, r3
	lsl	r2, r6, #1
	ldrh	r1, [r3]
	str	r3, [sp, #12]
	mov	r9, r2
	ldrh	r3, [r7]
	add	r9, r9, r0
	ldr	r5, [sp, #16]
	add	r1, r1, r3
	mov	r3, r9
	ldrh	r2, [r3]
	ldrh	r3, [r5]
	mov	r5, r8
	add	r2, r2, r3
	mov	r3, ip
	add	r6, r3, r4
	add	r3, r5, r4
	lsl	r6, r6, #1
	lsl	r3, r3, #1
	add	r6, r0, r6
	add	r3, r0, r3
	ldrh	r5, [r3]
	str	r3, [sp, #20]
	mov	ip, r4
	ldrh	r3, [r6]
	add	ip, ip, sl
	add	r5, r5, r3
	mov	r3, ip
	mov	ip, r4
	add	ip, ip, fp
	mov	r4, ip
	lsl	r4, r4, #1
	mov	ip, r4
	add	ip, ip, r0
	lsl	r3, r3, #1
	add	r3, r0, r3
	mov	r0, ip
	ldrh	r0, [r0]
	str	r3, [sp, #24]
	ldrh	r3, [r3]
	str	r0, [sp, #28]
	mov	r8, r3
	mov	r3, r0
	add	r3, r3, r8
	lsl	r3, r3, #16
	lsr	r0, r3, #16
	lsl	r1, r1, #16
	mov	fp, r0
	lsl	r2, r2, #16
	lsl	r5, r5, #16
	lsr	r0, r1, #16
	asr	r3, r3, #16
	asr	r1, r1, #16
	add	r3, r3, r1
	lsr	r4, r2, #16
	lsr	r1, r5, #16
	asr	r2, r2, #16
	asr	r5, r5, #16
	add	r5, r5, r2
	lsl	r5, r5, #16
	lsr	r2, r5, #16
	lsl	r3, r3, #16
	str	r2, [sp, #4]
	sub	r4, r4, r1
	lsr	r2, r3, #16
	mov	r1, fp
	asr	r3, r3, #16
	asr	r5, r5, #16
	add	r5, r5, r3
	sub	r0, r0, r1
	ldr	r3, [sp, #4]
	lsl	r4, r4, #16
	lsl	r0, r0, #16
	asr	r4, r4, #16
	asr	r0, r0, #16
	sub	r2, r2, r3
	mov	sl, r2
	mov	r3, #139
	add	r2, r0, r4
	mov	r1, r3
	mul	r1, r2
	lsl	r2, r0, #1
	add	r2, r2, r0
	lsl	r3, r2, #6
	add	r2, r2, r3
	add	r2, r1, r2
	asr	r0, r2, #5
	mov	r3, #1
	asr	r2, r2, #4
	mov	fp, r3
	and	r2, r2, r3
	lsl	r3, r4, #23
	sub	r3, r3, r4
	lsl	r3, r3, #4
	add	r3, r3, r4
	lsl	r3, r3, #2
	add	r3, r3, r4
	lsl	r3, r3, #3
	sub	r3, r3, r4
	add	r1, r1, r3
	mov	r4, fp
	asr	r3, r1, #5
	asr	r1, r1, #4
	and	r1, r1, r4
	add	r1, r1, r3
	add	r2, r2, r0
	mov	r3, sl
	mov	r0, ip
	strh	r3, [r0]
	ldr	r0, [sp, #20]
	ldrh	r4, [r6]
	ldrh	r3, [r0]
	lsl	r2, r2, #16
	asr	r2, r2, #19
	strh	r2, [r6]
	sub	r4, r4, r3
	ldr	r2, [sp, #16]
	lsl	r1, r1, #16
	mov	r0, r9
	mov	ip, r4
	asr	r1, r1, #19
	mov	r4, r9
	ldrh	r3, [r4]
	ldrh	r6, [r2]
	strh	r1, [r0]
	ldr	r1, [sp, #12]
	sub	r6, r6, r3
	ldrh	r2, [r1]
	ldrh	r3, [r7]
	ldr	r4, [sp, #28]
	sub	r3, r3, r2
	mov	r2, r8
	sub	r2, r2, r4
	lsl	r2, r2, #16
	lsl	r3, r3, #16
	asr	r3, r3, #16
	asr	r2, r2, #16
	mov	r8, r2
	add	r1, r3, r2
	mov	r2, #213
	mov	r4, r2
	mul	r4, r1
	lsl	r2, r3, #26
	sub	r2, r2, r3
	lsl	r2, r2, #3
	sub	r2, r2, r3
	strh	r5, [r7]
	lsl	r2, r2, #3
	mov	r7, r8
	add	r2, r2, r3
	lsl	r3, r7, #3
	add	r3, r3, r8
	lsl	r3, r3, #3
	sub	r3, r3, r7
	lsl	r1, r3, #2
	add	r2, r4, r2
	add	r3, r3, r1
	mov	r5, fp
	asr	r0, r2, #5
	sub	r4, r4, r3
	asr	r2, r2, #4
	asr	r3, r4, #5
	and	r2, r2, r5
	asr	r4, r4, #4
	and	r4, r4, r5
	add	r2, r2, r0
	ldr	r0, .L6
	add	r4, r4, r3
	lsl	r6, r6, #16
	asr	r6, r6, #16
	and	r2, r2, r0
	lsl	r4, r4, #16
	orr	r4, r4, r2
	mov	r1, ip
	lsl	r2, r6, #24
	sub	r2, r2, r6
	lsl	r1, r1, #16
	asr	r1, r1, #16
	lsl	r2, r2, #2
	add	r3, r6, r1
	add	r2, r2, r6
	lsl	r0, r3, #6
	lsl	r2, r2, #3
	sub	r2, r2, r6
	sub	r0, r0, r3
	lsl	r0, r0, #2
	lsl	r2, r2, #3
	sub	r0, r0, r3
	sub	r2, r2, r6
	mov	ip, r1
	add	r2, r0, r2
	lsl	r1, r1, #2
	mov	r3, fp
	add	r1, r1, ip
	asr	r5, r2, #5
	asr	r2, r2, #4
	and	r2, r2, r3
	lsl	r3, r1, #4
	sub	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r3, ip
	sub	r0, r0, r3
	mov	r7, fp
	asr	r3, r0, #5
	asr	r0, r0, #4
	and	r0, r0, r7
	ldr	r1, .L6
	add	r0, r0, r3
	add	r2, r2, r5
	and	r2, r2, r1
	lsl	r0, r0, #16
	orr	r0, r0, r2
	asr	r2, r0, #16
	lsl	r3, r4, #16
	lsl	r0, r0, #16
	asr	r3, r3, #16
	asr	r0, r0, #16
	asr	r4, r4, #16
	sub	r5, r3, r2
	add	r1, r4, r0
	add	r2, r2, r3
	asr	r1, r1, #1
	asr	r2, r2, #1
	ldr	r7, [sp, #12]
	sub	r3, r1, r2
	sub	r4, r4, r0
	add	r2, r2, r1
	ldr	r0, [sp, #16]
	asr	r3, r3, #2
	asr	r2, r2, #2
	strh	r3, [r7]
	strh	r2, [r0]
	mov	r2, #181
	lsl	r2, r2, #1
	asr	r4, r4, #1
	mov	r3, r2
	mul	r3, r4
	ldr	r1, [sp, #24]
	asr	r5, r5, #1
	asr	r3, r3, #10
	strh	r3, [r1]
	mov	r3, r2
	mul	r3, r5
	ldr	r2, [sp, #20]
	asr	r3, r3, #10
	add	sp, sp, #36
	mov	r0, #1
	strh	r3, [r2]
	@ sp needed for prologue
	pop	{r2, r3, r4, r5}
	mov	r8, r2
	mov	r9, r3
	mov	sl, r4
	mov	fp, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L2:
	lsl	r3, r2, #3
	sub	r5, r3, r2
	lsl	r3, r2, #1
	add	r2, r3, r2
	mov	ip, r3
	lsl	r3, r1, #2
	add	r7, r3, r1
	lsl	r6, r2, #1
	mov	sl, r2
	mov	r8, r7
	mov	fp, r3
	mov	r2, r1
	b	.L3
.L7:
	.align	2
.L6:
	.word	65535
	.size	loeffler_opt, .-loeffler_opt
	.align	2
	.global	dct_2d
	.code	16
	.thumb_func
	.type	dct_2d, %function
dct_2d:
	push	{r4, r5, r6, r7, lr}
	mov	r7, fp
	mov	r6, sl
	mov	r5, r9
	mov	r4, r8
	push	{r4, r5, r6, r7}
	sub	sp, sp, #12
	asr	r3, r1, #3
	mov	r7, r0
	mov	r6, r1
	str	r3, [sp, #4]
	cmp	r3, #0
	ble	.L9
	asr	r2, r2, #3
	mov	r3, #0
	mov	sl, r2
	mov	fp, r3
.L10:
	mov	r3, sl
	cmp	r3, #0
	ble	.L12
	mov	r3, fp
	lsl	r3, r3, #3
	mov	r8, r3
	mov	r3, #0
	mov	r9, r3
.L11:
	mov	r3, r9
	lsl	r4, r3, #3
	mov	r5, r6
	mul	r5, r4
	add	r5, r5, r8
	mov	r1, r5
	mov	r2, #0
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #1
	mov	r1, r6
	mul	r1, r3
	mov	r2, #0
	add	r1, r1, r8
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #2
	mov	r1, r6
	mul	r1, r3
	mov	r2, #0
	add	r1, r1, r8
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #3
	mov	r1, r6
	mul	r1, r3
	mov	r2, #0
	add	r1, r1, r8
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #4
	mov	r1, r6
	mul	r1, r3
	mov	r2, #0
	add	r1, r1, r8
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #5
	mov	r1, r6
	mul	r1, r3
	mov	r2, #0
	add	r1, r1, r8
	mov	r0, r7
	bl	loeffler_opt
	add	r3, r4, #6
	mov	r1, r6
	mul	r1, r3
	mov	r2, #0
	add	r1, r1, r8
	mov	r0, r7
	add	r4, r4, #7
	bl	loeffler_opt
	mov	r1, r6
	mul	r1, r4
	mov	r2, #0
	add	r1, r1, r8
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
	add	r5, r5, #7
	bl	loeffler_opt
	mov	r0, r7
	mov	r1, r5
	mov	r2, r6
	bl	loeffler_opt
	mov	r3, #1
	add	r9, r9, r3
	cmp	sl, r9
	bgt	.L11
.L12:
	mov	r3, #1
	add	fp, fp, r3
	ldr	r3, [sp, #4]
	cmp	r3, fp
	bgt	.L10
.L9:
	add	sp, sp, #12
	mov	r0, #1
	@ sp needed for prologue
	pop	{r2, r3, r4, r5}
	mov	r8, r2
	mov	r9, r3
	mov	sl, r4
	mov	fp, r5
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
	.size	dct_2d, .-dct_2d
	.ident	"GCC: (Sourcery G++ Lite 2008q3-72) 4.3.2"
	.section	.note.GNU-stack,"",%progbits
