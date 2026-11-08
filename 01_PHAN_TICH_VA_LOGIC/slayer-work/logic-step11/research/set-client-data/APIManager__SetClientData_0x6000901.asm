0050d1630 	str	x30, [sp, #-48]!
0050d1634 	stp	x22, x21, [sp, #16]
0050d1638 	stp	x20, x19, [sp, #32]
0050d163c 	adrp	x21, #95440896 ; -> 0xabd6000 
0050d1640 	mov	x20, x1
0050d1644 	mov	x19, x0
0050d1648 	ldrb	w8, [x21, #925]
0050d164c 	tbnz	w8, #0, #72 ; -> 0x50d1694 
0050d1650 	adrp	x0, #87150592 ; -> 0xa3ee000 
0050d1654 	ldr	x0, [x0, #3648]
0050d1658 	bl	#-11799544 ; -> 0x4590a60 
0050d165c 	adrp	x0, #87162880 ; -> 0xa3f1000 
0050d1660 	ldr	x0, [x0, #2632]
0050d1664 	bl	#-11799556 ; -> 0x4590a60 
0050d1668 	adrp	x0, #87437312 ; -> 0xa434000 
0050d166c 	ldr	x0, [x0, #1216]
0050d1670 	bl	#-11799568 ; -> 0x4590a60 
0050d1674 	adrp	x0, #87437312 ; -> 0xa434000 
0050d1678 	ldr	x0, [x0, #1224]
0050d167c 	bl	#-11799580 ; -> 0x4590a60 
0050d1680 	adrp	x0, #87437312 ; -> 0xa434000 
0050d1684 	ldr	x0, [x0, #1232]
0050d1688 	bl	#-11799592 ; -> 0x4590a60 
0050d168c 	mov	w8, #1
0050d1690 	strb	w8, [x21, #925]
0050d1694 	mov	w0, #2434
0050d1698 	mov	x1, xzr
0050d169c 	bl	#-4759800 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050d16a0 	tbz	w0, #0, #48 ; -> 0x50d16d0 
0050d16a4 	mov	w0, #2434
0050d16a8 	mov	x1, xzr
0050d16ac 	bl	#-4759636 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050d16b0 	cbz	x0, #248 ; -> 0x50d17a8 
0050d16b4 	mov	x1, x19
0050d16b8 	mov	x2, x20
0050d16bc 	mov	x3, xzr
0050d16c0 	ldp	x20, x19, [sp, #32]
0050d16c4 	ldp	x22, x21, [sp, #16]
0050d16c8 	ldr	x30, [sp], #48
0050d16cc 	b	#-5582520 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
0050d16d0 	adrp	x8, #87437312 ; -> 0xa434000 
0050d16d4 	ldr	x8, [x8, #1232]
0050d16d8 	ldr	x0, [x8]
0050d16dc 	bl	#-11799008 ; -> 0x4590cfc 
0050d16e0 	mov	x1, xzr
0050d16e4 	mov	x21, x0
0050d16e8 	bl	#1035556 ; -> 0x51ce40c APIManager+<>c__DisplayClass162_0::.ctor
0050d16ec 	cbz	x21, #188 ; -> 0x50d17a8 
0050d16f0 	mov	x0, x21
0050d16f4 	mov	x1, x20
0050d16f8 	str	x20, [x0, #24]!
0050d16fc 	bl	#-11799800 ; -> 0x4590a04 
0050d1700 	adrp	x8, #87437312 ; -> 0xa434000 
0050d1704 	ldr	x8, [x8, #1216]
0050d1708 	ldr	x0, [x8]
0050d170c 	bl	#-11799056 ; -> 0x4590cfc 
0050d1710 	mov	x1, xzr
0050d1714 	mov	x20, x0
0050d1718 	bl	#59234236 ; -> 0x894eed4 GrowSlayer.SetClientDataRequest::.ctor
0050d171c 	cbz	x20, #140 ; -> 0x50d17a8 
0050d1720 	mov	x0, x20
0050d1724 	mov	x1, x19
0050d1728 	mov	x2, xzr
0050d172c 	bl	#59234500 ; -> 0x894eff0 GrowSlayer.SetClientDataRequest::set_Content
0050d1730 	mov	x22, x21
0050d1734 	mov	x1, x20
0050d1738 	str	x20, [x22, #16]!
0050d173c 	mov	x0, x22
0050d1740 	bl	#-11799868 ; -> 0x4590a04 
0050d1744 	adrp	x8, #87162880 ; -> 0xa3f1000 
0050d1748 	ldr	x8, [x8, #2632]
0050d174c 	ldr	x0, [x8]
0050d1750 	bl	#-11799124 ; -> 0x4590cfc 
0050d1754 	adrp	x8, #87437312 ; -> 0xa434000 
0050d1758 	mov	x1, x21
0050d175c 	mov	x3, xzr
0050d1760 	ldr	x8, [x8, #1224]
0050d1764 	mov	x19, x0
0050d1768 	ldr	x2, [x8]
0050d176c 	bl	#23457416 ; -> 0x67305f4 
0050d1770 	adrp	x8, #87150592 ; -> 0xa3ee000 
0050d1774 	ldr	x8, [x8, #3648]
0050d1778 	ldr	x20, [x22]
0050d177c 	ldr	x0, [x8]
0050d1780 	ldr	w8, [x0, #228]
0050d1784 	cbnz	w8, #8 ; -> 0x50d178c 
0050d1788 	bl	#-11799464 ; -> 0x4590be0 
0050d178c 	mov	x1, x19
0050d1790 	mov	x2, x20
0050d1794 	mov	w0, #255
0050d1798 	ldp	x20, x19, [sp, #32]
0050d179c 	ldp	x22, x21, [sp, #16]
0050d17a0 	ldr	x30, [sp], #48
0050d17a4 	b	#-64864 ; -> 0x50c1a44 APIManager::AddRequest
0050d17a8 	bl	#-11799196 ; -> 0x4590d0c 
