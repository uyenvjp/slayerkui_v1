0051f18b4 	stp	x30, x19, [sp, #-16]!
0051f18b8 	mov	x19, x0
0051f18bc 	mov	w0, #41804
0051f18c0 	mov	x1, xzr
0051f18c4 	bl	#-5940000 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f18c8 	tbz	w0, #0, #36 ; -> 0x51f18ec 
0051f18cc 	mov	w0, #41804
0051f18d0 	mov	x1, xzr
0051f18d4 	bl	#-5939836 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f18d8 	cbz	x0, #36 ; -> 0x51f18fc 
0051f18dc 	mov	x1, x19
0051f18e0 	mov	x2, xzr
0051f18e4 	ldp	x30, x19, [sp], #16
0051f18e8 	b	#-6763464 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0051f18ec 	mov	w8, #1
0051f18f0 	strb	w8, [x19, #16]
0051f18f4 	ldp	x30, x19, [sp], #16
0051f18f8 	ret
0051f18fc 	bl	#-12979184 ; -> 0x4590d0c 
