005309d30 	str	x30, [sp, #-32]!
005309d34 	stp	x20, x19, [sp, #16]
005309d38 	adrp	x20, #93118464 ; -> 0xabd7000 
005309d3c 	mov	x19, x0
005309d40 	ldrb	w8, [x20, #1032]
005309d44 	tbnz	w8, #0, #24 ; -> 0x5309d5c 
005309d48 	adrp	x0, #85151744 ; -> 0xa43e000 
005309d4c 	ldr	x0, [x0, #3928]
005309d50 	bl	#-14127856 ; -> 0x4590a60 
005309d54 	mov	w8, #1
005309d58 	strb	w8, [x20, #1032]
005309d5c 	mov	w0, #32939
005309d60 	mov	x1, xzr
005309d64 	bl	#-7088064 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005309d68 	tbz	w0, #0, #40 ; -> 0x5309d90 
005309d6c 	mov	w0, #32939
005309d70 	mov	x1, xzr
005309d74 	bl	#-7087900 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005309d78 	cbz	x0, #88 ; -> 0x5309dd0 
005309d7c 	mov	x1, x19
005309d80 	ldp	x20, x19, [sp, #16]
005309d84 	mov	x2, xzr
005309d88 	ldr	x30, [sp], #32
005309d8c 	b	#-7910012 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
005309d90 	adrp	x8, #85151744 ; -> 0xa43e000 
005309d94 	ldr	x8, [x8, #3928]
005309d98 	ldr	x0, [x8]
005309d9c 	bl	#-14127264 ; -> 0x4590cfc 
005309da0 	mov	x1, xzr
005309da4 	mov	x20, x0
005309da8 	bl	#62596224 ; -> 0x8ebc228 System.Object::.ctor
005309dac 	mov	x0, x20
005309db0 	mov	x1, x19
005309db4 	str	wzr, [x20, #16]
005309db8 	str	x19, [x0, #32]!
005309dbc 	bl	#-14128056 ; -> 0x4590a04 
005309dc0 	mov	x0, x20
005309dc4 	ldp	x20, x19, [sp, #16]
005309dc8 	ldr	x30, [sp], #32
005309dcc 	ret
005309dd0 	bl	#-14127300 ; -> 0x4590d0c 
