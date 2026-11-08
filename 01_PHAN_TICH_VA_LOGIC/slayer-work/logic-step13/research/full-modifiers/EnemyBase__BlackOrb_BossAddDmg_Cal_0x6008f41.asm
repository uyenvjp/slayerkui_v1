0050bb654 	sub	sp, sp, #240
0050bb658 	str	x30, [sp, #192]
0050bb65c 	stp	x22, x21, [sp, #208]
0050bb660 	stp	x20, x19, [sp, #224]
0050bb664 	adrp	x22, #95531008 ; -> 0xabd6000 
0050bb668 	mov	x19, x2
0050bb66c 	mov	x20, x1
0050bb670 	ldrb	w8, [x22, #719]
0050bb674 	mov	x21, x0
0050bb678 	tbnz	w8, #0, #24 ; -> 0x50bb690 
0050bb67c 	adrp	x0, #87220224 ; -> 0xa3e9000 
0050bb680 	ldr	x0, [x0, #3552]
0050bb684 	bl	#-11709476 ; -> 0x4590a60 
0050bb688 	mov	w8, #1
0050bb68c 	strb	w8, [x22, #719]
0050bb690 	movi	v0.2d, #0000000000000000
0050bb694 	mov	w0, #31620
0050bb698 	mov	x1, xzr
0050bb69c 	stp	q0, q0, [sp, #128]
0050bb6a0 	stp	q0, q0, [sp, #160]
0050bb6a4 	bl	#-4669696 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bb6a8 	tbz	w0, #0, #56 ; -> 0x50bb6e0 
0050bb6ac 	mov	w0, #31620
0050bb6b0 	mov	x1, xzr
0050bb6b4 	bl	#-4669532 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bb6b8 	cbz	x0, #284 ; -> 0x50bb7d4 
0050bb6bc 	mov	x1, x21
0050bb6c0 	mov	x2, x20
0050bb6c4 	mov	x3, x19
0050bb6c8 	ldp	x20, x19, [sp, #224]
0050bb6cc 	ldr	x30, [sp, #192]
0050bb6d0 	ldp	x22, x21, [sp, #208]
0050bb6d4 	mov	x4, xzr
0050bb6d8 	add	sp, sp, #240
0050bb6dc 	b	#-5353720 ; -> 0x4ba05e4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648
0050bb6e0 	ldr	x8, [x21, #312]
0050bb6e4 	cbz	x8, #240 ; -> 0x50bb7d4 
0050bb6e8 	ldr	q0, [x8, #11696]
0050bb6ec 	ldr	q1, [x8, #11712]
0050bb6f0 	add	x0, sp, #64
0050bb6f4 	ldr	q2, [x8, #11728]
0050bb6f8 	ldr	q3, [x8, #11744]
0050bb6fc 	mov	x1, xzr
0050bb700 	stp	q0, q1, [sp, #64]
0050bb704 	stp	q2, q3, [sp, #96]
0050bb708 	stp	q0, q1, [sp, #128]
0050bb70c 	stp	q2, q3, [sp, #160]
0050bb710 	bl	#-5672464 ; -> 0x4b52900 SilentLong::op_Implicit
0050bb714 	cmp	x0, #1
0050bb718 	b.lt	#160 ; -> 0x50bb7b8 
0050bb71c 	ldp	q0, q1, [sp, #128]
0050bb720 	mov	x0, sp
0050bb724 	mov	x1, xzr
0050bb728 	stp	q0, q1, [sp]
0050bb72c 	ldp	q0, q2, [sp, #160]
0050bb730 	stp	q0, q2, [sp, #32]
0050bb734 	bl	#-5672500 ; -> 0x4b52900 SilentLong::op_Implicit
0050bb738 	adrp	x8, #87220224 ; -> 0xa3e9000 
0050bb73c 	mov	x21, x0
0050bb740 	ldr	x8, [x8, #3552]
0050bb744 	ldr	x8, [x8]
0050bb748 	ldr	w9, [x8, #228]
0050bb74c 	cbnz	w9, #12 ; -> 0x50bb758 
0050bb750 	mov	x0, x8
0050bb754 	bl	#-11709300 ; -> 0x4590be0 
0050bb758 	mov	w8, #100
0050bb75c 	mov	w9, #10000
0050bb760 	mov	x1, xzr
0050bb764 	madd	w0, w21, w8, w9
0050bb768 	bl	#67901500 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb76c 	mov	x2, x0
0050bb770 	mov	x3, x1
0050bb774 	mov	x0, x20
0050bb778 	mov	x1, x19
0050bb77c 	mov	x4, xzr
0050bb780 	bl	#67891396 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050bb784 	mov	x19, x0
0050bb788 	mov	x20, x1
0050bb78c 	mov	w0, #10000
0050bb790 	mov	x1, xzr
0050bb794 	bl	#67901456 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb798 	mov	x2, x0
0050bb79c 	mov	x3, x1
0050bb7a0 	mov	x0, x19
0050bb7a4 	mov	x1, x20
0050bb7a8 	mov	x4, xzr
0050bb7ac 	bl	#67891852 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050bb7b0 	mov	x20, x0
0050bb7b4 	mov	x19, x1
0050bb7b8 	mov	x0, x20
0050bb7bc 	mov	x1, x19
0050bb7c0 	ldr	x30, [sp, #192]
0050bb7c4 	ldp	x20, x19, [sp, #224]
0050bb7c8 	ldp	x22, x21, [sp, #208]
0050bb7cc 	add	sp, sp, #240
0050bb7d0 	ret
0050bb7d4 	bl	#-11709128 ; -> 0x4590d0c 
