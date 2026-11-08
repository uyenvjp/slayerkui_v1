0050b649c 	str	x30, [sp, #-32]!
0050b64a0 	stp	x20, x19, [sp, #16]
0050b64a4 	adrp	x20, #95551488 ; -> 0xabd6000 
0050b64a8 	mov	x19, x0
0050b64ac 	ldrb	w8, [x20, #689]
0050b64b0 	tbnz	w8, #0, #24 ; -> 0x50b64c8 
0050b64b4 	adrp	x0, #87543808 ; -> 0xa433000 
0050b64b8 	ldr	x0, [x0, #1512]
0050b64bc 	bl	#-11688540 ; -> 0x4590a60 
0050b64c0 	mov	w8, #1
0050b64c4 	strb	w8, [x20, #689]
0050b64c8 	mov	w0, #30984
0050b64cc 	mov	x1, xzr
0050b64d0 	bl	#-4648748 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b64d4 	tbz	w0, #0, #40 ; -> 0x50b64fc 
0050b64d8 	mov	w0, #30984
0050b64dc 	mov	x1, xzr
0050b64e0 	bl	#-4648584 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b64e4 	cbz	x0, #88 ; -> 0x50b653c 
0050b64e8 	mov	x1, x19
0050b64ec 	ldp	x20, x19, [sp, #16]
0050b64f0 	mov	x2, xzr
0050b64f4 	ldr	x30, [sp], #32
0050b64f8 	b	#-5470696 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
0050b64fc 	adrp	x8, #87543808 ; -> 0xa433000 
0050b6500 	ldr	x8, [x8, #1512]
0050b6504 	ldr	x0, [x8]
0050b6508 	bl	#-11687948 ; -> 0x4590cfc 
0050b650c 	mov	x1, xzr
0050b6510 	mov	x20, x0
0050b6514 	bl	#65035540 ; -> 0x8ebc228 System.Object::.ctor
0050b6518 	mov	x0, x20
0050b651c 	mov	x1, x19
0050b6520 	str	wzr, [x20, #16]
0050b6524 	str	x19, [x0, #32]!
0050b6528 	bl	#-11688740 ; -> 0x4590a04 
0050b652c 	mov	x0, x20
0050b6530 	ldp	x20, x19, [sp, #16]
0050b6534 	ldr	x30, [sp], #32
0050b6538 	ret
0050b653c 	bl	#-11687984 ; -> 0x4590d0c 
