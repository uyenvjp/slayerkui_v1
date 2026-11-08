0051f0484 	stp	x30, x19, [sp, #-16]!
0051f0488 	mov	x19, x0
0051f048c 	mov	w0, #2443
0051f0490 	mov	x1, xzr
0051f0494 	bl	#-5934832 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0498 	tbz	w0, #0, #36 ; -> 0x51f04bc 
0051f049c 	mov	w0, #2443
0051f04a0 	mov	x1, xzr
0051f04a4 	bl	#-5934668 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f04a8 	cbz	x0, #32 ; -> 0x51f04c8 
0051f04ac 	mov	x1, x19
0051f04b0 	mov	x2, xzr
0051f04b4 	ldp	x30, x19, [sp], #16
0051f04b8 	b	#-6758296 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0051f04bc 	strb	wzr, [x19, #16]
0051f04c0 	ldp	x30, x19, [sp], #16
0051f04c4 	ret
0051f04c8 	bl	#-12974012 ; -> 0x4590d0c 
