00501668c 	stp	x30, x21, [sp, #-32]!
005016690 	stp	x20, x19, [sp, #16]
005016694 	mov	x20, x1
005016698 	mov	x21, x0
00501669c 	mov	w0, #7360
0050166a0 	mov	x1, xzr
0050166a4 	mov	x19, x2
0050166a8 	bl	#-3993860 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050166ac 	tbz	w0, #0, #48 ; -> 0x50166dc 
0050166b0 	mov	w0, #7360
0050166b4 	mov	x1, xzr
0050166b8 	bl	#-3993696 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050166bc 	cbz	x0, #60 ; -> 0x50166f8 
0050166c0 	mov	x2, x20
0050166c4 	mov	x3, x19
0050166c8 	mov	x1, x21
0050166cc 	ldp	x20, x19, [sp, #16]
0050166d0 	mov	x4, xzr
0050166d4 	ldp	x30, x21, [sp], #32
0050166d8 	b	#-4749208 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
0050166dc 	mov	x1, x20
0050166e0 	mov	x2, x19
0050166e4 	add	x0, x21, #80
0050166e8 	ldp	x20, x19, [sp, #16]
0050166ec 	mov	x3, xzr
0050166f0 	ldp	x30, x21, [sp], #32
0050166f4 	b	#-5003516 ; -> 0x4b50df8 SilentBigInt::set_Value
0050166f8 	bl	#-11033068 ; -> 0x4590d0c 
