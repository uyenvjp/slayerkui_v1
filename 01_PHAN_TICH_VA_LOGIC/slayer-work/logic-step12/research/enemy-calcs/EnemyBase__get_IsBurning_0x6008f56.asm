0050bae64 	stp	x30, x19, [sp, #-16]!
0050bae68 	mov	x19, x0
0050bae6c 	mov	w0, #31594
0050bae70 	mov	x1, xzr
0050bae74 	bl	#-4667600 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bae78 	tbz	w0, #0, #36 ; -> 0x50bae9c 
0050bae7c 	mov	w0, #31594
0050bae80 	mov	x1, xzr
0050bae84 	bl	#-4667436 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bae88 	cbz	x0, #56 ; -> 0x50baec0 
0050bae8c 	mov	x1, x19
0050bae90 	mov	x2, xzr
0050bae94 	ldp	x30, x19, [sp], #16
0050bae98 	b	#-5478616 ; -> 0x4b815c0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_64
0050bae9c 	ldrb	w8, [x19, #536]
0050baea0 	cbz	w8, #12 ; -> 0x50baeac 
0050baea4 	mov	w0, #1
0050baea8 	b	#16 ; -> 0x50baeb8 
0050baeac 	ldrb	w8, [x19, #537]
0050baeb0 	cmp	w8, #0
0050baeb4 	cset	w0, ne
0050baeb8 	ldp	x30, x19, [sp], #16
0050baebc 	ret
0050baec0 	bl	#-11706804 ; -> 0x4590d0c 
