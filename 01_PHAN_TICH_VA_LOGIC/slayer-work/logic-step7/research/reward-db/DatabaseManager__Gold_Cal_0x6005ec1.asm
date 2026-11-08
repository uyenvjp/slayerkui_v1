004d4d544 	sub	sp, sp, #112
004d4d548 	str	x30, [sp, #64]
004d4d54c 	stp	x22, x21, [sp, #80]
004d4d550 	stp	x20, x19, [sp, #96]
004d4d554 	adrp	x22, #99119104 ; -> 0xabd4000 
004d4d558 	mov	x19, x2
004d4d55c 	mov	x20, x1
004d4d560 	ldrb	w8, [x22, #2862]
004d4d564 	mov	x21, x0
004d4d568 	tbnz	w8, #0, #24 ; -> 0x4d4d580 
004d4d56c 	adrp	x0, #90816512 ; -> 0xa3e9000 
004d4d570 	ldr	x0, [x0, #3552]
004d4d574 	bl	#-8112916 ; -> 0x4590a60 
004d4d578 	mov	w8, #1
004d4d57c 	strb	w8, [x22, #2862]
004d4d580 	mov	w0, #4607
004d4d584 	mov	x1, xzr
004d4d588 	bl	#-1073124 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4d58c 	tbz	w0, #0, #56 ; -> 0x4d4d5c4 
004d4d590 	mov	w0, #4607
004d4d594 	mov	x1, xzr
004d4d598 	bl	#-1072960 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4d59c 	cbz	x0, #196 ; -> 0x4d4d660 
004d4d5a0 	mov	x1, x21
004d4d5a4 	mov	x2, x20
004d4d5a8 	mov	x3, x19
004d4d5ac 	ldp	x20, x19, [sp, #96]
004d4d5b0 	ldr	x30, [sp, #64]
004d4d5b4 	ldp	x22, x21, [sp, #80]
004d4d5b8 	mov	x4, xzr
004d4d5bc 	add	sp, sp, #112
004d4d5c0 	b	#-1757148 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
004d4d5c4 	adrp	x22, #90816512 ; -> 0xa3e9000 
004d4d5c8 	mov	x8, sp
004d4d5cc 	mov	x0, x21
004d4d5d0 	ldr	x22, [x22, #3552]
004d4d5d4 	bl	#-3016 ; -> 0x4d4ca0c DatabaseManager::get_GoldAmountAdd
004d4d5d8 	mov	x0, sp
004d4d5dc 	mov	x1, xzr
004d4d5e0 	bl	#-2075872 ; -> 0x4b52900 SilentLong::op_Implicit
004d4d5e4 	ldr	x8, [x22]
004d4d5e8 	mov	x21, x0
004d4d5ec 	ldr	w9, [x8, #228]
004d4d5f0 	cbnz	w9, #12 ; -> 0x4d4d5fc 
004d4d5f4 	mov	x0, x8
004d4d5f8 	bl	#-8112664 ; -> 0x4590be0 
004d4d5fc 	mov	x0, x21
004d4d600 	mov	x1, xzr
004d4d604 	bl	#71496472 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004d4d608 	mov	x2, x0
004d4d60c 	mov	x3, x1
004d4d610 	mov	x0, x20
004d4d614 	mov	x1, x19
004d4d618 	mov	x4, xzr
004d4d61c 	bl	#71488040 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004d4d620 	mov	x19, x0
004d4d624 	mov	x20, x1
004d4d628 	mov	w0, #100
004d4d62c 	mov	x1, xzr
004d4d630 	bl	#71498100 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004d4d634 	mov	x2, x0
004d4d638 	mov	x3, x1
004d4d63c 	mov	x0, x19
004d4d640 	mov	x1, x20
004d4d644 	mov	x4, xzr
004d4d648 	bl	#71488496 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004d4d64c 	ldp	x20, x19, [sp, #96]
004d4d650 	ldr	x30, [sp, #64]
004d4d654 	ldp	x22, x21, [sp, #80]
004d4d658 	add	sp, sp, #112
004d4d65c 	ret
004d4d660 	bl	#-8112468 ; -> 0x4590d0c 
