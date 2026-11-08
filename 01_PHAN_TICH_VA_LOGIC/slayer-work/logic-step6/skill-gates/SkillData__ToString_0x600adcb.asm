00530b608 	str	d8, [sp, #-32]!
00530b60c 	stp	x30, x19, [sp, #16]
00530b610 	fmov	s8, s0
00530b614 	adrp	x19, #93110272 ; -> 0xabd7000 
00530b618 	ldrb	w8, [x19, #1040]
00530b61c 	tbnz	w8, #0, #72 ; -> 0x530b664 
00530b620 	adrp	x0, #84983808 ; -> 0xa417000 
00530b624 	ldr	x0, [x0, #3464]
00530b628 	bl	#-14134216 ; -> 0x4590a60 
00530b62c 	adrp	x0, #85143552 ; -> 0xa43e000 
00530b630 	ldr	x0, [x0, #3952]
00530b634 	bl	#-14134228 ; -> 0x4590a60 
00530b638 	adrp	x0, #84795392 ; -> 0xa3e9000 
00530b63c 	ldr	x0, [x0, #2488]
00530b640 	bl	#-14134240 ; -> 0x4590a60 
00530b644 	adrp	x0, #85114880 ; -> 0xa437000 
00530b648 	ldr	x0, [x0, #912]
00530b64c 	bl	#-14134252 ; -> 0x4590a60 
00530b650 	adrp	x0, #84832256 ; -> 0xa3f2000 
00530b654 	ldr	x0, [x0, #3088]
00530b658 	bl	#-14134264 ; -> 0x4590a60 
00530b65c 	mov	w8, #1
00530b660 	strb	w8, [x19, #1040]
00530b664 	mov	w0, #32945
00530b668 	mov	x1, xzr
00530b66c 	str	xzr, [sp, #8]
00530b670 	bl	#-7094476 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530b674 	tbz	w0, #0, #40 ; -> 0x530b69c 
00530b678 	mov	w0, #32945
00530b67c 	mov	x1, xzr
00530b680 	bl	#-7094312 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530b684 	cbz	x0, #220 ; -> 0x530b760 
00530b688 	ldp	x30, x19, [sp, #16]
00530b68c 	fmov	s0, s8
00530b690 	mov	x1, xzr
00530b694 	ldr	d8, [sp], #32
00530b698 	b	#-7640952 ; -> 0x4bc1f20 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1325
00530b69c 	adrp	x19, #85114880 ; -> 0xa437000 
00530b6a0 	ldr	x19, [x19, #912]
00530b6a4 	ldr	x0, [x19]
00530b6a8 	ldr	w8, [x0, #228]
00530b6ac 	cbnz	w8, #12 ; -> 0x530b6b8 
00530b6b0 	bl	#-14133968 ; -> 0x4590be0 
00530b6b4 	ldr	x0, [x19]
00530b6b8 	ldr	x8, [x0, #184]
00530b6bc 	ldr	x0, [x8]
00530b6c0 	cbz	x0, #160 ; -> 0x530b760 
00530b6c4 	adrp	x8, #85143552 ; -> 0xa43e000 
00530b6c8 	fmov	s0, s8
00530b6cc 	add	x1, sp, #8
00530b6d0 	ldr	x8, [x8, #3952]
00530b6d4 	ldr	x2, [x8]
00530b6d8 	bl	#49586596 ; -> 0x825587c 
00530b6dc 	tbnz	w0, #0, #116 ; -> 0x530b750 
00530b6e0 	adrp	x8, #84795392 ; -> 0xa3e9000 
00530b6e4 	ldr	x8, [x8, #2488]
00530b6e8 	ldr	x0, [x8]
00530b6ec 	ldr	w8, [x0, #228]
00530b6f0 	cbnz	w8, #8 ; -> 0x530b6f8 
00530b6f4 	bl	#-14134036 ; -> 0x4590be0 
00530b6f8 	adrp	x8, #84832256 ; -> 0xa3f2000 
00530b6fc 	fmov	s0, s8
00530b700 	mov	x1, xzr
00530b704 	ldr	x8, [x8, #3088]
00530b708 	ldr	x0, [x8]
00530b70c 	bl	#-8064212 ; -> 0x4b5aa38 Localization::ToString
00530b710 	ldr	x8, [x19]
00530b714 	str	x0, [sp, #8]
00530b718 	ldr	w9, [x8, #228]
00530b71c 	cbnz	w9, #16 ; -> 0x530b72c 
00530b720 	mov	x0, x8
00530b724 	bl	#-14134084 ; -> 0x4590be0 
00530b728 	ldr	x8, [x19]
00530b72c 	ldr	x8, [x8, #184]
00530b730 	ldr	x0, [x8]
00530b734 	cbz	x0, #44 ; -> 0x530b760 
00530b738 	adrp	x8, #84983808 ; -> 0xa417000 
00530b73c 	fmov	s0, s8
00530b740 	ldr	x8, [x8, #3464]
00530b744 	ldr	x1, [sp, #8]
00530b748 	ldr	x2, [x8]
00530b74c 	bl	#49579552 ; -> 0x8253d6c 
00530b750 	ldp	x30, x19, [sp, #16]
00530b754 	ldr	x0, [sp, #8]
00530b758 	ldr	d8, [sp], #32
00530b75c 	ret
00530b760 	bl	#-14133844 ; -> 0x4590d0c 
