00501bcd4 	stp	x30, x21, [sp, #-32]!
00501bcd8 	stp	x20, x19, [sp, #16]
00501bcdc 	adrp	x21, #96182272 ; -> 0xabd5000 
00501bce0 	mov	x19, x1
00501bce4 	mov	w20, w0
00501bce8 	ldrb	w8, [x21, #3709]
00501bcec 	tbnz	w8, #0, #36 ; -> 0x501bd10 
00501bcf0 	adrp	x0, #87900160 ; -> 0xa3ef000 
00501bcf4 	ldr	x0, [x0, #624]
00501bcf8 	bl	#-11055768 ; -> 0x4590a60 
00501bcfc 	adrp	x0, #88117248 ; -> 0xa424000 
00501bd00 	ldr	x0, [x0, #1192]
00501bd04 	bl	#-11055780 ; -> 0x4590a60 
00501bd08 	mov	w8, #1
00501bd0c 	strb	w8, [x21, #3709]
00501bd10 	mov	w0, #2137
00501bd14 	mov	x1, xzr
00501bd18 	bl	#-4015988 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501bd1c 	tbz	w0, #0, #44 ; -> 0x501bd48 
00501bd20 	mov	w0, #2137
00501bd24 	mov	x1, xzr
00501bd28 	bl	#-4015824 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501bd2c 	cbz	x0, #116 ; -> 0x501bda0 
00501bd30 	mov	w1, w20
00501bd34 	mov	x2, x19
00501bd38 	mov	x3, xzr
00501bd3c 	ldp	x20, x19, [sp, #16]
00501bd40 	ldp	x30, x21, [sp], #32
00501bd44 	b	#-4770468 ; -> 0x4b8f2a0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_324
00501bd48 	adrp	x21, #87900160 ; -> 0xa3ef000 
00501bd4c 	ldr	x21, [x21, #624]
00501bd50 	ldr	x0, [x21]
00501bd54 	ldr	w8, [x0, #228]
00501bd58 	cbnz	w8, #12 ; -> 0x501bd64 
00501bd5c 	bl	#-11055484 ; -> 0x4590be0 
00501bd60 	ldr	x0, [x21]
00501bd64 	ldr	x8, [x0, #184]
00501bd68 	ldr	x0, [x8]
00501bd6c 	cbz	x0, #52 ; -> 0x501bda0 
00501bd70 	adrp	x8, #88117248 ; -> 0xa424000 
00501bd74 	mov	w1, w20
00501bd78 	ldr	x8, [x8, #1192]
00501bd7c 	ldr	x2, [x8]
00501bd80 	bl	#50915156 ; -> 0x80aa4d4 
00501bd84 	cbz	x0, #28 ; -> 0x501bda0 
00501bd88 	ldr	x8, [x0]
00501bd8c 	mov	x1, x19
00501bd90 	ldp	x20, x19, [sp, #16]
00501bd94 	ldp	x3, x2, [x8, #392]
00501bd98 	ldp	x30, x21, [sp], #32
00501bd9c 	br	x3
00501bda0 	bl	#-11055252 ; -> 0x4590d0c 
