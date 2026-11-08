0051f186c 	stp	x30, x19, [sp, #-16]!
0051f1870 	mov	x19, x0
0051f1874 	mov	w0, #2428
0051f1878 	mov	x1, xzr
0051f187c 	bl	#-5939928 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f1880 	tbz	w0, #0, #36 ; -> 0x51f18a4 
0051f1884 	mov	w0, #2428
0051f1888 	mov	x1, xzr
0051f188c 	bl	#-5939764 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f1890 	cbz	x0, #32 ; -> 0x51f18b0 
0051f1894 	mov	x1, x19
0051f1898 	mov	x2, xzr
0051f189c 	ldp	x30, x19, [sp], #16
0051f18a0 	b	#-6750944 ; -> 0x4b815c0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_64
0051f18a4 	ldrb	w0, [x19, #16]
0051f18a8 	ldp	x30, x19, [sp], #16
0051f18ac 	ret
0051f18b0 	bl	#-12979108 ; -> 0x4590d0c 
