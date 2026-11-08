0089a29fc 	str	x30, [sp, #-32]!
0089a2a00 	stp	x20, x19, [sp, #16]
0089a2a04 	mov	x20, x1
0089a2a08 	mov	x19, x0
0089a2a0c 	bl	#-1560 ; -> 0x89a23f4 GrowSlayer.UserExp::.ctor
0089a2a10 	cbz	x20, #72 ; -> 0x89a2a58 
0089a2a14 	ldr	x1, [x20, #24]
0089a2a18 	mov	x0, x19
0089a2a1c 	str	x1, [x0, #24]!
0089a2a20 	bl	#-71376924 ; -> 0x4590a04 
0089a2a24 	ldr	x1, [x20, #32]
0089a2a28 	mov	x0, x19
0089a2a2c 	str	x1, [x0, #32]!
0089a2a30 	bl	#-71376940 ; -> 0x4590a04 
0089a2a34 	ldr	x0, [x20, #16]
0089a2a38 	mov	x1, xzr
0089a2a3c 	bl	#-5822044 ; -> 0x84153e0 Google.Protobuf.UnknownFieldSet::Clone
0089a2a40 	str	x0, [x19, #16]!
0089a2a44 	mov	x1, x0
0089a2a48 	mov	x0, x19
0089a2a4c 	ldp	x20, x19, [sp, #16]
0089a2a50 	ldr	x30, [sp], #32
0089a2a54 	b	#-71376976 ; -> 0x4590a04 
0089a2a58 	bl	#-71376204 ; -> 0x4590d0c 
