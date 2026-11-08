00480cb7c 	str	x30, [sp, #-32]!
00480cb80 	stp	x20, x19, [sp, #16]
00480cb84 	mov	x19, x1
00480cb88 	mov	w20, w0
00480cb8c 	mov	w0, #2888
00480cb90 	mov	x1, xzr
00480cb94 	bl	#4434448 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00480cb98 	tbz	w0, #0, #44 ; -> 0x480cbc4 
00480cb9c 	mov	w0, #2888
00480cba0 	mov	x1, xzr
00480cba4 	bl	#4434612 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00480cba8 	cbz	x0, #64 ; -> 0x480cbe8 
00480cbac 	mov	w1, w20
00480cbb0 	mov	x2, x19
00480cbb4 	mov	x3, xzr
00480cbb8 	ldp	x20, x19, [sp, #16]
00480cbbc 	ldr	x30, [sp], #32
00480cbc0 	b	#3672240 ; -> 0x4b8d470 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_286
00480cbc4 	cbz	x19, #36 ; -> 0x480cbe8 
00480cbc8 	ldr	w0, [x19, #24]
00480cbcc 	bl	#77800 ; -> 0x481fbb4 APIValidator::GetCurrency
00480cbd0 	mov	x2, x0
00480cbd4 	mov	w0, w20
00480cbd8 	mov	x1, x19
00480cbdc 	ldp	x20, x19, [sp, #16]
00480cbe0 	ldr	x30, [sp], #32
00480cbe4 	b	#12608 ; -> 0x480fd24 APIValidator::CheckValue
00480cbe8 	bl	#-2604764 ; -> 0x4590d0c 
