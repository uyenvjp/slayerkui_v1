004d780c8 	sub	sp, sp, #48
004d780cc 	stp	x30, x21, [sp, #16]
004d780d0 	stp	x20, x19, [sp, #32]
004d780d4 	adrp	x21, #98942976 ; -> 0xabd4000 
004d780d8 	mov	w19, w1
004d780dc 	mov	x20, x0
004d780e0 	ldrb	w8, [x21, #3077]
004d780e4 	tbnz	w8, #0, #24 ; -> 0x4d780fc 
004d780e8 	adrp	x0, #90853376 ; -> 0xa41d000 
004d780ec 	ldr	x0, [x0, #1104]
004d780f0 	bl	#-8287888 ; -> 0x4590a60 
004d780f4 	mov	w8, #1
004d780f8 	strb	w8, [x21, #3077]
004d780fc 	mov	w0, #1571
004d78100 	mov	x1, xzr
004d78104 	str	xzr, [sp, #8]
004d78108 	bl	#-1248100 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d7810c 	tbz	w0, #0, #48 ; -> 0x4d7813c 
004d78110 	mov	w0, #1571
004d78114 	mov	x1, xzr
004d78118 	bl	#-1247936 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d7811c 	cbz	x0, #128 ; -> 0x4d7819c 
004d78120 	mov	x1, x20
004d78124 	mov	w2, w19
004d78128 	mov	x3, xzr
004d7812c 	ldp	x20, x19, [sp, #32]
004d78130 	ldp	x30, x21, [sp, #16]
004d78134 	add	sp, sp, #48
004d78138 	b	#-2026864 ; -> 0x4b893c8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_211
004d7813c 	cmp	w19, #99
004d78140 	b.le	#24 ; -> 0x4d78158 
004d78144 	cmp	w19, #999
004d78148 	b.ls	#76 ; -> 0x4d78194 
004d7814c 	ldr	x0, [x20, #544]
004d78150 	cbnz	x0, #16 ; -> 0x4d78160 
004d78154 	b	#72 ; -> 0x4d7819c 
004d78158 	ldr	x0, [x20, #432]
004d7815c 	cbz	x0, #64 ; -> 0x4d7819c 
004d78160 	adrp	x8, #90853376 ; -> 0xa41d000 
004d78164 	add	x2, sp, #8
004d78168 	mov	w1, w19
004d7816c 	ldr	x8, [x8, #1104]
004d78170 	ldr	x3, [x8]
004d78174 	bl	#53354908 ; -> 0x805a310 
004d78178 	ldr	x8, [sp, #8]
004d7817c 	ldp	x20, x19, [sp, #32]
004d78180 	ldp	x30, x21, [sp, #16]
004d78184 	tst	w0, #0x1
004d78188 	csel	x0, x8, xzr, ne
004d7818c 	add	sp, sp, #48
004d78190 	ret
004d78194 	ldr	x0, [x20, #440]
004d78198 	cbnz	x0, #-56 ; -> 0x4d78160 
004d7819c 	bl	#-8287376 ; -> 0x4590d0c 
