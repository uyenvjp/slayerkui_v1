0050165d0 	stp	x30, x21, [sp, #-32]!
0050165d4 	stp	x20, x19, [sp, #16]
0050165d8 	mov	x20, x1
0050165dc 	mov	x21, x0
0050165e0 	mov	w0, #2363
0050165e4 	mov	x1, xzr
0050165e8 	mov	x19, x2
0050165ec 	bl	#-3993672 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050165f0 	tbz	w0, #0, #48 ; -> 0x5016620 
0050165f4 	mov	w0, #2363
0050165f8 	mov	x1, xzr
0050165fc 	bl	#-3993508 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005016600 	cbz	x0, #60 ; -> 0x501663c 
005016604 	mov	x2, x20
005016608 	mov	x3, x19
00501660c 	mov	x1, x21
005016610 	ldp	x20, x19, [sp, #16]
005016614 	mov	x4, xzr
005016618 	ldp	x30, x21, [sp], #32
00501661c 	b	#-4749020 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
005016620 	mov	x1, x20
005016624 	mov	x2, x19
005016628 	add	x0, x21, #40
00501662c 	ldp	x20, x19, [sp, #16]
005016630 	mov	x3, xzr
005016634 	ldp	x30, x21, [sp], #32
005016638 	b	#-5003328 ; -> 0x4b50df8 SilentBigInt::set_Value
00501663c 	bl	#-11032880 ; -> 0x4590d0c 
