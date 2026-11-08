004821144 	sub	sp, sp, #80
004821148 	str	x30, [sp, #16]
00482114c 	stp	x24, x23, [sp, #32]
004821150 	stp	x22, x21, [sp, #48]
004821154 	stp	x20, x19, [sp, #64]
004821158 	adrp	x22, #104521728 ; -> 0xabcf000 
00482115c 	mov	x21, x2
004821160 	mov	x19, x1
004821164 	ldrb	w8, [x22, #1143]
004821168 	mov	w20, w0
00482116c 	tbnz	w8, #0, #24 ; -> 0x4821184 
004821170 	adrp	x0, #96239616 ; -> 0xa3e9000 
004821174 	ldr	x0, [x0, #3552]
004821178 	bl	#-2688792 ; -> 0x4590a60 
00482117c 	mov	w8, #1
004821180 	strb	w8, [x22, #1143]
004821184 	mov	w0, #1976
004821188 	mov	x1, xzr
00482118c 	bl	#4351000 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004821190 	tbz	w0, #0, #60 ; -> 0x48211cc 
004821194 	mov	w0, #1976
004821198 	mov	x1, xzr
00482119c 	bl	#4351164 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0048211a0 	cbz	x0, #188 ; -> 0x482125c 
0048211a4 	mov	w1, w20
0048211a8 	mov	x2, x19
0048211ac 	mov	x3, x21
0048211b0 	ldp	x20, x19, [sp, #64]
0048211b4 	ldr	x30, [sp, #16]
0048211b8 	ldp	x22, x21, [sp, #48]
0048211bc 	mov	x4, xzr
0048211c0 	ldp	x24, x23, [sp, #32]
0048211c4 	add	sp, sp, #80
0048211c8 	b	#3547684 ; -> 0x4b833ec IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_102
0048211cc 	cbz	x21, #144 ; -> 0x482125c 
0048211d0 	adrp	x8, #96239616 ; -> 0xa3e9000 
0048211d4 	ldr	x8, [x8, #3552]
0048211d8 	ldr	x22, [x21, #32]
0048211dc 	ldr	x0, [x8]
0048211e0 	ldr	w8, [x0, #228]
0048211e4 	cbnz	w8, #8 ; -> 0x48211ec 
0048211e8 	bl	#-2688520 ; -> 0x4590be0 
0048211ec 	mov	x0, x22
0048211f0 	mov	x1, xzr
0048211f4 	bl	#76911204 ; -> 0x917a458 System.Numerics.BigInteger::Parse
0048211f8 	mov	x22, x0
0048211fc 	ldr	x0, [x21, #40]
004821200 	mov	x23, x1
004821204 	mov	x1, xzr
004821208 	bl	#76911184 ; -> 0x917a458 System.Numerics.BigInteger::Parse
00482120c 	mov	x24, x0
004821210 	ldr	x0, [x21, #48]
004821214 	mov	x21, x1
004821218 	mov	x1, xzr
00482121c 	bl	#76911164 ; -> 0x917a458 System.Numerics.BigInteger::Parse
004821220 	mov	x6, x0
004821224 	mov	x7, x1
004821228 	mov	w0, w20
00482122c 	mov	x1, x19
004821230 	mov	x2, x22
004821234 	mov	x3, x23
004821238 	mov	x4, x24
00482123c 	mov	x5, x21
004821240 	bl	#908 ; -> 0x48215cc APIValidator::CheckValue
004821244 	ldp	x20, x19, [sp, #64]
004821248 	ldr	x30, [sp, #16]
00482124c 	ldp	x22, x21, [sp, #48]
004821250 	ldp	x24, x23, [sp, #32]
004821254 	add	sp, sp, #80
004821258 	ret
00482125c 	bl	#-2688336 ; -> 0x4590d0c 
