0051f09dc 	str	x30, [sp, #-32]!
0051f09e0 	stp	x20, x19, [sp, #16]
0051f09e4 	mov	x19, x1
0051f09e8 	mov	x1, xzr
0051f09ec 	mov	x20, x0
0051f09f0 	bl	#63748152 ; -> 0x8ebc228 System.Object::.ctor
0051f09f4 	str	x19, [x20, #24]!
0051f09f8 	mov	x0, x20
0051f09fc 	mov	x1, x19
0051f0a00 	bl	#-12976124 ; -> 0x4590a04 
0051f0a04 	mov	w8, #1
0051f0a08 	sturb	w8, [x20, #-8]
0051f0a0c 	ldp	x20, x19, [sp, #16]
0051f0a10 	ldr	x30, [sp], #32
0051f0a14 	ret
