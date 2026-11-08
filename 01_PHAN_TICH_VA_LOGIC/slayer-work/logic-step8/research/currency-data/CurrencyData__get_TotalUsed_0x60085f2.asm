00501b224 	stp	x30, x19, [sp, #-16]!
00501b228 	mov	x19, x0
00501b22c 	mov	w0, #1981
00501b230 	mov	x1, xzr
00501b234 	bl	#-4013200 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501b238 	tbz	w0, #0, #36 ; -> 0x501b25c 
00501b23c 	mov	w0, #1981
00501b240 	mov	x1, xzr
00501b244 	bl	#-4013036 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501b248 	cbz	x0, #32 ; -> 0x501b268 
00501b24c 	mov	x1, x19
00501b250 	mov	x2, xzr
00501b254 	ldp	x30, x19, [sp], #16
00501b258 	b	#-4815956 ; -> 0x4b83604 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_105
00501b25c 	ldr	x0, [x19, #104]
00501b260 	ldp	x30, x19, [sp], #16
00501b264 	ret
00501b268 	bl	#-11052380 ; -> 0x4590d0c 
