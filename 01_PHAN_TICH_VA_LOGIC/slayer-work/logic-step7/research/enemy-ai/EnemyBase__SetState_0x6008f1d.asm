0050b6a5c 	stp	x30, x21, [sp, #-32]!
0050b6a60 	stp	x20, x19, [sp, #16]
0050b6a64 	adrp	x21, #95551488 ; -> 0xabd6000 
0050b6a68 	mov	w19, w1
0050b6a6c 	mov	x20, x0
0050b6a70 	ldrb	w8, [x21, #693]
0050b6a74 	tbnz	w8, #0, #24 ; -> 0x50b6a8c 
0050b6a78 	adrp	x0, #87265280 ; -> 0xa3ef000 
0050b6a7c 	ldr	x0, [x0, #3392]
0050b6a80 	bl	#-11690016 ; -> 0x4590a60 
0050b6a84 	mov	w8, #1
0050b6a88 	strb	w8, [x21, #693]
0050b6a8c 	mov	w0, #38486
0050b6a90 	mov	x1, xzr
0050b6a94 	bl	#-4650224 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b6a98 	tbz	w0, #0, #44 ; -> 0x50b6ac4 
0050b6a9c 	mov	w0, #38486
0050b6aa0 	mov	x1, xzr
0050b6aa4 	bl	#-4650060 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b6aa8 	cbz	x0, #72 ; -> 0x50b6af0 
0050b6aac 	mov	x1, x20
0050b6ab0 	mov	w2, w19
0050b6ab4 	mov	x3, xzr
0050b6ab8 	ldp	x20, x19, [sp, #16]
0050b6abc 	ldp	x30, x21, [sp], #32
0050b6ac0 	b	#-5378908 ; -> 0x4b95764 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_452
0050b6ac4 	ldr	x0, [x20, #344]
0050b6ac8 	str	w19, [x20, #36]
0050b6acc 	cbz	x0, #36 ; -> 0x50b6af0 
0050b6ad0 	adrp	x8, #87265280 ; -> 0xa3ef000 
0050b6ad4 	mov	w2, w19
0050b6ad8 	mov	x3, xzr
0050b6adc 	ldr	x8, [x8, #3392]
0050b6ae0 	ldp	x20, x19, [sp, #16]
0050b6ae4 	ldr	x1, [x8]
0050b6ae8 	ldp	x30, x21, [sp], #32
0050b6aec 	b	#76457332 ; -> 0x99a1060 UnityEngine.Animator::SetInteger
0050b6af0 	bl	#-11689444 ; -> 0x4590d0c 
