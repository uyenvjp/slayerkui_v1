0050be49c 	stp	x30, x23, [sp, #-48]!
0050be4a0 	stp	x22, x21, [sp, #16]
0050be4a4 	stp	x20, x19, [sp, #32]
0050be4a8 	adrp	x23, #95518720 ; -> 0xabd6000 
0050be4ac 	adrp	x22, #87511040 ; -> 0xa433000 
0050be4b0 	adrp	x20, #87511040 ; -> 0xa433000 
0050be4b4 	adrp	x21, #87203840 ; -> 0xa3e8000 
0050be4b8 	ldr	x22, [x22, #1600]
0050be4bc 	ldrb	w8, [x23, #754]
0050be4c0 	ldr	x20, [x20, #1608]
0050be4c4 	ldr	x21, [x21, #720]
0050be4c8 	mov	x19, x0
0050be4cc 	tbnz	w8, #0, #48 ; -> 0x50be4fc 
0050be4d0 	adrp	x0, #87511040 ; -> 0xa433000 
0050be4d4 	ldr	x0, [x0, #1608]
0050be4d8 	bl	#-11721336 ; -> 0x4590a60 
0050be4dc 	adrp	x0, #87511040 ; -> 0xa433000 
0050be4e0 	ldr	x0, [x0, #1600]
0050be4e4 	bl	#-11721348 ; -> 0x4590a60 
0050be4e8 	adrp	x0, #87203840 ; -> 0xa3e8000 
0050be4ec 	ldr	x0, [x0, #720]
0050be4f0 	bl	#-11721360 ; -> 0x4590a60 
0050be4f4 	mov	w8, #1
0050be4f8 	strb	w8, [x23, #754]
0050be4fc 	ldr	x0, [x22]
0050be500 	mov	w8, #1073741824
0050be504 	str	w8, [x19, #396]
0050be508 	bl	#-11720716 ; -> 0x4590cfc 
0050be50c 	ldr	x1, [x20]
0050be510 	mov	x20, x0
0050be514 	bl	#34132136 ; -> 0x714b5bc 
0050be518 	add	x0, x19, #472
0050be51c 	mov	x1, x20
0050be520 	str	x20, [x19, #472]
0050be524 	bl	#-11721504 ; -> 0x4590a04 
0050be528 	ldr	x0, [x21]
0050be52c 	bl	#-11720752 ; -> 0x4590cfc 
0050be530 	adrp	x8, #-51990528 ; -> 0x1f29000 
0050be534 	mov	x1, xzr
0050be538 	mov	x20, x0
0050be53c 	ldr	s0, [x8, #1688]
0050be540 	bl	#76862912 ; -> 0x9a0bb00 UnityEngine.WaitForSeconds::.ctor
0050be544 	add	x0, x19, #696
0050be548 	mov	x1, x20
0050be54c 	str	x20, [x19, #696]
0050be550 	bl	#-11721548 ; -> 0x4590a04 
0050be554 	mov	x0, x19
0050be558 	ldp	x20, x19, [sp, #32]
0050be55c 	ldp	x22, x21, [sp, #16]
0050be560 	mov	x1, xzr
0050be564 	ldp	x30, x23, [sp], #48
0050be568 	b	#-715112 ; -> 0x500fc00 Character::.ctor
