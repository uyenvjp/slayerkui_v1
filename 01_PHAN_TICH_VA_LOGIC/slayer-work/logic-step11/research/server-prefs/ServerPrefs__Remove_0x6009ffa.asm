0051f16d0 	str	x30, [sp, #-32]!
0051f16d4 	stp	x20, x19, [sp, #16]
0051f16d8 	adrp	x20, #94261248 ; -> 0xabd6000 
0051f16dc 	mov	x19, x0
0051f16e0 	ldrb	w8, [x20, #3162]
0051f16e4 	tbnz	w8, #0, #48 ; -> 0x51f1714 
0051f16e8 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f16ec 	ldr	x0, [x0, #168]
0051f16f0 	bl	#-12979344 ; -> 0x4590a60 
0051f16f4 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f16f8 	ldr	x0, [x0, #176]
0051f16fc 	bl	#-12979356 ; -> 0x4590a60 
0051f1700 	adrp	x0, #85979136 ; -> 0xa3f0000 
0051f1704 	ldr	x0, [x0, #2048]
0051f1708 	bl	#-12979368 ; -> 0x4590a60 
0051f170c 	mov	w8, #1
0051f1710 	strb	w8, [x20, #3162]
0051f1714 	mov	w0, #41803
0051f1718 	mov	x1, xzr
0051f171c 	bl	#-5939576 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f1720 	tbz	w0, #0, #40 ; -> 0x51f1748 
0051f1724 	mov	w0, #41803
0051f1728 	mov	x1, xzr
0051f172c 	bl	#-5939412 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f1730 	cbz	x0, #160 ; -> 0x51f17d0 
0051f1734 	mov	x1, x19
0051f1738 	ldp	x20, x19, [sp, #16]
0051f173c 	mov	x2, xzr
0051f1740 	ldr	x30, [sp], #32
0051f1744 	b	#-6763044 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0051f1748 	adrp	x20, #85979136 ; -> 0xa3f0000 
0051f174c 	ldr	x20, [x20, #2048]
0051f1750 	ldr	x0, [x20]
0051f1754 	ldr	w8, [x0, #228]
0051f1758 	cbnz	w8, #12 ; -> 0x51f1764 
0051f175c 	bl	#-12979068 ; -> 0x4590be0 
0051f1760 	ldr	x0, [x20]
0051f1764 	ldr	x8, [x0, #184]
0051f1768 	ldr	x0, [x8]
0051f176c 	cbz	x0, #100 ; -> 0x51f17d0 
0051f1770 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1774 	mov	x1, x19
0051f1778 	ldr	x8, [x8, #168]
0051f177c 	ldr	x2, [x8]
0051f1780 	bl	#50033988 ; -> 0x81a8cc4 
0051f1784 	tbz	w0, #0, #64 ; -> 0x51f17c4 
0051f1788 	ldr	x0, [x20]
0051f178c 	ldr	w8, [x0, #228]
0051f1790 	cbnz	w8, #12 ; -> 0x51f179c 
0051f1794 	bl	#-12979124 ; -> 0x4590be0 
0051f1798 	ldr	x0, [x20]
0051f179c 	ldr	x8, [x0, #184]
0051f17a0 	ldr	x0, [x8]
0051f17a4 	cbz	x0, #44 ; -> 0x51f17d0 
0051f17a8 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f17ac 	mov	x1, x19
0051f17b0 	ldr	x8, [x8, #176]
0051f17b4 	ldp	x20, x19, [sp, #16]
0051f17b8 	ldr	x2, [x8]
0051f17bc 	ldr	x30, [sp], #32
0051f17c0 	b	#50038828 ; -> 0x81a9fec 
0051f17c4 	ldp	x20, x19, [sp, #16]
0051f17c8 	ldr	x30, [sp], #32
0051f17cc 	ret
0051f17d0 	bl	#-12978884 ; -> 0x4590d0c 
