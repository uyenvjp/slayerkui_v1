008936f08 	str	x30, [sp, #-32]!
008936f0c 	stp	x20, x19, [sp, #16]
008936f10 	mov	x20, x1
008936f14 	mov	x1, xzr
008936f18 	mov	x19, x0
008936f1c 	bl	#5788428 ; -> 0x8ebc228 System.Object::.ctor
008936f20 	cbz	x20, #84 ; -> 0x8936f74 
008936f24 	ldp	x9, x0, [x20, #32]
008936f28 	mov	x1, xzr
008936f2c 	ldr	w8, [x20, #24]
008936f30 	str	w8, [x19, #24]
008936f34 	str	x9, [x19, #32]
008936f38 	cbz	x0, #12 ; -> 0x8936f44 
008936f3c 	bl	#437988 ; -> 0x89a1e20 GrowSlayer.UserExp::Clone
008936f40 	mov	x1, x0
008936f44 	mov	x0, x19
008936f48 	str	x1, [x0, #40]!
008936f4c 	bl	#-70935880 ; -> 0x4590a04 
008936f50 	ldr	x0, [x20, #16]
008936f54 	mov	x1, xzr
008936f58 	bl	#-5380984 ; -> 0x84153e0 Google.Protobuf.UnknownFieldSet::Clone
008936f5c 	str	x0, [x19, #16]!
008936f60 	mov	x1, x0
008936f64 	mov	x0, x19
008936f68 	ldp	x20, x19, [sp, #16]
008936f6c 	ldr	x30, [sp], #32
008936f70 	b	#-70935916 ; -> 0x4590a04 
008936f74 	bl	#-70935144 ; -> 0x4590d0c 
