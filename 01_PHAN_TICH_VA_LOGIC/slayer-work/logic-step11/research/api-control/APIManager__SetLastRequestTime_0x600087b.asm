0050c15b4 	stp	x30, x21, [sp, #-32]!
0050c15b8 	stp	x20, x19, [sp, #16]
0050c15bc 	adrp	x20, #95506432 ; -> 0xabd6000 
0050c15c0 	mov	w19, w0
0050c15c4 	ldrb	w8, [x20, #791]
0050c15c8 	tbnz	w8, #0, #48 ; -> 0x50c15f8 
0050c15cc 	adrp	x0, #87216128 ; -> 0xa3ee000 
0050c15d0 	ldr	x0, [x0, #3648]
0050c15d4 	bl	#-11733876 ; -> 0x4590a60 
0050c15d8 	adrp	x0, #87498752 ; -> 0xa433000 
0050c15dc 	ldr	x0, [x0, #1784]
0050c15e0 	bl	#-11733888 ; -> 0x4590a60 
0050c15e4 	adrp	x0, #87203840 ; -> 0xa3eb000 
0050c15e8 	ldr	x0, [x0, #456]
0050c15ec 	bl	#-11733900 ; -> 0x4590a60 
0050c15f0 	mov	w8, #1
0050c15f4 	strb	w8, [x20, #791]
0050c15f8 	mov	w0, #3446
0050c15fc 	mov	x1, xzr
0050c1600 	bl	#-4694108 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c1604 	tbz	w0, #0, #40 ; -> 0x50c162c 
0050c1608 	mov	w0, #3446
0050c160c 	mov	x1, xzr
0050c1610 	bl	#-4693944 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c1614 	cbz	x0, #140 ; -> 0x50c16a0 
0050c1618 	mov	w1, w19
0050c161c 	ldp	x20, x19, [sp, #16]
0050c1620 	mov	x2, xzr
0050c1624 	ldp	x30, x21, [sp], #32
0050c1628 	b	#-5402012 ; -> 0x4b9a88c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_537
0050c162c 	adrp	x21, #87216128 ; -> 0xa3ee000 
0050c1630 	adrp	x20, #87203840 ; -> 0xa3eb000 
0050c1634 	ldr	x21, [x21, #3648]
0050c1638 	ldr	x0, [x21]
0050c163c 	ldr	w8, [x0, #228]
0050c1640 	ldr	x20, [x20, #456]
0050c1644 	cbnz	w8, #12 ; -> 0x50c1650 
0050c1648 	bl	#-11733608 ; -> 0x4590be0 
0050c164c 	ldr	x0, [x21]
0050c1650 	ldr	x8, [x20]
0050c1654 	ldr	x9, [x0, #184]
0050c1658 	ldr	w10, [x8, #228]
0050c165c 	ldr	x20, [x9, #40]
0050c1660 	cbnz	w10, #12 ; -> 0x50c166c 
0050c1664 	mov	x0, x8
0050c1668 	bl	#-11733640 ; -> 0x4590be0 
0050c166c 	mov	x0, xzr
0050c1670 	bl	#3176028 ; -> 0x53c8ccc TimeApp::get_UtcNow
0050c1674 	cbz	x20, #44 ; -> 0x50c16a0 
0050c1678 	adrp	x8, #87498752 ; -> 0xa433000 
0050c167c 	mov	x2, x0
0050c1680 	mov	x3, x1
0050c1684 	ldr	x8, [x8, #1784]
0050c1688 	mov	x0, x20
0050c168c 	mov	w1, w19
0050c1690 	ldp	x20, x19, [sp, #16]
0050c1694 	ldr	x4, [x8]
0050c1698 	ldp	x30, x21, [sp], #32
0050c169c 	b	#50171660 ; -> 0x809a5a8 
0050c16a0 	bl	#-11733396 ; -> 0x4590d0c 
