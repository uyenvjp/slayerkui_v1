004ef1fb8 	stp	x30, x21, [sp, #-32]!
004ef1fbc 	stp	x20, x19, [sp, #16]
004ef1fc0 	mov	x20, x1
004ef1fc4 	mov	x21, x0
004ef1fc8 	mov	w0, #32858
004ef1fcc 	mov	x1, xzr
004ef1fd0 	mov	x19, x2
004ef1fd4 	bl	#-2796080 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef1fd8 	tbz	w0, #0, #48 ; -> 0x4ef2008 
004ef1fdc 	mov	w0, #32858
004ef1fe0 	mov	x1, xzr
004ef1fe4 	bl	#-2795916 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef1fe8 	cbz	x0, #60 ; -> 0x4ef2024 
004ef1fec 	mov	x2, x20
004ef1ff0 	mov	x3, x19
004ef1ff4 	mov	x1, x21
004ef1ff8 	ldp	x20, x19, [sp, #16]
004ef1ffc 	mov	x4, xzr
004ef2000 	ldp	x30, x21, [sp], #32
004ef2004 	b	#-3551428 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
004ef2008 	mov	x1, x20
004ef200c 	mov	x2, x19
004ef2010 	add	x0, x21, #1752
004ef2014 	ldp	x20, x19, [sp, #16]
004ef2018 	mov	x3, xzr
004ef201c 	ldp	x30, x21, [sp], #32
004ef2020 	b	#-3805736 ; -> 0x4b50df8 SilentBigInt::set_Value
004ef2024 	bl	#-9835288 ; -> 0x4590d0c 
