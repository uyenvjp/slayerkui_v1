0050b7394 	str	x30, [sp, #-32]!
0050b7398 	stp	x20, x19, [sp, #16]
0050b739c 	adrp	x20, #95547392 ; -> 0xabd6000 
0050b73a0 	mov	x19, x0
0050b73a4 	ldrb	w8, [x20, #697]
0050b73a8 	tbnz	w8, #0, #24 ; -> 0x50b73c0 
0050b73ac 	adrp	x0, #87539712 ; -> 0xa433000 
0050b73b0 	ldr	x0, [x0, #1528]
0050b73b4 	bl	#-11692372 ; -> 0x4590a60 
0050b73b8 	mov	w8, #1
0050b73bc 	strb	w8, [x20, #697]
0050b73c0 	mov	w0, #31568
0050b73c4 	mov	x1, xzr
0050b73c8 	bl	#-4652580 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b73cc 	tbz	w0, #0, #40 ; -> 0x50b73f4 
0050b73d0 	mov	w0, #31568
0050b73d4 	mov	x1, xzr
0050b73d8 	bl	#-4652416 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b73dc 	cbz	x0, #88 ; -> 0x50b7434 
0050b73e0 	mov	x1, x19
0050b73e4 	ldp	x20, x19, [sp, #16]
0050b73e8 	mov	x2, xzr
0050b73ec 	ldr	x30, [sp], #32
0050b73f0 	b	#-5474528 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
0050b73f4 	adrp	x8, #87539712 ; -> 0xa433000 
0050b73f8 	ldr	x8, [x8, #1528]
0050b73fc 	ldr	x0, [x8]
0050b7400 	bl	#-11691780 ; -> 0x4590cfc 
0050b7404 	mov	x1, xzr
0050b7408 	mov	x20, x0
0050b740c 	bl	#65031708 ; -> 0x8ebc228 System.Object::.ctor
0050b7410 	mov	x0, x20
0050b7414 	mov	x1, x19
0050b7418 	str	wzr, [x20, #16]
0050b741c 	str	x19, [x0, #32]!
0050b7420 	bl	#-11692572 ; -> 0x4590a04 
0050b7424 	mov	x0, x20
0050b7428 	ldp	x20, x19, [sp, #16]
0050b742c 	ldr	x30, [sp], #32
0050b7430 	ret
0050b7434 	bl	#-11691816 ; -> 0x4590d0c 
