0050c16a4 	str	x30, [sp, #-32]!
0050c16a8 	stp	x20, x19, [sp, #16]
0050c16ac 	adrp	x20, #95506432 ; -> 0xabd6000 
0050c16b0 	mov	w19, w0
0050c16b4 	ldrb	w8, [x20, #792]
0050c16b8 	tbnz	w8, #0, #36 ; -> 0x50c16dc 
0050c16bc 	adrp	x0, #87216128 ; -> 0xa3ee000 
0050c16c0 	ldr	x0, [x0, #3648]
0050c16c4 	bl	#-11734116 ; -> 0x4590a60 
0050c16c8 	adrp	x0, #87498752 ; -> 0xa433000 
0050c16cc 	ldr	x0, [x0, #1792]
0050c16d0 	bl	#-11734128 ; -> 0x4590a60 
0050c16d4 	mov	w8, #1
0050c16d8 	strb	w8, [x20, #792]
0050c16dc 	mov	w0, #3447
0050c16e0 	mov	x1, xzr
0050c16e4 	bl	#-4694336 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c16e8 	tbz	w0, #0, #40 ; -> 0x50c1710 
0050c16ec 	mov	w0, #3447
0050c16f0 	mov	x1, xzr
0050c16f4 	bl	#-4694172 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c16f8 	cbz	x0, #92 ; -> 0x50c1754 
0050c16fc 	mov	w1, w19
0050c1700 	ldp	x20, x19, [sp, #16]
0050c1704 	mov	x2, xzr
0050c1708 	ldr	x30, [sp], #32
0050c170c 	b	#-5402240 ; -> 0x4b9a88c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_537
0050c1710 	adrp	x20, #87216128 ; -> 0xa3ee000 
0050c1714 	ldr	x20, [x20, #3648]
0050c1718 	ldr	x0, [x20]
0050c171c 	ldr	w8, [x0, #228]
0050c1720 	cbnz	w8, #12 ; -> 0x50c172c 
0050c1724 	bl	#-11733828 ; -> 0x4590be0 
0050c1728 	ldr	x0, [x20]
0050c172c 	ldr	x8, [x0, #184]
0050c1730 	ldr	x0, [x8, #40]
0050c1734 	cbz	x0, #32 ; -> 0x50c1754 
0050c1738 	adrp	x8, #87498752 ; -> 0xa433000 
0050c173c 	mov	w1, w19
0050c1740 	ldr	x8, [x8, #1792]
0050c1744 	ldp	x20, x19, [sp, #16]
0050c1748 	ldr	x2, [x8]
0050c174c 	ldr	x30, [sp], #32
0050c1750 	b	#50176704 ; -> 0x809ba10 
0050c1754 	bl	#-11733576 ; -> 0x4590d0c 
