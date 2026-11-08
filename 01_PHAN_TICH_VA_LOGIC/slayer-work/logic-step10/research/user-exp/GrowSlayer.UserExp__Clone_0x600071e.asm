0089a1e20 	stp	x30, x21, [sp, #-32]!
0089a1e24 	stp	x20, x19, [sp, #16]
0089a1e28 	adrp	x20, #35934208 ; -> 0xabe6000 
0089a1e2c 	adrp	x21, #27795456 ; -> 0xa423000 
0089a1e30 	mov	x19, x0
0089a1e34 	ldrb	w8, [x20, #757]
0089a1e38 	ldr	x21, [x21, #480]
0089a1e3c 	tbnz	w8, #0, #24 ; -> 0x89a1e54 
0089a1e40 	adrp	x0, #27795456 ; -> 0xa423000 
0089a1e44 	ldr	x0, [x0, #480]
0089a1e48 	bl	#-71373800 ; -> 0x4590a60 
0089a1e4c 	mov	w8, #1
0089a1e50 	strb	w8, [x20, #757]
0089a1e54 	ldr	x0, [x21]
0089a1e58 	bl	#-71373148 ; -> 0x4590cfc 
0089a1e5c 	mov	x1, x19
0089a1e60 	mov	x20, x0
0089a1e64 	bl	#2968 ; -> 0x89a29fc GrowSlayer.UserExp::.ctor
0089a1e68 	mov	x0, x20
0089a1e6c 	ldp	x20, x19, [sp, #16]
0089a1e70 	ldp	x30, x21, [sp], #32
0089a1e74 	ret
