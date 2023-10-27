	.global	add
	.text
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
add:
	add	r0, r0, r1
	bx	lr

.section	.note.GNU-stack,"",%progbits
