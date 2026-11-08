0050ba584 	stp	x30, x23, [sp, #-48]!
0050ba588 	stp	x22, x21, [sp, #16]
0050ba58c 	stp	x20, x19, [sp, #32]
0050ba590 	adrp	x22, #95535104 ; -> 0xabd6000 
0050ba594 	mov	x19, x2
0050ba598 	mov	x20, x1
0050ba59c 	ldrb	w8, [x22, #748]
0050ba5a0 	mov	x21, x0
0050ba5a4 	tbnz	w8, #0, #36 ; -> 0x50ba5c8 
0050ba5a8 	adrp	x0, #87224320 ; -> 0xa3e9000 
0050ba5ac 	ldr	x0, [x0, #3552]
0050ba5b0 	bl	#-11705168 ; -> 0x4590a60 
0050ba5b4 	adrp	x0, #87273472 ; -> 0xa3f5000 
0050ba5b8 	ldr	x0, [x0, #3904]
0050ba5bc 	bl	#-11705180 ; -> 0x4590a60 
0050ba5c0 	mov	w8, #1
0050ba5c4 	strb	w8, [x22, #748]
0050ba5c8 	mov	w0, #31608
0050ba5cc 	mov	x1, xzr
0050ba5d0 	bl	#-4665388 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050ba5d4 	tbz	w0, #0, #52 ; -> 0x50ba608 
0050ba5d8 	mov	w0, #31608
0050ba5dc 	mov	x1, xzr
0050ba5e0 	bl	#-4665224 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050ba5e4 	cbz	x0, #168 ; -> 0x50ba68c 
0050ba5e8 	mov	x1, x21
0050ba5ec 	mov	x2, x20
0050ba5f0 	mov	x3, x19
0050ba5f4 	ldp	x20, x19, [sp, #32]
0050ba5f8 	mov	x4, xzr
0050ba5fc 	ldp	x22, x21, [sp, #16]
0050ba600 	ldp	x30, x23, [sp], #48
0050ba604 	b	#-5420740 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
0050ba608 	adrp	x8, #87273472 ; -> 0xa3f5000 
0050ba60c 	ldr	x8, [x8, #3904]
0050ba610 	ldr	x8, [x8]
0050ba614 	ldr	x8, [x8, #184]
0050ba618 	ldr	x23, [x8]
0050ba61c 	cbz	x23, #112 ; -> 0x50ba68c 
0050ba620 	add	x0, x23, #1632
0050ba624 	mov	x1, xzr
0050ba628 	bl	#-5675988 ; -> 0x4b50a54 SilentBigInt::get_Value
0050ba62c 	adrp	x8, #87224320 ; -> 0xa3e9000 
0050ba630 	mov	x21, x0
0050ba634 	mov	x22, x1
0050ba638 	ldr	x8, [x8, #3552]
0050ba63c 	ldr	x0, [x8]
0050ba640 	ldr	w8, [x0, #228]
0050ba644 	cbnz	w8, #8 ; -> 0x50ba64c 
0050ba648 	bl	#-11704936 ; -> 0x4590be0 
0050ba64c 	mov	x0, x21
0050ba650 	mov	x1, x22
0050ba654 	mov	x2, x20
0050ba658 	mov	x3, x19
0050ba65c 	mov	x4, xzr
0050ba660 	bl	#67895480 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
0050ba664 	ldp	x20, x19, [sp, #32]
0050ba668 	mov	x2, x0
0050ba66c 	ldp	x22, x21, [sp, #16]
0050ba670 	mov	x3, x1
0050ba674 	add	x0, x23, #1632
0050ba678 	mov	x1, x2
0050ba67c 	mov	x2, x3
0050ba680 	mov	x3, xzr
0050ba684 	ldp	x30, x23, [sp], #48
0050ba688 	b	#-5675152 ; -> 0x4b50df8 SilentBigInt::set_Value
0050ba68c 	bl	#-11704704 ; -> 0x4590d0c 
