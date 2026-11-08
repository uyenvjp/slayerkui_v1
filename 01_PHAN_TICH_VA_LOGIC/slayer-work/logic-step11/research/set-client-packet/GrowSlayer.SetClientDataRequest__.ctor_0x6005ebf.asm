00894ef2c 	str	x30, [sp, #-32]!
00894ef30 	stp	x20, x19, [sp, #16]
00894ef34 	mov	x20, x1
00894ef38 	mov	x19, x0
00894ef3c 	bl	#-104 ; -> 0x894eed4 GrowSlayer.SetClientDataRequest::.ctor
00894ef40 	cbz	x20, #60 ; -> 0x894ef7c 
00894ef44 	ldp	x8, x1, [x20, #24]
00894ef48 	mov	x0, x19
00894ef4c 	str	x8, [x19, #24]
00894ef50 	str	x1, [x0, #32]!
00894ef54 	bl	#-71034192 ; -> 0x4590a04 
00894ef58 	ldr	x0, [x20, #16]
00894ef5c 	mov	x1, xzr
00894ef60 	bl	#-5479296 ; -> 0x84153e0 Google.Protobuf.UnknownFieldSet::Clone
00894ef64 	str	x0, [x19, #16]!
00894ef68 	mov	x1, x0
00894ef6c 	mov	x0, x19
00894ef70 	ldp	x20, x19, [sp, #16]
00894ef74 	ldr	x30, [sp], #32
00894ef78 	b	#-71034228 ; -> 0x4590a04 
00894ef7c 	bl	#-71033456 ; -> 0x4590d0c 
