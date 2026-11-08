0050c14a0 	stp	x30, x21, [sp, #-32]!
0050c14a4 	stp	x20, x19, [sp, #16]
0050c14a8 	adrp	x21, #95506432 ; -> 0xabd6000 
0050c14ac 	adrp	x20, #87216128 ; -> 0xa3ee000 
0050c14b0 	mov	x19, x0
0050c14b4 	ldrb	w8, [x21, #788]
0050c14b8 	ldr	x20, [x20, #3648]
0050c14bc 	tbnz	w8, #0, #24 ; -> 0x50c14d4 
0050c14c0 	adrp	x0, #87216128 ; -> 0xa3ee000 
0050c14c4 	ldr	x0, [x0, #3648]
0050c14c8 	bl	#-11733608 ; -> 0x4590a60 
0050c14cc 	mov	w8, #1
0050c14d0 	strb	w8, [x21, #788]
0050c14d4 	ldr	x0, [x20]
0050c14d8 	ldr	w8, [x0, #228]
0050c14dc 	cbnz	w8, #12 ; -> 0x50c14e8 
0050c14e0 	bl	#-11733248 ; -> 0x4590be0 
0050c14e4 	ldr	x0, [x20]
0050c14e8 	ldr	x8, [x0, #184]
0050c14ec 	str	x19, [x8, #16]
0050c14f0 	ldp	x20, x19, [sp, #16]
0050c14f4 	ldp	x30, x21, [sp], #32
0050c14f8 	ret
