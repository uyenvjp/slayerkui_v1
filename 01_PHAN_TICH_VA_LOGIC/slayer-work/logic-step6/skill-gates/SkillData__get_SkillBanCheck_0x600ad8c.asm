005305790 	stp	x30, x19, [sp, #-16]!
005305794 	mov	x19, x0
005305798 	mov	w0, #6741
00530579c 	mov	x1, xzr
0053057a0 	bl	#-7070204 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0053057a4 	tbz	w0, #0, #36 ; -> 0x53057c8 
0053057a8 	mov	w0, #6741
0053057ac 	mov	x1, xzr
0053057b0 	bl	#-7070040 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0053057b4 	cbz	x0, #56 ; -> 0x53057ec 
0053057b8 	mov	x1, x19
0053057bc 	mov	x2, xzr
0053057c0 	ldp	x30, x19, [sp], #16
0053057c4 	b	#-7881220 ; -> 0x4b815c0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_64
0053057c8 	ldrb	w8, [x19, #57]
0053057cc 	cbz	w8, #12 ; -> 0x53057d8 
0053057d0 	mov	w0, #1
0053057d4 	b	#16 ; -> 0x53057e4 
0053057d8 	ldrb	w8, [x19, #58]
0053057dc 	cmp	w8, #0
0053057e0 	cset	w0, ne
0053057e4 	ldp	x30, x19, [sp], #16
0053057e8 	ret
0053057ec 	bl	#-14109408 ; -> 0x4590d0c 
