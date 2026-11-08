00501b1dc 	stp	x30, x19, [sp, #-16]!
00501b1e0 	mov	x19, x0
00501b1e4 	mov	w0, #984
00501b1e8 	mov	x1, xzr
00501b1ec 	bl	#-4013128 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501b1f0 	tbz	w0, #0, #36 ; -> 0x501b214 
00501b1f4 	mov	w0, #984
00501b1f8 	mov	x1, xzr
00501b1fc 	bl	#-4012964 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501b200 	cbz	x0, #32 ; -> 0x501b220 
00501b204 	mov	x1, x19
00501b208 	mov	x2, xzr
00501b20c 	ldp	x30, x19, [sp], #16
00501b210 	b	#-4815884 ; -> 0x4b83604 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_105
00501b214 	ldr	x0, [x19, #96]
00501b218 	ldp	x30, x19, [sp], #16
00501b21c 	ret
00501b220 	bl	#-11052308 ; -> 0x4590d0c 
