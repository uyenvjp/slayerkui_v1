0051f15f8 	sub	sp, sp, #64
0051f15fc 	str	x30, [sp, #32]
0051f1600 	stp	x20, x19, [sp, #48]
0051f1604 	adrp	x20, #94261248 ; -> 0xabd6000 
0051f1608 	mov	w19, w0
0051f160c 	ldrb	w8, [x20, #3161]
0051f1610 	tbnz	w8, #0, #36 ; -> 0x51f1634 
0051f1614 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f1618 	ldr	x0, [x0, #128]
0051f161c 	bl	#-12979132 ; -> 0x4590a60 
0051f1620 	adrp	x0, #85979136 ; -> 0xa3f0000 
0051f1624 	ldr	x0, [x0, #2048]
0051f1628 	bl	#-12979144 ; -> 0x4590a60 
0051f162c 	mov	w8, #1
0051f1630 	strb	w8, [x20, #3161]
0051f1634 	mov	w0, #41802
0051f1638 	mov	x1, xzr
0051f163c 	bl	#-5939352 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f1640 	tbz	w0, #0, #44 ; -> 0x51f166c 
0051f1644 	mov	w0, #41802
0051f1648 	mov	x1, xzr
0051f164c 	bl	#-5939188 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f1650 	cbz	x0, #124 ; -> 0x51f16cc 
0051f1654 	mov	w1, w19
0051f1658 	ldp	x20, x19, [sp, #48]
0051f165c 	ldr	x30, [sp, #32]
0051f1660 	mov	x2, xzr
0051f1664 	add	sp, sp, #64
0051f1668 	b	#-6212968 ; -> 0x4c04900 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2643
0051f166c 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1670 	adrp	x20, #85979136 ; -> 0xa3f0000 
0051f1674 	mov	x9, #-1
0051f1678 	ldr	x8, [x8, #128]
0051f167c 	add	x0, sp, #8
0051f1680 	mov	x1, xzr
0051f1684 	ldr	x8, [x8]
0051f1688 	str	x8, [sp, #8]
0051f168c 	ldr	x20, [x20, #2048]
0051f1690 	str	x9, [sp, #16]
0051f1694 	str	w19, [sp, #24]
0051f1698 	bl	#63693684 ; -> 0x8eafa0c System.Enum::ToString
0051f169c 	ldr	x8, [x20]
0051f16a0 	mov	x19, x0
0051f16a4 	ldr	w9, [x8, #228]
0051f16a8 	cbnz	w9, #12 ; -> 0x51f16b4 
0051f16ac 	mov	x0, x8
0051f16b0 	bl	#-12978896 ; -> 0x4590be0 
0051f16b4 	mov	x0, x19
0051f16b8 	bl	#24 ; -> 0x51f16d0 ServerPrefs::Remove
0051f16bc 	ldp	x20, x19, [sp, #48]
0051f16c0 	ldr	x30, [sp, #32]
0051f16c4 	add	sp, sp, #64
0051f16c8 	ret
0051f16cc 	bl	#-12978624 ; -> 0x4590d0c 
