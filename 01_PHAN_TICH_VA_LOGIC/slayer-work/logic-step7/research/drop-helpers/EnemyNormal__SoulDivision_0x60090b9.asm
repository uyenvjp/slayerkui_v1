0050fab10 	sub	sp, sp, #80
0050fab14 	str	x30, [sp, #32]
0050fab18 	stp	x22, x21, [sp, #48]
0050fab1c 	stp	x20, x19, [sp, #64]
0050fab20 	adrp	x22, #95272960 ; -> 0xabd6000 
0050fab24 	mov	w19, w2
0050fab28 	mov	w20, w1
0050fab2c 	ldrb	w8, [x22, #1327]
0050fab30 	mov	x21, x0
0050fab34 	tbnz	w8, #0, #24 ; -> 0x50fab4c 
0050fab38 	adrp	x0, #86982656 ; -> 0xa3ee000 
0050fab3c 	ldr	x0, [x0, #3080]
0050fab40 	bl	#-11968736 ; -> 0x4590a60 
0050fab44 	mov	w8, #1
0050fab48 	strb	w8, [x22, #1327]
0050fab4c 	mov	w0, #38664
0050fab50 	mov	x1, xzr
0050fab54 	bl	#-4928944 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050fab58 	tbz	w0, #0, #56 ; -> 0x50fab90 
0050fab5c 	mov	w0, #38664
0050fab60 	mov	x1, xzr
0050fab64 	bl	#-4928780 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050fab68 	cbz	x0, #212 ; -> 0x50fac3c 
0050fab6c 	mov	x1, x21
0050fab70 	mov	w2, w20
0050fab74 	mov	w3, w19
0050fab78 	ldp	x20, x19, [sp, #64]
0050fab7c 	ldr	x30, [sp, #32]
0050fab80 	ldp	x22, x21, [sp, #48]
0050fab84 	mov	x4, xzr
0050fab88 	add	sp, sp, #80
0050fab8c 	b	#-5223556 ; -> 0x4bff708 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2539
0050fab90 	adrp	x21, #86982656 ; -> 0xa3ee000 
0050fab94 	mov	w8, #13
0050fab98 	add	x1, sp, #44
0050fab9c 	ldr	x21, [x21, #3080]
0050faba0 	str	w8, [sp, #44]
0050faba4 	ldr	x0, [x21]
0050faba8 	bl	#-11968448 ; -> 0x4590be8 
0050fabac 	ldr	x8, [x21]
0050fabb0 	mov	x1, x0
0050fabb4 	mov	x22, #-1
0050fabb8 	add	x0, sp, #8
0050fabbc 	mov	x2, xzr
0050fabc0 	str	w20, [sp, #24]
0050fabc4 	stp	x8, x22, [sp, #8]
0050fabc8 	bl	#64704056 ; -> 0x8eafa00 System.Enum::Equals
0050fabcc 	tbz	w0, #0, #16 ; -> 0x50fabdc 
0050fabd0 	cmp	w19, #0
0050fabd4 	mov	w8, #14
0050fabd8 	b	#76 ; -> 0x50fac24 
0050fabdc 	ldr	x0, [x21]
0050fabe0 	mov	w8, #14
0050fabe4 	add	x1, sp, #44
0050fabe8 	str	w8, [sp, #44]
0050fabec 	bl	#-11968516 ; -> 0x4590be8 
0050fabf0 	ldr	x8, [x21]
0050fabf4 	mov	x1, x0
0050fabf8 	add	x0, sp, #8
0050fabfc 	mov	x2, xzr
0050fac00 	str	w20, [sp, #24]
0050fac04 	stp	x8, x22, [sp, #8]
0050fac08 	bl	#64703992 ; -> 0x8eafa00 System.Enum::Equals
0050fac0c 	cmp	w19, #0
0050fac10 	mov	w8, #13
0050fac14 	tbz	w0, #0, #16 ; -> 0x50fac24 
0050fac18 	mov	w9, #15
0050fac1c 	csel	w0, w9, w8, eq
0050fac20 	b	#8 ; -> 0x50fac28 
0050fac24 	cinc	w0, w8, ne
0050fac28 	ldp	x20, x19, [sp, #64]
0050fac2c 	ldr	x30, [sp, #32]
0050fac30 	ldp	x22, x21, [sp, #48]
0050fac34 	add	sp, sp, #80
0050fac38 	ret
0050fac3c 	bl	#-11968304 ; -> 0x4590d0c 
