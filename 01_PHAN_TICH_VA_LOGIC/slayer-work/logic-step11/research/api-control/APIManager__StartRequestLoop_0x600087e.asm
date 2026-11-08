0050c18bc 	str	x30, [sp, #-32]!
0050c18c0 	stp	x20, x19, [sp, #16]
0050c18c4 	adrp	x19, #95506432 ; -> 0xabd6000 
0050c18c8 	ldrb	w8, [x19, #794]
0050c18cc 	tbnz	w8, #0, #48 ; -> 0x50c18fc 
0050c18d0 	adrp	x0, #87498752 ; -> 0xa433000 
0050c18d4 	ldr	x0, [x0, #1808]
0050c18d8 	bl	#-11734648 ; -> 0x4590a60 
0050c18dc 	adrp	x0, #87195648 ; -> 0xa3e9000 
0050c18e0 	ldr	x0, [x0, #1352]
0050c18e4 	bl	#-11734660 ; -> 0x4590a60 
0050c18e8 	adrp	x0, #87195648 ; -> 0xa3e9000 
0050c18ec 	ldr	x0, [x0, #1344]
0050c18f0 	bl	#-11734672 ; -> 0x4590a60 
0050c18f4 	mov	w8, #1
0050c18f8 	strb	w8, [x19, #794]
0050c18fc 	mov	w0, #939
0050c1900 	mov	x1, xzr
0050c1904 	bl	#-4694880 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c1908 	tbz	w0, #0, #36 ; -> 0x50c192c 
0050c190c 	mov	w0, #939
0050c1910 	mov	x1, xzr
0050c1914 	bl	#-4694716 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c1918 	cbz	x0, #108 ; -> 0x50c1984 
0050c191c 	ldp	x20, x19, [sp, #16]
0050c1920 	mov	x1, xzr
0050c1924 	ldr	x30, [sp], #32
0050c1928 	b	#-5513960 ; -> 0x4b7f640 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_22
0050c192c 	adrp	x8, #87195648 ; -> 0xa3e9000 
0050c1930 	adrp	x19, #87498752 ; -> 0xa433000 
0050c1934 	adrp	x20, #87195648 ; -> 0xa3e9000 
0050c1938 	ldr	x8, [x8, #1352]
0050c193c 	ldr	x19, [x19, #1808]
0050c1940 	ldr	x20, [x20, #1344]
0050c1944 	ldr	x0, [x8]
0050c1948 	bl	#-11734092 ; -> 0x4590cfc 
0050c194c 	ldr	x2, [x19]
0050c1950 	mov	x1, xzr
0050c1954 	mov	x3, xzr
0050c1958 	mov	x19, x0
0050c195c 	bl	#23536584 ; -> 0x6733d24 
0050c1960 	ldr	x0, [x20]
0050c1964 	ldr	w8, [x0, #228]
0050c1968 	cbnz	w8, #8 ; -> 0x50c1970 
0050c196c 	bl	#-11734412 ; -> 0x4590be0 
0050c1970 	mov	x0, x19
0050c1974 	ldp	x20, x19, [sp, #16]
0050c1978 	mov	x1, xzr
0050c197c 	ldr	x30, [sp], #32
0050c1980 	b	#71101116 ; -> 0x949043c Cysharp.Threading.Tasks.UniTask::Void
0050c1984 	bl	#-11734136 ; -> 0x4590d0c 
