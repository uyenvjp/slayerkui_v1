0050f181c 	stp	x30, x21, [sp, #-32]!
0050f1820 	stp	x20, x19, [sp, #16]
0050f1824 	adrp	x20, #95309824 ; -> 0xabd6000 
0050f1828 	mov	x19, x0
0050f182c 	ldrb	w8, [x20, #1265]
0050f1830 	tbnz	w8, #0, #48 ; -> 0x50f1860 
0050f1834 	adrp	x0, #86999040 ; -> 0xa3e9000 
0050f1838 	ldr	x0, [x0, #1384]
0050f183c 	bl	#-11931100 ; -> 0x4590a60 
0050f1840 	adrp	x0, #87023616 ; -> 0xa3ef000 
0050f1844 	ldr	x0, [x0, #3688]
0050f1848 	bl	#-11931112 ; -> 0x4590a60 
0050f184c 	adrp	x0, #87035904 ; -> 0xa3f2000 
0050f1850 	ldr	x0, [x0, #552]
0050f1854 	bl	#-11931124 ; -> 0x4590a60 
0050f1858 	mov	w8, #1
0050f185c 	strb	w8, [x20, #1265]
0050f1860 	mov	w0, #38549
0050f1864 	mov	x1, xzr
0050f1868 	bl	#-4891332 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050f186c 	tbz	w0, #0, #40 ; -> 0x50f1894 
0050f1870 	mov	w0, #38549
0050f1874 	mov	x1, xzr
0050f1878 	bl	#-4891168 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050f187c 	cbz	x0, #304 ; -> 0x50f19ac 
0050f1880 	mov	x1, x19
0050f1884 	ldp	x20, x19, [sp, #16]
0050f1888 	mov	x2, xzr
0050f188c 	ldp	x30, x21, [sp], #32
0050f1890 	b	#-5714800 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050f1894 	adrp	x20, #86999040 ; -> 0xa3e9000 
0050f1898 	ldr	x20, [x20, #1384]
0050f189c 	ldr	x0, [x20]
0050f18a0 	ldr	w8, [x0, #228]
0050f18a4 	cbnz	w8, #12 ; -> 0x50f18b0 
0050f18a8 	bl	#-11930824 ; -> 0x4590be0 
0050f18ac 	ldr	x0, [x20]
0050f18b0 	ldr	x8, [x0, #184]
0050f18b4 	ldr	x8, [x8, #216]
0050f18b8 	cbz	x8, #244 ; -> 0x50f19ac 
0050f18bc 	ldr	x9, [x8, #24]
0050f18c0 	ldr	x0, [x8, #64]
0050f18c4 	ldr	x1, [x8, #40]
0050f18c8 	blr	x9
0050f18cc 	adrp	x21, #87023616 ; -> 0xa3ef000 
0050f18d0 	mov	x0, x19
0050f18d4 	mov	x1, xzr
0050f18d8 	ldr	x21, [x21, #3688]
0050f18dc 	ldr	x8, [x21]
0050f18e0 	ldr	x8, [x8, #184]
0050f18e4 	ldr	x20, [x8]
0050f18e8 	bl	#76606712 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f18ec 	cbz	x20, #192 ; -> 0x50f19ac 
0050f18f0 	fmov	s0, #1.00000000
0050f18f4 	mov	x1, x0
0050f18f8 	mov	x0, x20
0050f18fc 	mov	x2, xzr
0050f1900 	bl	#-4092140 ; -> 0x4d0a814 EffectManager::BoxClearEffect
0050f1904 	mov	x0, x19
0050f1908 	bl	#168 ; -> 0x50f19b0 EnemyBox::ItemDrop
0050f190c 	ldr	x8, [x21]
0050f1910 	mov	x0, x19
0050f1914 	mov	x1, xzr
0050f1918 	ldr	x8, [x8, #184]
0050f191c 	ldr	x20, [x8]
0050f1920 	bl	#76606656 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f1924 	cbz	x20, #136 ; -> 0x50f19ac 
0050f1928 	fmov	s0, #1.00000000
0050f192c 	mov	x1, x0
0050f1930 	mov	x0, x20
0050f1934 	mov	x2, xzr
0050f1938 	bl	#-4094992 ; -> 0x4d09d28 EffectManager::DeadEffect
0050f193c 	ldr	x8, [x21]
0050f1940 	mov	x0, x19
0050f1944 	mov	x1, xzr
0050f1948 	ldr	x8, [x8, #184]
0050f194c 	ldr	x20, [x8]
0050f1950 	bl	#76606608 ; -> 0x9a005e0 UnityEngine.Component::get_transform
0050f1954 	cbz	x20, #88 ; -> 0x50f19ac 
0050f1958 	fmov	s0, #8.00000000
0050f195c 	mov	x1, x0
0050f1960 	mov	x0, x20
0050f1964 	mov	x2, xzr
0050f1968 	bl	#-4093248 ; -> 0x4d0a428 EffectManager::SlashEffect
0050f196c 	adrp	x20, #87035904 ; -> 0xa3f2000 
0050f1970 	ldr	x20, [x20, #552]
0050f1974 	ldr	x0, [x20]
0050f1978 	ldr	w8, [x0, #228]
0050f197c 	cbnz	w8, #12 ; -> 0x50f1988 
0050f1980 	bl	#-11931040 ; -> 0x4590be0 
0050f1984 	ldr	x0, [x20]
0050f1988 	ldr	x8, [x0, #184]
0050f198c 	ldr	x0, [x8]
0050f1990 	cbz	x0, #28 ; -> 0x50f19ac 
0050f1994 	mov	x1, x19
0050f1998 	ldp	x20, x19, [sp, #16]
0050f199c 	mov	w2, #1
0050f19a0 	mov	x3, xzr
0050f19a4 	ldp	x30, x21, [sp], #32
0050f19a8 	b	#-2798256 ; -> 0x4e466f8 GameManager::Enemy_Dead
0050f19ac 	bl	#-11930784 ; -> 0x4590d0c 
