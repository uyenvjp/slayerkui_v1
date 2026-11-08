0050bc040 	stp	x30, x21, [sp, #-32]!
0050bc044 	stp	x20, x19, [sp, #16]
0050bc048 	adrp	x20, #95526912 ; -> 0xabd6000 
0050bc04c 	mov	x19, x0
0050bc050 	ldrb	w8, [x20, #731]
0050bc054 	tbnz	w8, #0, #36 ; -> 0x50bc078 
0050bc058 	adrp	x0, #87252992 ; -> 0xa3f2000 
0050bc05c 	ldr	x0, [x0, #3032]
0050bc060 	bl	#-11712000 ; -> 0x4590a60 
0050bc064 	adrp	x0, #87416832 ; -> 0xa41a000 
0050bc068 	ldr	x0, [x0, #3856]
0050bc06c 	bl	#-11712012 ; -> 0x4590a60 
0050bc070 	mov	w8, #1
0050bc074 	strb	w8, [x20, #731]
0050bc078 	mov	w0, #34993
0050bc07c 	mov	x1, xzr
0050bc080 	bl	#-4672220 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bc084 	tbz	w0, #0, #40 ; -> 0x50bc0ac 
0050bc088 	mov	w0, #34993
0050bc08c 	mov	x1, xzr
0050bc090 	bl	#-4672056 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bc094 	cbz	x0, #232 ; -> 0x50bc17c 
0050bc098 	mov	x1, x19
0050bc09c 	ldp	x20, x19, [sp, #16]
0050bc0a0 	mov	x2, xzr
0050bc0a4 	ldp	x30, x21, [sp], #32
0050bc0a8 	b	#-5495688 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050bc0ac 	ldr	x20, [x19, #504]
0050bc0b0 	cbz	x20, #100 ; -> 0x50bc114 
0050bc0b4 	adrp	x8, #87252992 ; -> 0xa3f2000 
0050bc0b8 	ldr	x8, [x8, #3032]
0050bc0bc 	ldr	x9, [x8]
0050bc0c0 	ldr	x8, [x20]
0050bc0c4 	ldrb	w11, [x8, #304]
0050bc0c8 	ldrb	w10, [x9, #304]
0050bc0cc 	cmp	w11, w10
0050bc0d0 	b.lo	#24 ; -> 0x50bc0e8 
0050bc0d4 	ldr	x11, [x8, #200]
0050bc0d8 	add	x10, x11, x10, lsl #3
0050bc0dc 	ldur	x10, [x10, #-8]
0050bc0e0 	cmp	x10, x9
0050bc0e4 	b.eq	#60 ; -> 0x50bc120 
0050bc0e8 	adrp	x9, #87207936 ; -> 0xa3e7000 
0050bc0ec 	ldr	x9, [x9, #1248]
0050bc0f0 	ldr	x9, [x9, #72]
0050bc0f4 	cmp	x8, x9
0050bc0f8 	b.ne	#108 ; -> 0x50bc164 
0050bc0fc 	mov	x0, x20
0050bc100 	bl	#-11711764 ; -> 0x4590bec 
0050bc104 	ldr	w1, [x0]
0050bc108 	mov	x0, x19
0050bc10c 	bl	#-5736 ; -> 0x50baaa4 EnemyBase::CheckDeadBuffBySkillIndex
0050bc110 	b	#84 ; -> 0x50bc164 
0050bc114 	ldp	x20, x19, [sp, #16]
0050bc118 	ldp	x30, x21, [sp], #32
0050bc11c 	ret
0050bc120 	adrp	x21, #87416832 ; -> 0xa41a000 
0050bc124 	ldr	x21, [x21, #3856]
0050bc128 	ldr	x0, [x21]
0050bc12c 	ldr	w8, [x0, #228]
0050bc130 	cbnz	w8, #12 ; -> 0x50bc13c 
0050bc134 	bl	#-11711828 ; -> 0x4590be0 
0050bc138 	ldr	x0, [x21]
0050bc13c 	ldr	x8, [x0, #184]
0050bc140 	ldr	x8, [x8]
0050bc144 	cbz	x8, #56 ; -> 0x50bc17c 
0050bc148 	ldr	x8, [x8, #2072]
0050bc14c 	cbz	x8, #24 ; -> 0x50bc164 
0050bc150 	ldr	x9, [x8, #24]
0050bc154 	ldr	x0, [x8, #64]
0050bc158 	mov	x1, x20
0050bc15c 	ldr	x2, [x8, #40]
0050bc160 	blr	x9
0050bc164 	add	x0, x19, #504
0050bc168 	str	xzr, [x19, #504]
0050bc16c 	mov	x1, xzr
0050bc170 	ldp	x20, x19, [sp, #16]
0050bc174 	ldp	x30, x21, [sp], #32
0050bc178 	b	#-11712372 ; -> 0x4590a04 
0050bc17c 	bl	#-11711600 ; -> 0x4590d0c 
