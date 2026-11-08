004e987d4 	str	x30, [sp, #-32]!
004e987d8 	stp	x20, x19, [sp, #16]
004e987dc 	mov	w19, w1
004e987e0 	mov	x20, x0
004e987e4 	mov	w0, #32256
004e987e8 	mov	x1, xzr
004e987ec 	bl	#-2429512 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e987f0 	tbz	w0, #0, #44 ; -> 0x4e9881c 
004e987f4 	mov	w0, #32256
004e987f8 	mov	x1, xzr
004e987fc 	bl	#-2429348 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e98800 	cbz	x0, #52 ; -> 0x4e98834 
004e98804 	mov	x1, x20
004e98808 	mov	w2, w19
004e9880c 	mov	x3, xzr
004e98810 	ldp	x20, x19, [sp, #16]
004e98814 	ldr	x30, [sp], #32
004e98818 	b	#-3182036 ; -> 0x4b8fa44 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_332
004e9881c 	mov	w8, #50
004e98820 	mov	w9, #200
004e98824 	madd	w0, w19, w8, w9
004e98828 	ldp	x20, x19, [sp, #16]
004e9882c 	ldr	x30, [sp], #32
004e98830 	ret
004e98834 	bl	#-9468712 ; -> 0x4590d0c 
