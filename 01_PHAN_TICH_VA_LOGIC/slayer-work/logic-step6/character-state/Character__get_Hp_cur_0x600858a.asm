005016640 	stp	x30, x19, [sp, #-16]!
005016644 	mov	x19, x0
005016648 	mov	w0, #9082
00501664c 	mov	x1, xzr
005016650 	bl	#-3993772 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005016654 	tbz	w0, #0, #36 ; -> 0x5016678 
005016658 	mov	w0, #9082
00501665c 	mov	x1, xzr
005016660 	bl	#-3993608 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005016664 	cbz	x0, #36 ; -> 0x5016688 
005016668 	mov	x1, x19
00501666c 	mov	x2, xzr
005016670 	ldp	x30, x19, [sp], #16
005016674 	b	#-4788548 ; -> 0x4b85530 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_138
005016678 	add	x0, x19, #80
00501667c 	mov	x1, xzr
005016680 	ldp	x30, x19, [sp], #16
005016684 	b	#-5004336 ; -> 0x4b50a54 SilentBigInt::get_Value
005016688 	bl	#-11032956 ; -> 0x4590d0c 
