00480fd24 	stp	x30, x21, [sp, #-32]!
00480fd28 	stp	x20, x19, [sp, #16]
00480fd2c 	mov	x19, x1
00480fd30 	mov	w21, w0
00480fd34 	mov	w0, #1982
00480fd38 	mov	x1, xzr
00480fd3c 	mov	x20, x2
00480fd40 	bl	#4421732 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00480fd44 	tbz	w0, #0, #48 ; -> 0x480fd74 
00480fd48 	mov	w0, #1982
00480fd4c 	mov	x1, xzr
00480fd50 	bl	#4421896 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00480fd54 	cbz	x0, #64 ; -> 0x480fd94 
00480fd58 	mov	x2, x19
00480fd5c 	mov	x3, x20
00480fd60 	mov	w1, w21
00480fd64 	ldp	x20, x19, [sp, #16]
00480fd68 	mov	x4, xzr
00480fd6c 	ldp	x30, x21, [sp], #32
00480fd70 	b	#3618428 ; -> 0x4b833ec IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_102
00480fd74 	cbz	x20, #32 ; -> 0x480fd94 
00480fd78 	ldp	x2, x3, [x20, #32]
00480fd7c 	mov	x1, x19
00480fd80 	ldr	x4, [x20, #48]
00480fd84 	ldp	x20, x19, [sp, #16]
00480fd88 	mov	w0, w21
00480fd8c 	ldp	x30, x21, [sp], #32
00480fd90 	b	#66860 ; -> 0x48202bc APIValidator::CheckValue
00480fd94 	bl	#-2617480 ; -> 0x4590d0c 
