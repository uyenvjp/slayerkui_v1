0050bb184 	stp	d9, d8, [sp, #-64]!
0050bb188 	str	x30, [sp, #16]
0050bb18c 	stp	x22, x21, [sp, #32]
0050bb190 	stp	x20, x19, [sp, #48]
0050bb194 	adrp	x20, #95531008 ; -> 0xabd6000 
0050bb198 	mov	x19, x0
0050bb19c 	ldrb	w8, [x20, #715]
0050bb1a0 	tbnz	w8, #0, #24 ; -> 0x50bb1b8 
0050bb1a4 	adrp	x0, #87220224 ; -> 0xa3e9000 
0050bb1a8 	ldr	x0, [x0, #3552]
0050bb1ac 	bl	#-11708236 ; -> 0x4590a60 
0050bb1b0 	mov	w8, #1
0050bb1b4 	strb	w8, [x20, #715]
0050bb1b8 	mov	w0, #31628
0050bb1bc 	mov	x1, xzr
0050bb1c0 	bl	#-4668444 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bb1c4 	tbz	w0, #0, #48 ; -> 0x50bb1f4 
0050bb1c8 	mov	w0, #31628
0050bb1cc 	mov	x1, xzr
0050bb1d0 	bl	#-4668280 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bb1d4 	cbz	x0, #372 ; -> 0x50bb348 
0050bb1d8 	mov	x1, x19
0050bb1dc 	ldp	x20, x19, [sp, #48]
0050bb1e0 	ldp	x22, x21, [sp, #32]
0050bb1e4 	mov	x2, xzr
0050bb1e8 	ldr	x30, [sp, #16]
0050bb1ec 	ldp	d9, d8, [sp], #64
0050bb1f0 	b	#-5491920 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050bb1f4 	ldrb	w8, [x19, #514]
0050bb1f8 	cbnz	w8, #172 ; -> 0x50bb2a4 
0050bb1fc 	ldr	x0, [x19, #312]
0050bb200 	cbz	x0, #328 ; -> 0x50bb348 
0050bb204 	mov	w1, #7
0050bb208 	mov	x2, xzr
0050bb20c 	bl	#-3547516 ; -> 0x4d59090 DatabaseManager::SpiritSkillValue
0050bb210 	fcmp	s0, #0.0
0050bb214 	b.le	#144 ; -> 0x50bb2a4 
0050bb218 	ldr	x0, [x19, #312]
0050bb21c 	cbz	x0, #300 ; -> 0x50bb348 
0050bb220 	mov	w1, #7
0050bb224 	mov	x2, xzr
0050bb228 	fmov	s8, s0
0050bb22c 	bl	#-3547836 ; -> 0x4d58f70 DatabaseManager::SpiritSkillCheck
0050bb230 	tbz	w0, #0, #116 ; -> 0x50bb2a4 
0050bb234 	mov	x0, x19
0050bb238 	mov	x1, xzr
0050bb23c 	bl	#-674812 ; -> 0x5016640 Character::get_Hp_cur
0050bb240 	adrp	x22, #87220224 ; -> 0xa3e9000 
0050bb244 	mov	x20, x0
0050bb248 	mov	x21, x1
0050bb24c 	ldr	x22, [x22, #3552]
0050bb250 	ldr	x0, [x22]
0050bb254 	ldr	w8, [x0, #228]
0050bb258 	cbnz	w8, #8 ; -> 0x50bb260 
0050bb25c 	bl	#-11708028 ; -> 0x4590be0 
0050bb260 	mov	x0, x20
0050bb264 	mov	x1, x21
0050bb268 	mov	x2, xzr
0050bb26c 	bl	#67904360 ; -> 0x917d5d4 System.Numerics.BigInteger::op_Explicit
0050bb270 	mov	x0, x19
0050bb274 	mov	x1, xzr
0050bb278 	fmov	d9, d0
0050bb27c 	bl	#-675064 ; -> 0x5016584 Character::get_Hp_max
0050bb280 	mov	x2, xzr
0050bb284 	bl	#67904336 ; -> 0x917d5d4 System.Numerics.BigInteger::op_Explicit
0050bb288 	fdiv	d0, d9, d0
0050bb28c 	fcvt	d1, s8
0050bb290 	adrp	x8, #-51986432 ; -> 0x1f27000 
0050bb294 	ldr	d2, [x8, #3968]
0050bb298 	fmul	d1, d1, d2
0050bb29c 	fcmp	d0, d1
0050bb2a0 	b.ls	#24 ; -> 0x50bb2b8 
0050bb2a4 	ldp	x20, x19, [sp, #48]
0050bb2a8 	ldr	x30, [sp, #16]
0050bb2ac 	ldp	x22, x21, [sp, #32]
0050bb2b0 	ldp	d9, d8, [sp], #64
0050bb2b4 	ret
0050bb2b8 	ldrb	w8, [x19, #680]
0050bb2bc 	cbz	w8, #40 ; -> 0x50bb2e4 
0050bb2c0 	mov	x0, x19
0050bb2c4 	mov	x1, xzr
0050bb2c8 	bl	#-674952 ; -> 0x5016640 Character::get_Hp_cur
0050bb2cc 	mov	x2, x0
0050bb2d0 	mov	x3, x1
0050bb2d4 	mov	x0, x19
0050bb2d8 	mov	x1, x2
0050bb2dc 	mov	x2, x3
0050bb2e0 	bl	#-3420 ; -> 0x50ba584 EnemyBase::DmgStackEvent
0050bb2e4 	ldr	x0, [x22]
0050bb2e8 	ldr	w8, [x0, #228]
0050bb2ec 	cbnz	w8, #8 ; -> 0x50bb2f4 
0050bb2f0 	bl	#-11708176 ; -> 0x4590be0 
0050bb2f4 	mov	w0, wzr
0050bb2f8 	mov	x1, xzr
0050bb2fc 	bl	#67902632 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bb300 	mov	x2, x0
0050bb304 	mov	x3, x1
0050bb308 	mov	x0, x19
0050bb30c 	mov	x1, x2
0050bb310 	mov	x2, x3
0050bb314 	mov	x3, xzr
0050bb318 	bl	#-674956 ; -> 0x501668c Character::set_Hp_cur
0050bb31c 	ldr	x0, [x19, #312]
0050bb320 	cbz	x0, #40 ; -> 0x50bb348 
0050bb324 	mov	x1, x19
0050bb328 	ldp	x20, x19, [sp, #48]
0050bb32c 	ldp	x22, x21, [sp, #32]
0050bb330 	fmov	s0, #1.00000000
0050bb334 	ldr	x30, [sp, #16]
0050bb338 	mov	w2, #7
0050bb33c 	mov	x3, xzr
0050bb340 	ldp	d9, d8, [sp], #64
0050bb344 	b	#-3548416 ; -> 0x4d58e44 DatabaseManager::SpiritSkillEffect_EnemyTarget
0050bb348 	bl	#-11707964 ; -> 0x4590d0c 
