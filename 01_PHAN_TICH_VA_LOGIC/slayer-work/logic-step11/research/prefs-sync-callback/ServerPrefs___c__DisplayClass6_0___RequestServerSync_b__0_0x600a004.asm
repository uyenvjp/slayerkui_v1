0051f198c 	str	x30, [sp, #-16]!
0051f1990 	cbz	x1, #44 ; -> 0x51f19bc 
0051f1994 	ldr	w8, [x1, #32]
0051f1998 	cmp	w8, #1
0051f199c 	ldr	x8, [x0, #24]
0051f19a0 	cset	w9, eq
0051f19a4 	strb	w9, [x0, #16]
0051f19a8 	cbz	x8, #20 ; -> 0x51f19bc 
0051f19ac 	mov	x0, x8
0051f19b0 	mov	x1, xzr
0051f19b4 	ldr	x30, [sp], #16
0051f19b8 	b	#-11189412 ; -> 0x4745d14 Gear2Framework.Common.WaitForSignal::Signal
0051f19bc 	bl	#-12979376 ; -> 0x4590d0c 
