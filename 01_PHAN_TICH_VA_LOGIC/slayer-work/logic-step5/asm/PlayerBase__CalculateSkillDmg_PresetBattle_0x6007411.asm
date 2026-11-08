004eedb3c 	sub	sp, sp, #176
004eedb40 	str	d8, [sp, #96]
004eedb44 	stp	x30, x25, [sp, #112]
004eedb48 	stp	x24, x23, [sp, #128]
004eedb4c 	stp	x22, x21, [sp, #144]
004eedb50 	stp	x20, x19, [sp, #160]
004eedb54 	fmov	s8, s0
004eedb58 	adrp	x24, #97419264 ; -> 0xabd5000 
004eedb5c 	mov	w20, w4
004eedb60 	ldrb	w8, [x24, #1553]
004eedb64 	mov	w19, w3
004eedb68 	mov	w23, w2
004eedb6c 	mov	x22, x1
004eedb70 	mov	x21, x0
004eedb74 	tbnz	w8, #0, #24 ; -> 0x4eedb8c 
004eedb78 	adrp	x0, #89112576 ; -> 0xa3e9000 
004eedb7c 	ldr	x0, [x0, #3552]
004eedb80 	bl	#-9818400 ; -> 0x4590a60 
004eedb84 	mov	w8, #1
004eedb88 	strb	w8, [x24, #1553]
004eedb8c 	movi	v0.2d, #0000000000000000
004eedb90 	mov	w0, #31574
004eedb94 	mov	x1, xzr
004eedb98 	str	xzr, [sp, #80]
004eedb9c 	stp	q0, q0, [sp, #48]
004eedba0 	bl	#-2778620 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eedba4 	tbz	w0, #0, #76 ; -> 0x4eedbf0 
004eedba8 	mov	w0, #31574
004eedbac 	mov	x1, xzr
004eedbb0 	bl	#-2778456 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eedbb4 	cbz	x0, #660 ; -> 0x4eede48 
004eedbb8 	and	w5, w20, #0x1
004eedbbc 	mov	x1, x21
004eedbc0 	mov	x2, x22
004eedbc4 	mov	w3, w23
004eedbc8 	mov	w4, w19
004eedbcc 	fmov	s0, s8
004eedbd0 	ldp	x20, x19, [sp, #160]
004eedbd4 	ldr	d8, [sp, #96]
004eedbd8 	ldp	x22, x21, [sp, #144]
004eedbdc 	mov	x6, xzr
004eedbe0 	ldp	x24, x23, [sp, #128]
004eedbe4 	ldp	x30, x25, [sp, #112]
004eedbe8 	add	sp, sp, #176
004eedbec 	b	#-3188980 ; -> 0x4be32f8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1970
004eedbf0 	cmp	w23, #2
004eedbf4 	b.eq	#28 ; -> 0x4eedc10 
004eedbf8 	cmp	w23, #1
004eedbfc 	b.eq	#12 ; -> 0x4eedc08 
004eedc00 	add	x8, x21, #744
004eedc04 	b	#16 ; -> 0x4eedc14 
004eedc08 	add	x8, x21, #784
004eedc0c 	b	#8 ; -> 0x4eedc14 
004eedc10 	add	x8, x21, #824
004eedc14 	ldp	q0, q1, [x8]
004eedc18 	mov	x0, sp
004eedc1c 	ldr	x8, [x8, #32]
004eedc20 	mov	x1, xzr
004eedc24 	stp	q0, q1, [sp, #48]
004eedc28 	str	x8, [sp, #80]
004eedc2c 	stp	q0, q1, [sp]
004eedc30 	str	x8, [sp, #32]
004eedc34 	bl	#-3787780 ; -> 0x4b51030 SilentBigInt::op_Implicit
004eedc38 	mov	x23, x0
004eedc3c 	mov	x24, x1
004eedc40 	mov	x0, x21
004eedc44 	mov	w1, w19
004eedc48 	bl	#73924 ; -> 0x4effd0c PlayerBase::IsElementDmgType
004eedc4c 	tbz	w0, #0, #472 ; -> 0x4eede24 
004eedc50 	adrp	x25, #89112576 ; -> 0xa3e9000 
004eedc54 	ldr	x25, [x25, #3552]
004eedc58 	ldr	x0, [x25]
004eedc5c 	ldr	w8, [x0, #228]
004eedc60 	cbnz	w8, #8 ; -> 0x4eedc68 
004eedc64 	bl	#-9818244 ; -> 0x4590be0 
004eedc68 	mov	w8, #1120403456
004eedc6c 	mov	x1, xzr
004eedc70 	fmov	s0, w8
004eedc74 	mov	w8, #2139095040
004eedc78 	fmov	s1, w8
004eedc7c 	mov	x8, #-9223372036854775808
004eedc80 	fmul	s0, s8, s0
004eedc84 	fcvtzs	x9, s0
004eedc88 	fcmp	s0, s1
004eedc8c 	csel	x0, x8, x9, eq
004eedc90 	bl	#69790860 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eedc94 	mov	x2, x0
004eedc98 	mov	x3, x1
004eedc9c 	mov	x0, x23
004eedca0 	mov	x1, x24
004eedca4 	mov	x4, xzr
004eedca8 	bl	#69782428 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eedcac 	mov	x23, x0
004eedcb0 	mov	x24, x1
004eedcb4 	mov	w0, #10000
004eedcb8 	mov	x1, xzr
004eedcbc 	bl	#69792488 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eedcc0 	mov	x2, x0
004eedcc4 	mov	x3, x1
004eedcc8 	mov	x0, x23
004eedccc 	mov	x1, x24
004eedcd0 	mov	x4, xzr
004eedcd4 	bl	#69782884 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eedcd8 	cbz	x22, #368 ; -> 0x4eede48 
004eedcdc 	mov	x23, x0
004eedce0 	mov	x24, x1
004eedce4 	mov	x0, x22
004eedce8 	mov	w1, w19
004eedcec 	mov	x2, xzr
004eedcf0 	bl	#3610312 ; -> 0x525f3b8 PresetBattleStat::GetElementDmg
004eedcf4 	fcmp	s0, #0.0
004eedcf8 	b.le	#148 ; -> 0x4eedd8c 
004eedcfc 	fmov	s8, s0
004eedd00 	ldr	x0, [x25]
004eedd04 	ldr	w8, [x0, #228]
004eedd08 	cbnz	w8, #8 ; -> 0x4eedd10 
004eedd0c 	bl	#-9818412 ; -> 0x4590be0 
004eedd10 	mov	w8, #1120403456
004eedd14 	mov	x1, xzr
004eedd18 	fmov	s0, w8
004eedd1c 	mov	w8, #2139095040
004eedd20 	fadd	s1, s8, s0
004eedd24 	fmul	s0, s1, s0
004eedd28 	fmov	s1, w8
004eedd2c 	mov	x8, #-9223372036854775808
004eedd30 	fcvtzs	x9, s0
004eedd34 	fcmp	s0, s1
004eedd38 	csel	x0, x8, x9, eq
004eedd3c 	bl	#69790688 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eedd40 	mov	x2, x0
004eedd44 	mov	x3, x1
004eedd48 	mov	x0, x23
004eedd4c 	mov	x1, x24
004eedd50 	mov	x4, xzr
004eedd54 	bl	#69782256 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eedd58 	mov	x22, x0
004eedd5c 	mov	x23, x1
004eedd60 	mov	w0, #10000
004eedd64 	mov	x1, xzr
004eedd68 	bl	#69792316 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eedd6c 	mov	x2, x0
004eedd70 	mov	x3, x1
004eedd74 	mov	x0, x22
004eedd78 	mov	x1, x23
004eedd7c 	mov	x4, xzr
004eedd80 	bl	#69782712 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eedd84 	mov	x23, x0
004eedd88 	mov	x24, x1
004eedd8c 	tbz	w20, #0, #152 ; -> 0x4eede24 
004eedd90 	mov	x0, x21
004eedd94 	mov	w1, w19
004eedd98 	bl	#73688 ; -> 0x4effd70 PlayerBase::GetSeasonSkillDmgBuff
004eedd9c 	ldr	x0, [x25]
004eedda0 	fmov	s8, s0
004eedda4 	ldr	w8, [x0, #228]
004eedda8 	cbnz	w8, #8 ; -> 0x4eeddb0 
004eeddac 	bl	#-9818572 ; -> 0x4590be0 
004eeddb0 	mov	w9, #2139095040
004eeddb4 	fcvtzs	w8, s8
004eeddb8 	mov	x1, xzr
004eeddbc 	fmov	s0, w9
004eeddc0 	mov	w9, #100
004eeddc4 	movk	w9, #32768, lsl #16
004eeddc8 	fcmp	s8, s0
004eeddcc 	add	w8, w8, #100
004eeddd0 	csel	w0, w9, w8, eq
004eeddd4 	bl	#69792208 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eeddd8 	mov	x2, x0
004eedddc 	mov	x3, x1
004eedde0 	mov	x0, x23
004eedde4 	mov	x1, x24
004eedde8 	mov	x4, xzr
004eeddec 	bl	#69782104 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eeddf0 	mov	x19, x0
004eeddf4 	mov	x20, x1
004eeddf8 	mov	w0, #100
004eeddfc 	mov	x1, xzr
004eede00 	bl	#69792164 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eede04 	mov	x2, x0
004eede08 	mov	x3, x1
004eede0c 	mov	x0, x19
004eede10 	mov	x1, x20
004eede14 	mov	x4, xzr
004eede18 	bl	#69782560 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eede1c 	mov	x23, x0
004eede20 	mov	x24, x1
004eede24 	mov	x0, x23
004eede28 	mov	x1, x24
004eede2c 	ldr	d8, [sp, #96]
004eede30 	ldp	x20, x19, [sp, #160]
004eede34 	ldp	x22, x21, [sp, #144]
004eede38 	ldp	x24, x23, [sp, #128]
004eede3c 	ldp	x30, x25, [sp, #112]
004eede40 	add	sp, sp, #176
004eede44 	ret
004eede48 	bl	#-9818428 ; -> 0x4590d0c 
