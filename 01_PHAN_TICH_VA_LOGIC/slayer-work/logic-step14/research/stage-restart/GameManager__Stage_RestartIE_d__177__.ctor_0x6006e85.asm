004e86ee8 	str	x30, [sp, #-32]!
004e86eec 	stp	x20, x19, [sp, #16]
004e86ef0 	mov	w19, w1
004e86ef4 	mov	x1, xzr
004e86ef8 	mov	x20, x0
004e86efc 	bl	#67326764 ; -> 0x8ebc228 System.Object::.ctor
004e86f00 	str	w19, [x20, #16]
004e86f04 	ldp	x20, x19, [sp, #16]
004e86f08 	ldr	x30, [sp], #32
004e86f0c 	ret
