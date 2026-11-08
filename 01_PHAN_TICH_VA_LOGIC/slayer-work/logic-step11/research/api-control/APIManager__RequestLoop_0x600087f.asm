0050c1988 	sub	sp, sp, #112
0050c198c 	str	x30, [sp, #80]
0050c1990 	stp	x20, x19, [sp, #96]
0050c1994 	adrp	x19, #95506432 ; -> 0xabd6000 
0050c1998 	ldrb	w8, [x19, #795]
0050c199c 	tbnz	w8, #0, #24 ; -> 0x50c19b4 
0050c19a0 	adrp	x0, #87498752 ; -> 0xa433000 
0050c19a4 	ldr	x0, [x0, #1816]
0050c19a8 	bl	#-11734856 ; -> 0x4590a60 
0050c19ac 	mov	w8, #1
0050c19b0 	strb	w8, [x19, #795]
0050c19b4 	movi	v0.2d, #0000000000000000
0050c19b8 	mov	w0, #940
0050c19bc 	mov	x1, xzr
0050c19c0 	stp	q0, q0, [sp, #16]
0050c19c4 	stp	q0, q0, [sp, #48]
0050c19c8 	str	q0, [sp]
0050c19cc 	bl	#-4695080 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c19d0 	tbz	w0, #0, #40 ; -> 0x50c19f8 
0050c19d4 	mov	w0, #940
0050c19d8 	mov	x1, xzr
0050c19dc 	bl	#-4694916 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c19e0 	cbz	x0, #96 ; -> 0x50c1a40 
0050c19e4 	ldp	x20, x19, [sp, #96]
0050c19e8 	mov	x1, xzr
0050c19ec 	ldr	x30, [sp, #80]
0050c19f0 	add	sp, sp, #112
0050c19f4 	b	#-5499160 ; -> 0x4b830dc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_98
0050c19f8 	adrp	x19, #87498752 ; -> 0xa433000 
0050c19fc 	mov	x20, sp
0050c1a00 	mov	x1, xzr
0050c1a04 	ldr	x19, [x19, #1816]
0050c1a08 	orr	x0, x20, #0x8
0050c1a0c 	str	xzr, [sp, #8]
0050c1a10 	bl	#-11735052 ; -> 0x4590a04 
0050c1a14 	ldr	x2, [x19]
0050c1a18 	mov	w8, #-1
0050c1a1c 	orr	x0, x20, #0x8
0050c1a20 	mov	x1, sp
0050c1a24 	str	w8, [sp]
0050c1a28 	bl	#13864844 ; -> 0x5dfa9b4 
0050c1a2c 	ldp	x20, x19, [sp, #96]
0050c1a30 	mov	w0, wzr
0050c1a34 	ldr	x30, [sp, #80]
0050c1a38 	add	sp, sp, #112
0050c1a3c 	ret
0050c1a40 	bl	#-11734324 ; -> 0x4590d0c 
