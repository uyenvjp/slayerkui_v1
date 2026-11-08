0050b84dc 	str	d8, [sp, #-48]!
0050b84e0 	str	x30, [sp, #8]
0050b84e4 	stp	x22, x21, [sp, #16]
0050b84e8 	stp	x20, x19, [sp, #32]
0050b84ec 	adrp	x22, #95543296 ; -> 0xabd6000 
0050b84f0 	mov	x19, x2
0050b84f4 	mov	x20, x1
0050b84f8 	ldrb	w8, [x22, #705]
0050b84fc 	mov	x21, x0
0050b8500 	tbnz	w8, #0, #48 ; -> 0x50b8530 
0050b8504 	adrp	x0, #87232512 ; -> 0xa3e9000 
0050b8508 	ldr	x0, [x0, #3552]
0050b850c 	bl	#-11696812 ; -> 0x4590a60 
0050b8510 	adrp	x0, #87224320 ; -> 0xa3e7000 
0050b8514 	ldr	x0, [x0, #1192]
0050b8518 	bl	#-11696824 ; -> 0x4590a60 
0050b851c 	adrp	x0, #87433216 ; -> 0xa41a000 
0050b8520 	ldr	x0, [x0, #3856]
0050b8524 	bl	#-11696836 ; -> 0x4590a60 
0050b8528 	mov	w8, #1
0050b852c 	strb	w8, [x22, #705]
0050b8530 	mov	w0, #31582
0050b8534 	mov	x1, xzr
0050b8538 	bl	#-4657044 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b853c 	tbz	w0, #0, #56 ; -> 0x50b8574 
0050b8540 	mov	w0, #31582
0050b8544 	mov	x1, xzr
0050b8548 	bl	#-4656880 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b854c 	cbz	x0, #332 ; -> 0x50b8698 
0050b8550 	mov	x1, x21
0050b8554 	mov	x2, x20
0050b8558 	mov	x3, x19
0050b855c 	ldp	x20, x19, [sp, #32]
0050b8560 	ldr	x30, [sp, #8]
0050b8564 	ldp	x22, x21, [sp, #16]
0050b8568 	mov	x4, xzr
0050b856c 	ldr	d8, [sp], #48
0050b8570 	b	#-5341068 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050b8574 	adrp	x8, #87224320 ; -> 0xa3e7000 
0050b8578 	ldr	x8, [x8, #1192]
0050b857c 	ldr	x21, [x21, #528]
0050b8580 	ldr	x0, [x8]
0050b8584 	ldr	w8, [x0, #228]
0050b8588 	cbnz	w8, #8 ; -> 0x50b8590 
0050b858c 	bl	#-11696556 ; -> 0x4590be0 
0050b8590 	mov	x0, x21
0050b8594 	mov	x1, xzr
0050b8598 	mov	x2, xzr
0050b859c 	bl	#76852468 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
0050b85a0 	tbz	w0, #0, #220 ; -> 0x50b867c 
0050b85a4 	adrp	x21, #87433216 ; -> 0xa41a000 
0050b85a8 	ldr	x21, [x21, #3856]
0050b85ac 	ldr	x0, [x21]
0050b85b0 	ldr	w8, [x0, #228]
0050b85b4 	cbnz	w8, #12 ; -> 0x50b85c0 
0050b85b8 	bl	#-11696600 ; -> 0x4590be0 
0050b85bc 	ldr	x0, [x21]
0050b85c0 	ldr	x8, [x0, #184]
0050b85c4 	ldr	x0, [x8]
0050b85c8 	cbz	x0, #208 ; -> 0x50b8698 
0050b85cc 	mov	x1, xzr
0050b85d0 	bl	#-1844336 ; -> 0x4ef6160 PlayerBase::get_AbnormalSkillValue
0050b85d4 	adrp	x8, #87232512 ; -> 0xa3e9000 
0050b85d8 	fmov	s8, s0
0050b85dc 	ldr	x8, [x8, #3552]
0050b85e0 	ldr	x0, [x8]
0050b85e4 	ldr	w8, [x0, #228]
0050b85e8 	cbnz	w8, #8 ; -> 0x50b85f0 
0050b85ec 	bl	#-11696652 ; -> 0x4590be0 
0050b85f0 	mov	w8, #1148846080
0050b85f4 	mov	w9, #2139095040
0050b85f8 	mov	x1, xzr
0050b85fc 	fmov	s0, w8
0050b8600 	fmov	s1, w9
0050b8604 	mov	w9, #34464
0050b8608 	movk	w9, #1, lsl #16
0050b860c 	fmul	s0, s8, s0
0050b8610 	fcvtzs	w8, s0
0050b8614 	fcmp	s0, s1
0050b8618 	add	w8, w8, w9
0050b861c 	mov	w9, #34464
0050b8620 	movk	w9, #32769, lsl #16
0050b8624 	csel	w0, w9, w8, eq
0050b8628 	bl	#67914108 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b862c 	mov	x2, x20
0050b8630 	mov	x3, x19
0050b8634 	mov	x4, xzr
0050b8638 	bl	#67904012 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050b863c 	mov	x19, x0
0050b8640 	mov	w0, #34464
0050b8644 	mov	x20, x1
0050b8648 	movk	w0, #1, lsl #16
0050b864c 	mov	x1, xzr
0050b8650 	bl	#67914068 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b8654 	mov	x2, x0
0050b8658 	mov	x3, x1
0050b865c 	mov	x0, x19
0050b8660 	mov	x1, x20
0050b8664 	ldp	x20, x19, [sp, #32]
0050b8668 	ldp	x22, x21, [sp, #16]
0050b866c 	ldr	x30, [sp, #8]
0050b8670 	mov	x4, xzr
0050b8674 	ldr	d8, [sp], #48
0050b8678 	b	#67904448 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050b867c 	mov	x0, x20
0050b8680 	mov	x1, x19
0050b8684 	ldr	x30, [sp, #8]
0050b8688 	ldp	x20, x19, [sp, #32]
0050b868c 	ldp	x22, x21, [sp, #16]
0050b8690 	ldr	d8, [sp], #48
0050b8694 	ret
0050b8698 	bl	#-11696524 ; -> 0x4590d0c 
