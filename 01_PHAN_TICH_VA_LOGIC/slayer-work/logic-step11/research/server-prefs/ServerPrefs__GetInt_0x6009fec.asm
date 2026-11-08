0051f05b0 	sub	sp, sp, #48
0051f05b4 	stp	x30, x21, [sp, #16]
0051f05b8 	stp	x20, x19, [sp, #32]
0051f05bc 	adrp	x21, #94265344 ; -> 0xabd6000 
0051f05c0 	mov	w19, w1
0051f05c4 	mov	x20, x0
0051f05c8 	ldrb	w8, [x21, #3148]
0051f05cc 	tbnz	w8, #0, #36 ; -> 0x51f05f0 
0051f05d0 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f05d4 	ldr	x0, [x0, #136]
0051f05d8 	bl	#-12974968 ; -> 0x4590a60 
0051f05dc 	adrp	x0, #85983232 ; -> 0xa3f0000 
0051f05e0 	ldr	x0, [x0, #2048]
0051f05e4 	bl	#-12974980 ; -> 0x4590a60 
0051f05e8 	mov	w8, #1
0051f05ec 	strb	w8, [x21, #3148]
0051f05f0 	mov	w0, #2199
0051f05f4 	mov	x1, xzr
0051f05f8 	str	xzr, [sp, #8]
0051f05fc 	str	wzr, [sp, #4]
0051f0600 	bl	#-5935196 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f0604 	tbz	w0, #0, #48 ; -> 0x51f0634 
0051f0608 	mov	w0, #2199
0051f060c 	mov	x1, xzr
0051f0610 	bl	#-5935032 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f0614 	cbz	x0, #156 ; -> 0x51f06b0 
0051f0618 	mov	x1, x20
0051f061c 	mov	w2, w19
0051f0620 	mov	x3, xzr
0051f0624 	ldp	x20, x19, [sp, #32]
0051f0628 	ldp	x30, x21, [sp, #16]
0051f062c 	add	sp, sp, #48
0051f0630 	b	#-6687724 ; -> 0x4b8fa44 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_332
0051f0634 	adrp	x21, #85983232 ; -> 0xa3f0000 
0051f0638 	ldr	x21, [x21, #2048]
0051f063c 	ldr	x0, [x21]
0051f0640 	ldr	w8, [x0, #228]
0051f0644 	cbnz	w8, #12 ; -> 0x51f0650 
0051f0648 	bl	#-12974696 ; -> 0x4590be0 
0051f064c 	ldr	x0, [x21]
0051f0650 	ldr	x8, [x0, #184]
0051f0654 	ldr	x0, [x8]
0051f0658 	cbz	x0, #88 ; -> 0x51f06b0 
0051f065c 	adrp	x8, #86286336 ; -> 0xa43a000 
0051f0660 	add	x2, sp, #8
0051f0664 	mov	x1, x20
0051f0668 	ldr	x8, [x8, #136]
0051f066c 	ldr	x3, [x8]
0051f0670 	bl	#50044872 ; -> 0x81aa638 
0051f0674 	tbz	w0, #0, #40 ; -> 0x51f069c 
0051f0678 	ldr	x8, [sp, #8]
0051f067c 	cbz	x8, #52 ; -> 0x51f06b0 
0051f0680 	ldr	x0, [x8, #24]
0051f0684 	add	x1, sp, #4
0051f0688 	mov	x2, xzr
0051f068c 	bl	#63457132 ; -> 0x8e74df8 System.Int32::TryParse
0051f0690 	ldr	w8, [sp, #4]
0051f0694 	tst	w0, #0x1
0051f0698 	csel	w19, w8, w19, ne
0051f069c 	mov	w0, w19
0051f06a0 	ldp	x20, x19, [sp, #32]
0051f06a4 	ldp	x30, x21, [sp, #16]
0051f06a8 	add	sp, sp, #48
0051f06ac 	ret
0051f06b0 	bl	#-12974500 ; -> 0x4590d0c 
