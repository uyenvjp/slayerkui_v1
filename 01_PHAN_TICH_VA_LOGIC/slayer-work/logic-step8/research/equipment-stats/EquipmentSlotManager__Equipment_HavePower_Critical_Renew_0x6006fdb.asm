004e9c654 	stp	d9, d8, [sp, #-64]!
004e9c658 	str	x30, [sp, #16]
004e9c65c 	stp	x22, x21, [sp, #32]
004e9c660 	stp	x20, x19, [sp, #48]
004e9c664 	fmov	s8, s0
004e9c668 	adrp	x21, #97751040 ; -> 0xabd5000 
004e9c66c 	mov	w19, w1
004e9c670 	ldrb	w8, [x21, #856]
004e9c674 	mov	x20, x0
004e9c678 	tbnz	w8, #0, #36 ; -> 0x4e9c69c 
004e9c67c 	adrp	x0, #89702400 ; -> 0xa428000 
004e9c680 	ldr	x0, [x0, #2896]
004e9c684 	bl	#-9485348 ; -> 0x4590a60 
004e9c688 	adrp	x0, #89706496 ; -> 0xa429000 
004e9c68c 	ldr	x0, [x0, #3088]
004e9c690 	bl	#-9485360 ; -> 0x4590a60 
004e9c694 	mov	w8, #1
004e9c698 	strb	w8, [x21, #856]
004e9c69c 	mov	w0, #32252
004e9c6a0 	mov	x1, xzr
004e9c6a4 	bl	#-2445568 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e9c6a8 	tbz	w0, #0, #56 ; -> 0x4e9c6e0 
004e9c6ac 	mov	w0, #32252
004e9c6b0 	mov	x1, xzr
004e9c6b4 	bl	#-2445404 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e9c6b8 	cbz	x0, #216 ; -> 0x4e9c790 
004e9c6bc 	mov	x1, x20
004e9c6c0 	mov	w2, w19
004e9c6c4 	ldr	x30, [sp, #16]
004e9c6c8 	ldp	x20, x19, [sp, #48]
004e9c6cc 	fmov	s0, s8
004e9c6d0 	ldp	x22, x21, [sp, #32]
004e9c6d4 	mov	x3, xzr
004e9c6d8 	ldp	d9, d8, [sp], #64
004e9c6dc 	b	#-3062760 ; -> 0x4bb0af4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_993
004e9c6e0 	ldr	x22, [x20, #32]
004e9c6e4 	cbz	x22, #172 ; -> 0x4e9c790 
004e9c6e8 	add	x0, x22, #2496
004e9c6ec 	mov	x1, xzr
004e9c6f0 	bl	#-3452924 ; -> 0x4b516f4 SilentFloat::get_Value
004e9c6f4 	ldr	x0, [x20, #384]
004e9c6f8 	cbz	x0, #152 ; -> 0x4e9c790 
004e9c6fc 	adrp	x21, #89702400 ; -> 0xa428000 
004e9c700 	mov	w1, w19
004e9c704 	fmov	s9, s0
004e9c708 	ldr	x21, [x21, #2896]
004e9c70c 	ldr	x2, [x21]
004e9c710 	bl	#52176744 ; -> 0x805ee78 
004e9c714 	fsub	s0, s9, s0
004e9c718 	add	x0, x22, #2496
004e9c71c 	mov	x1, xzr
004e9c720 	bl	#-3451752 ; -> 0x4b51bb8 SilentFloat::set_Value
004e9c724 	ldr	x0, [x20, #384]
004e9c728 	cbz	x0, #104 ; -> 0x4e9c790 
004e9c72c 	adrp	x8, #89706496 ; -> 0xa429000 
004e9c730 	fmov	s0, s8
004e9c734 	mov	w1, w19
004e9c738 	ldr	x8, [x8, #3088]
004e9c73c 	ldr	x2, [x8]
004e9c740 	bl	#52176832 ; -> 0x805ef00 
004e9c744 	ldr	x22, [x20, #32]
004e9c748 	cbz	x22, #72 ; -> 0x4e9c790 
004e9c74c 	add	x0, x22, #2496
004e9c750 	mov	x1, xzr
004e9c754 	bl	#-3453024 ; -> 0x4b516f4 SilentFloat::get_Value
004e9c758 	ldr	x0, [x20, #384]
004e9c75c 	cbz	x0, #52 ; -> 0x4e9c790 
004e9c760 	ldr	x2, [x21]
004e9c764 	mov	w1, w19
004e9c768 	fmov	s8, s0
004e9c76c 	bl	#52176652 ; -> 0x805ee78 
004e9c770 	add	x0, x22, #2496
004e9c774 	ldp	x20, x19, [sp, #48]
004e9c778 	ldp	x22, x21, [sp, #32]
004e9c77c 	fadd	s0, s8, s0
004e9c780 	ldr	x30, [sp, #16]
004e9c784 	mov	x1, xzr
004e9c788 	ldp	d9, d8, [sp], #64
004e9c78c 	b	#-3451860 ; -> 0x4b51bb8 SilentFloat::set_Value
004e9c790 	bl	#-9484932 ; -> 0x4590d0c 
