005309dfc 	str	x30, [sp, #-32]!
005309e00 	stp	x20, x19, [sp, #16]
005309e04 	adrp	x20, #93118464 ; -> 0xabd7000 
005309e08 	mov	x19, x0
005309e0c 	ldrb	w8, [x20, #1033]
005309e10 	tbnz	w8, #0, #24 ; -> 0x5309e28 
005309e14 	adrp	x0, #85151744 ; -> 0xa43e000 
005309e18 	ldr	x0, [x0, #3936]
005309e1c 	bl	#-14128060 ; -> 0x4590a60 
005309e20 	mov	w8, #1
005309e24 	strb	w8, [x20, #1033]
005309e28 	mov	w0, #32951
005309e2c 	mov	x1, xzr
005309e30 	bl	#-7088268 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005309e34 	tbz	w0, #0, #40 ; -> 0x5309e5c 
005309e38 	mov	w0, #32951
005309e3c 	mov	x1, xzr
005309e40 	bl	#-7088104 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005309e44 	cbz	x0, #88 ; -> 0x5309e9c 
005309e48 	mov	x1, x19
005309e4c 	ldp	x20, x19, [sp, #16]
005309e50 	mov	x2, xzr
005309e54 	ldr	x30, [sp], #32
005309e58 	b	#-7910216 ; -> 0x4b7eb10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_8
005309e5c 	adrp	x8, #85151744 ; -> 0xa43e000 
005309e60 	ldr	x8, [x8, #3936]
005309e64 	ldr	x0, [x8]
005309e68 	bl	#-14127468 ; -> 0x4590cfc 
005309e6c 	mov	x1, xzr
005309e70 	mov	x20, x0
005309e74 	bl	#62596020 ; -> 0x8ebc228 System.Object::.ctor
005309e78 	mov	x0, x20
005309e7c 	mov	x1, x19
005309e80 	str	wzr, [x20, #16]
005309e84 	str	x19, [x0, #32]!
005309e88 	bl	#-14128260 ; -> 0x4590a04 
005309e8c 	mov	x0, x20
005309e90 	ldp	x20, x19, [sp, #16]
005309e94 	ldr	x30, [sp], #32
005309e98 	ret
005309e9c 	bl	#-14127504 ; -> 0x4590d0c 
