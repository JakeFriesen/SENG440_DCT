    mov	r2, r5
	mov	r3, r2
	lsl	r3, r3, #4
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r0, r3, r2
	mov	r1, r4
	mov	r2, r1
	lsl	r2, r2, #1
	add	r2, r2, r1
	lsl	r3, r2, #3
	sub	r3, r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r1
	lsl	r3, r3, #1
	add	r3, r0, r3
	asr	r3, r3, #5
	lsl	r2, r3, #16
	lsr	r2, r2, #16
	mov	r1, r5
	ldr	r3, .L7+4
	mul	r0, r3, r1
	mov	r1, r4
	mov	r3, r1
	lsl	r3, r3, #4
	add	r3, r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	add	r3, r3, r1
	add	r3, r0, r3
	asr	r3, r3, #5
	lsl	r3, r3, #16
	orr	r3, r2, r3
	str	r3, [fp, #-40]