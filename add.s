	.arch armv7-a
	.text
	.align	1
	.global	add
	.arch armv7-a
	.syntax unified
	.thumb
	.thumb_func
	.fpu vfpv3-d16
	.type	add, %function
add:
	add	r0, r0, r1
	bx	lr
