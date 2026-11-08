005016584 	stp	x30, x19, [sp, #-16]!
005016588 	mov	x19, x0
00501658c 	mov	w0, #1020
005016590 	mov	x1, xzr
005016594 	bl	#-3993584 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005016598 	tbz	w0, #0, #36 ; -> 0x50165bc 
00501659c 	mov	w0, #1020
0050165a0 	mov	x1, xzr
0050165a4 	bl	#-3993420 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050165a8 	cbz	x0, #36 ; -> 0x50165cc 
0050165ac 	mov	x1, x19
0050165b0 	mov	x2, xzr
0050165b4 	ldp	x30, x19, [sp], #16
0050165b8 	b	#-4788360 ; -> 0x4b85530 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_138
0050165bc 	add	x0, x19, #40
0050165c0 	mov	x1, xzr
0050165c4 	ldp	x30, x19, [sp], #16
0050165c8 	b	#-5004148 ; -> 0x4b50a54 SilentBigInt::get_Value
0050165cc 	bl	#-11032768 ; -> 0x4590d0c 
