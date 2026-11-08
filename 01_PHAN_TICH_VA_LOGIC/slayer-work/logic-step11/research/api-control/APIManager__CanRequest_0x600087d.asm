0050c1758 	sub	sp, sp, #48
0050c175c 	stp	x30, x21, [sp, #16]
0050c1760 	stp	x20, x19, [sp, #32]
0050c1764 	adrp	x21, #95506432 ; -> 0xabd6000 
0050c1768 	mov	w19, w1
0050c176c 	mov	w20, w0
0050c1770 	ldrb	w8, [x21, #793]
0050c1774 	tbnz	w8, #0, #60 ; -> 0x50c17b0 
0050c1778 	adrp	x0, #87216128 ; -> 0xa3ee000 
0050c177c 	ldr	x0, [x0, #3648]
0050c1780 	bl	#-11734304 ; -> 0x4590a60 
0050c1784 	adrp	x0, #87199744 ; -> 0xa3ea000 
0050c1788 	ldr	x0, [x0, #1352]
0050c178c 	bl	#-11734316 ; -> 0x4590a60 
0050c1790 	adrp	x0, #87498752 ; -> 0xa433000 
0050c1794 	ldr	x0, [x0, #1800]
0050c1798 	bl	#-11734328 ; -> 0x4590a60 
0050c179c 	adrp	x0, #87203840 ; -> 0xa3eb000 
0050c17a0 	ldr	x0, [x0, #456]
0050c17a4 	bl	#-11734340 ; -> 0x4590a60 
0050c17a8 	mov	w8, #1
0050c17ac 	strb	w8, [x21, #793]
0050c17b0 	mov	w0, #3448
0050c17b4 	mov	x1, xzr
0050c17b8 	stp	xzr, xzr, [sp]
0050c17bc 	bl	#-4694552 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c17c0 	tbz	w0, #0, #48 ; -> 0x50c17f0 
0050c17c4 	mov	w0, #3448
0050c17c8 	mov	x1, xzr
0050c17cc 	bl	#-4694388 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c17d0 	cbz	x0, #232 ; -> 0x50c18b8 
0050c17d4 	mov	w1, w20
0050c17d8 	mov	w2, w19
0050c17dc 	mov	x3, xzr
0050c17e0 	ldp	x20, x19, [sp, #32]
0050c17e4 	ldp	x30, x21, [sp, #16]
0050c17e8 	add	sp, sp, #48
0050c17ec 	b	#-5402320 ; -> 0x4b9a91c IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_538
0050c17f0 	adrp	x21, #87216128 ; -> 0xa3ee000 
0050c17f4 	ldr	x21, [x21, #3648]
0050c17f8 	ldr	x0, [x21]
0050c17fc 	ldr	w8, [x0, #228]
0050c1800 	cbnz	w8, #12 ; -> 0x50c180c 
0050c1804 	bl	#-11734052 ; -> 0x4590be0 
0050c1808 	ldr	x0, [x21]
0050c180c 	ldr	x8, [x0, #184]
0050c1810 	ldr	x0, [x8, #40]
0050c1814 	cbz	x0, #164 ; -> 0x50c18b8 
0050c1818 	adrp	x8, #87498752 ; -> 0xa433000 
0050c181c 	mov	x2, sp
0050c1820 	mov	w1, w20
0050c1824 	ldr	x8, [x8, #1800]
0050c1828 	ldr	x3, [x8]
0050c182c 	bl	#50177924 ; -> 0x809bfb0 
0050c1830 	tbz	w0, #0, #112 ; -> 0x50c18a0 
0050c1834 	adrp	x8, #87199744 ; -> 0xa3ea000 
0050c1838 	ldr	x8, [x8, #1352]
0050c183c 	ldr	x0, [x8]
0050c1840 	ldr	w8, [x0, #228]
0050c1844 	cbnz	w8, #8 ; -> 0x50c184c 
0050c1848 	bl	#-11734120 ; -> 0x4590be0 
0050c184c 	scvtf	d0, w19
0050c1850 	mov	x0, sp
0050c1854 	mov	x1, xzr
0050c1858 	bl	#64590156 ; -> 0x8e5a9a4 System.DateTimeOffset::AddSeconds
0050c185c 	adrp	x8, #87203840 ; -> 0xa3eb000 
0050c1860 	mov	x19, x0
0050c1864 	mov	x20, x1
0050c1868 	ldr	x8, [x8, #456]
0050c186c 	ldr	x0, [x8]
0050c1870 	ldr	w8, [x0, #228]
0050c1874 	cbnz	w8, #8 ; -> 0x50c187c 
0050c1878 	bl	#-11734168 ; -> 0x4590be0 
0050c187c 	mov	x0, xzr
0050c1880 	bl	#3175500 ; -> 0x53c8ccc TimeApp::get_UtcNow
0050c1884 	mov	x2, x0
0050c1888 	mov	x3, x1
0050c188c 	mov	x0, x19
0050c1890 	mov	x1, x20
0050c1894 	mov	x4, xzr
0050c1898 	bl	#64602964 ; -> 0x8e5dbec System.DateTimeOffset::op_LessThan
0050c189c 	b	#8 ; -> 0x50c18a4 
0050c18a0 	mov	w0, #1
0050c18a4 	ldp	x20, x19, [sp, #32]
0050c18a8 	and	w0, w0, #0x1
0050c18ac 	ldp	x30, x21, [sp, #16]
0050c18b0 	add	sp, sp, #48
0050c18b4 	ret
0050c18b8 	bl	#-11733932 ; -> 0x4590d0c 
