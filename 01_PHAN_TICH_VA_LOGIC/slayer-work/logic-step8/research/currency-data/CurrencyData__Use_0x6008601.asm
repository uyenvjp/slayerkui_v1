00501bda4 	stp	x30, x21, [sp, #-32]!
00501bda8 	stp	x20, x19, [sp, #16]
00501bdac 	adrp	x21, #96182272 ; -> 0xabd5000 
00501bdb0 	mov	x19, x1
00501bdb4 	mov	w20, w0
00501bdb8 	ldrb	w8, [x21, #3710]
00501bdbc 	tbnz	w8, #0, #36 ; -> 0x501bde0 
00501bdc0 	adrp	x0, #87900160 ; -> 0xa3ef000 
00501bdc4 	ldr	x0, [x0, #624]
00501bdc8 	bl	#-11055976 ; -> 0x4590a60 
00501bdcc 	adrp	x0, #88117248 ; -> 0xa424000 
00501bdd0 	ldr	x0, [x0, #1192]
00501bdd4 	bl	#-11055988 ; -> 0x4590a60 
00501bdd8 	mov	w8, #1
00501bddc 	strb	w8, [x21, #3710]
00501bde0 	mov	w0, #2849
00501bde4 	mov	x1, xzr
00501bde8 	bl	#-4016196 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501bdec 	tbz	w0, #0, #44 ; -> 0x501be18 
00501bdf0 	mov	w0, #2849
00501bdf4 	mov	x1, xzr
00501bdf8 	bl	#-4016032 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501bdfc 	cbz	x0, #116 ; -> 0x501be70 
00501be00 	mov	w1, w20
00501be04 	mov	x2, x19
00501be08 	mov	x3, xzr
00501be0c 	ldp	x20, x19, [sp, #16]
00501be10 	ldp	x30, x21, [sp], #32
00501be14 	b	#-4770676 ; -> 0x4b8f2a0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_324
00501be18 	adrp	x21, #87900160 ; -> 0xa3ef000 
00501be1c 	ldr	x21, [x21, #624]
00501be20 	ldr	x0, [x21]
00501be24 	ldr	w8, [x0, #228]
00501be28 	cbnz	w8, #12 ; -> 0x501be34 
00501be2c 	bl	#-11055692 ; -> 0x4590be0 
00501be30 	ldr	x0, [x21]
00501be34 	ldr	x8, [x0, #184]
00501be38 	ldr	x0, [x8]
00501be3c 	cbz	x0, #52 ; -> 0x501be70 
00501be40 	adrp	x8, #88117248 ; -> 0xa424000 
00501be44 	mov	w1, w20
00501be48 	ldr	x8, [x8, #1192]
00501be4c 	ldr	x2, [x8]
00501be50 	bl	#50914948 ; -> 0x80aa4d4 
00501be54 	cbz	x0, #28 ; -> 0x501be70 
00501be58 	ldr	x8, [x0]
00501be5c 	mov	x1, x19
00501be60 	ldp	x20, x19, [sp, #16]
00501be64 	ldp	x3, x2, [x8, #408]
00501be68 	ldp	x30, x21, [sp], #32
00501be6c 	br	x3
00501be70 	bl	#-11055460 ; -> 0x4590d0c 
