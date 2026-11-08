0050b7438 	str	x30, [sp, #-32]!
0050b743c 	stp	x20, x19, [sp, #16]
0050b7440 	mov	w19, w1
0050b7444 	mov	x1, xzr
0050b7448 	mov	x20, x0
0050b744c 	bl	#65031644 ; -> 0x8ebc228 System.Object::.ctor
0050b7450 	str	w19, [x20, #16]
0050b7454 	ldp	x20, x19, [sp, #16]
0050b7458 	ldr	x30, [sp], #32
0050b745c 	ret
