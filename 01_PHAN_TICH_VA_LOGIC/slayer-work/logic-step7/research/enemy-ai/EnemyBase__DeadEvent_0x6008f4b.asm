0050bbdc4 	str	x30, [sp, #-32]!
0050bbdc8 	stp	x20, x19, [sp, #16]
0050bbdcc 	adrp	x20, #95531008 ; -> 0xabd6000 
0050bbdd0 	mov	x19, x0
0050bbdd4 	ldrb	w8, [x20, #728]
0050bbdd8 	tbnz	w8, #0, #24 ; -> 0x50bbdf0 
0050bbddc 	adrp	x0, #87257088 ; -> 0xa3f2000 
0050bbde0 	ldr	x0, [x0, #552]
0050bbde4 	bl	#-11711364 ; -> 0x4590a60 
0050bbde8 	mov	w8, #1
0050bbdec 	strb	w8, [x20, #728]
0050bbdf0 	mov	w0, #34991
0050bbdf4 	mov	x1, xzr
0050bbdf8 	bl	#-4671572 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bbdfc 	tbz	w0, #0, #40 ; -> 0x50bbe24 
0050bbe00 	mov	w0, #34991
0050bbe04 	mov	x1, xzr
0050bbe08 	bl	#-4671408 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bbe0c 	cbz	x0, #88 ; -> 0x50bbe64 
0050bbe10 	mov	x1, x19
0050bbe14 	ldp	x20, x19, [sp, #16]
0050bbe18 	mov	x2, xzr
0050bbe1c 	ldr	x30, [sp], #32
0050bbe20 	b	#-5495040 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050bbe24 	adrp	x20, #87257088 ; -> 0xa3f2000 
0050bbe28 	ldr	x20, [x20, #552]
0050bbe2c 	ldr	x0, [x20]
0050bbe30 	ldr	w8, [x0, #228]
0050bbe34 	cbnz	w8, #12 ; -> 0x50bbe40 
0050bbe38 	bl	#-11711064 ; -> 0x4590be0 
0050bbe3c 	ldr	x0, [x20]
0050bbe40 	ldr	x8, [x0, #184]
0050bbe44 	ldr	x0, [x8]
0050bbe48 	cbz	x0, #28 ; -> 0x50bbe64 
0050bbe4c 	mov	x1, x19
0050bbe50 	ldp	x20, x19, [sp, #16]
0050bbe54 	mov	w2, #1
0050bbe58 	mov	x3, xzr
0050bbe5c 	ldr	x30, [sp], #32
0050bbe60 	b	#-2578760 ; -> 0x4e46518 GameManager::EnemyRemove
0050bbe64 	bl	#-11710808 ; -> 0x4590d0c 
