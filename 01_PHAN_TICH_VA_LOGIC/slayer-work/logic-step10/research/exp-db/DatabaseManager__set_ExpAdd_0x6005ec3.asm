004d4d9c8 	sub	sp, sp, #112
004d4d9cc 	stp	x30, x21, [sp, #80]
004d4d9d0 	stp	x20, x19, [sp, #96]
004d4d9d4 	mov	x20, x1
004d4d9d8 	mov	x19, x0
004d4d9dc 	mov	w0, #27311
004d4d9e0 	mov	x1, xzr
004d4d9e4 	bl	#-1074240 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4d9e8 	tbz	w0, #0, #76 ; -> 0x4d4da34 
004d4d9ec 	mov	w0, #27311
004d4d9f0 	mov	x1, xzr
004d4d9f4 	bl	#-1074076 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4d9f8 	cbz	x0, #100 ; -> 0x4d4da5c 
004d4d9fc 	mov	x21, x0
004d4da00 	add	x0, sp, #8
004d4da04 	mov	x1, x20
004d4da08 	mov	w2, #72
004d4da0c 	bl	#84008676 ; -> 0x9d6b8f0 
004d4da10 	add	x2, sp, #8
004d4da14 	mov	x0, x21
004d4da18 	mov	x1, x19
004d4da1c 	mov	x3, xzr
004d4da20 	bl	#-1560324 ; -> 0x4bd0b1c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1613
004d4da24 	ldp	x20, x19, [sp, #96]
004d4da28 	ldp	x30, x21, [sp, #80]
004d4da2c 	add	sp, sp, #112
004d4da30 	ret
004d4da34 	add	x0, x19, #3264
004d4da38 	mov	x1, x20
004d4da3c 	mov	w2, #72
004d4da40 	bl	#84008640 ; -> 0x9d6b900 
004d4da44 	add	x0, x19, #3272
004d4da48 	ldp	x20, x19, [sp, #96]
004d4da4c 	ldp	x30, x21, [sp, #80]
004d4da50 	mov	x1, xzr
004d4da54 	add	sp, sp, #112
004d4da58 	b	#-8114260 ; -> 0x4590a04 
004d4da5c 	bl	#-8113488 ; -> 0x4590d0c 
