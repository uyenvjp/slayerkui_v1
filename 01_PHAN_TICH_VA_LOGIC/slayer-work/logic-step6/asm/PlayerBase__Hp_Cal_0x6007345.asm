004ee8fa4 	stp	d9, d8, [sp, #-96]!
004ee8fa8 	stp	x29, x30, [sp, #16]
004ee8fac 	stp	x26, x25, [sp, #32]
004ee8fb0 	stp	x24, x23, [sp, #48]
004ee8fb4 	stp	x22, x21, [sp, #64]
004ee8fb8 	stp	x20, x19, [sp, #80]
004ee8fbc 	sub	sp, sp, #2400
004ee8fc0 	adrp	x20, #97439744 ; -> 0xabd5000 
004ee8fc4 	mov	x19, x0
004ee8fc8 	ldrb	w8, [x20, #1452]
004ee8fcc 	tbnz	w8, #0, #36 ; -> 0x4ee8ff0 
004ee8fd0 	adrp	x0, #89133056 ; -> 0xa3e9000 
004ee8fd4 	ldr	x0, [x0, #3552]
004ee8fd8 	bl	#-9799032 ; -> 0x4590a60 
004ee8fdc 	adrp	x0, #89124864 ; -> 0xa3e7000 
004ee8fe0 	ldr	x0, [x0, #1192]
004ee8fe4 	bl	#-9799044 ; -> 0x4590a60 
004ee8fe8 	mov	w8, #1
004ee8fec 	strb	w8, [x20, #1452]
004ee8ff0 	mov	w0, #2361
004ee8ff4 	mov	x1, xzr
004ee8ff8 	bl	#-2759252 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ee8ffc 	tbz	w0, #0, #60 ; -> 0x4ee9038 
004ee9000 	mov	w0, #2361
004ee9004 	mov	x1, xzr
004ee9008 	bl	#-2759088 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ee900c 	cbz	x0, #6240 ; -> 0x4eea86c 
004ee9010 	mov	x1, x19
004ee9014 	mov	x2, xzr
004ee9018 	add	sp, sp, #2400
004ee901c 	ldp	x20, x19, [sp, #80]
004ee9020 	ldp	x22, x21, [sp, #64]
004ee9024 	ldp	x24, x23, [sp, #48]
004ee9028 	ldp	x26, x25, [sp, #32]
004ee902c 	ldp	x29, x30, [sp, #16]
004ee9030 	ldp	d9, d8, [sp], #96
004ee9034 	b	#-3582740 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ee9038 	mov	x0, x19
004ee903c 	bl	#18960 ; -> 0x4eeda4c PlayerBase::GetPresetBattleStat
004ee9040 	cbz	x0, #44 ; -> 0x4ee906c 
004ee9044 	mov	x1, x0
004ee9048 	mov	x0, x19
004ee904c 	add	sp, sp, #2400
004ee9050 	ldp	x20, x19, [sp, #80]
004ee9054 	ldp	x22, x21, [sp, #64]
004ee9058 	ldp	x24, x23, [sp, #48]
004ee905c 	ldp	x26, x25, [sp, #32]
004ee9060 	ldp	x29, x30, [sp, #16]
004ee9064 	ldp	d9, d8, [sp], #96
004ee9068 	b	#36800 ; -> 0x4ef2028 PlayerBase::Hp_Cal_PresetBattle
004ee906c 	ldr	x20, [x19, #1696]
004ee9070 	ldr	x21, [x19, #1704]
004ee9074 	mov	x0, x19
004ee9078 	bl	#31996 ; -> 0x4ef0d74 PlayerBase::get_HpBase
004ee907c 	adrp	x24, #89128960 ; -> 0xa3e9000 
004ee9080 	mov	x22, x0
004ee9084 	ldr	x24, [x24, #3552]
004ee9088 	ldr	x8, [x24]
004ee908c 	ldr	w9, [x8, #228]
004ee9090 	cbnz	w9, #12 ; -> 0x4ee909c 
004ee9094 	mov	x0, x8
004ee9098 	bl	#-9798840 ; -> 0x4590be0 
004ee909c 	mov	x0, x22
004ee90a0 	mov	x1, xzr
004ee90a4 	bl	#69810296 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee90a8 	mov	x2, x0
004ee90ac 	mov	x3, x1
004ee90b0 	mov	x0, x20
004ee90b4 	mov	x1, x21
004ee90b8 	mov	x4, xzr
004ee90bc 	bl	#69801864 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee90c0 	mov	x20, x0
004ee90c4 	mov	x0, x19
004ee90c8 	mov	x21, x1
004ee90cc 	bl	#34196 ; -> 0x4ef1660 PlayerBase::get_HpClass
004ee90d0 	mov	x1, xzr
004ee90d4 	bl	#69810248 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee90d8 	mov	x2, x0
004ee90dc 	mov	x3, x1
004ee90e0 	mov	x0, x20
004ee90e4 	mov	x1, x21
004ee90e8 	mov	x4, xzr
004ee90ec 	bl	#69801816 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee90f0 	mov	x20, x0
004ee90f4 	mov	x0, x19
004ee90f8 	mov	x21, x1
004ee90fc 	bl	#32596 ; -> 0x4ef1050 PlayerBase::get_HpAccessory
004ee9100 	mov	x1, xzr
004ee9104 	bl	#69810200 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9108 	mov	x2, x0
004ee910c 	mov	x3, x1
004ee9110 	mov	x0, x20
004ee9114 	mov	x1, x21
004ee9118 	mov	x4, xzr
004ee911c 	bl	#69801768 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9120 	mov	x20, x0
004ee9124 	mov	x0, x19
004ee9128 	mov	x21, x1
004ee912c 	bl	#32944 ; -> 0x4ef11dc PlayerBase::get_HpAdd
004ee9130 	mov	x1, xzr
004ee9134 	bl	#69811824 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9138 	mov	x2, x0
004ee913c 	mov	x3, x1
004ee9140 	mov	x0, x20
004ee9144 	mov	x1, x21
004ee9148 	mov	x4, xzr
004ee914c 	bl	#69801720 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9150 	ldr	x8, [x19, #312]
004ee9154 	cbz	x8, #5912 ; -> 0x4eea86c 
004ee9158 	mov	w9, #12744
004ee915c 	add	x25, sp, #512
004ee9160 	mov	x20, x0
004ee9164 	add	x8, x8, x9
004ee9168 	mov	x21, x1
004ee916c 	add	x0, sp, #2336
004ee9170 	ldp	q0, q1, [x8]
004ee9174 	mov	x1, xzr
004ee9178 	str	q0, [x25, #1824]
004ee917c 	ldp	q0, q2, [x8, #32]
004ee9180 	str	q1, [x25, #1840]
004ee9184 	str	q0, [x25, #1856]
004ee9188 	str	q2, [x25, #1872]
004ee918c 	bl	#-3763772 ; -> 0x4b52350 SilentInt::op_Implicit
004ee9190 	add	w0, w0, #100
004ee9194 	mov	x1, xzr
004ee9198 	bl	#69811724 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee919c 	mov	x2, x0
004ee91a0 	mov	x3, x1
004ee91a4 	mov	x0, x20
004ee91a8 	mov	x1, x21
004ee91ac 	mov	x4, xzr
004ee91b0 	bl	#69801620 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee91b4 	mov	x20, x0
004ee91b8 	mov	w0, #16960
004ee91bc 	mov	x21, x1
004ee91c0 	movk	w0, #15, lsl #16
004ee91c4 	mov	x1, xzr
004ee91c8 	bl	#69811676 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee91cc 	mov	x2, x0
004ee91d0 	mov	x3, x1
004ee91d4 	mov	x0, x20
004ee91d8 	mov	x1, x21
004ee91dc 	mov	x4, xzr
004ee91e0 	bl	#69802072 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee91e4 	mov	x2, x0
004ee91e8 	mov	x3, x1
004ee91ec 	mov	x0, x19
004ee91f0 	mov	x1, x2
004ee91f4 	mov	x2, x3
004ee91f8 	mov	x3, xzr
004ee91fc 	bl	#1233876 ; -> 0x50165d0 Character::set_Hp_max
004ee9200 	mov	x0, x19
004ee9204 	mov	x1, xzr
004ee9208 	bl	#1233788 ; -> 0x5016584 Character::get_Hp_max
004ee920c 	ldr	x8, [x19, #312]
004ee9210 	cbz	x8, #5724 ; -> 0x4eea86c 
004ee9214 	mov	w9, #20392
004ee9218 	mov	x20, x0
004ee921c 	mov	x21, x1
004ee9220 	add	x0, sp, #2264
004ee9224 	add	x1, x8, x9
004ee9228 	mov	w2, #72
004ee922c 	bl	#82323140 ; -> 0x9d6b8f0 
004ee9230 	add	x0, sp, #2264
004ee9234 	mov	x1, xzr
004ee9238 	bl	#-3765520 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ee923c 	mov	w8, #1120403456
004ee9240 	mov	x1, xzr
004ee9244 	fmov	s1, w8
004ee9248 	mov	w8, #2139095040
004ee924c 	fadd	s0, s0, s1
004ee9250 	fmul	s0, s0, s1
004ee9254 	fmov	s1, w8
004ee9258 	mov	x8, #-9223372036854775808
004ee925c 	fcvtzs	x9, s0
004ee9260 	fcmp	s0, s1
004ee9264 	csel	x0, x8, x9, eq
004ee9268 	bl	#69809844 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee926c 	mov	x2, x0
004ee9270 	mov	x3, x1
004ee9274 	mov	x0, x20
004ee9278 	mov	x1, x21
004ee927c 	mov	x4, xzr
004ee9280 	bl	#69801412 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9284 	mov	x20, x0
004ee9288 	mov	x21, x1
004ee928c 	mov	w0, #10000
004ee9290 	mov	x1, xzr
004ee9294 	bl	#69811472 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9298 	mov	x2, x0
004ee929c 	mov	x3, x1
004ee92a0 	mov	x0, x20
004ee92a4 	mov	x1, x21
004ee92a8 	mov	x4, xzr
004ee92ac 	bl	#69801868 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee92b0 	mov	x2, x0
004ee92b4 	mov	x3, x1
004ee92b8 	mov	x0, x19
004ee92bc 	mov	x1, x2
004ee92c0 	mov	x2, x3
004ee92c4 	mov	x3, xzr
004ee92c8 	bl	#1233672 ; -> 0x50165d0 Character::set_Hp_max
004ee92cc 	ldr	x20, [x19, #1696]
004ee92d0 	ldr	x21, [x19, #1704]
004ee92d4 	mov	x0, x19
004ee92d8 	bl	#34252 ; -> 0x4ef18a4 PlayerBase::get_HealBase
004ee92dc 	mov	x1, xzr
004ee92e0 	bl	#69809724 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee92e4 	mov	x2, x0
004ee92e8 	mov	x3, x1
004ee92ec 	mov	x0, x20
004ee92f0 	mov	x1, x21
004ee92f4 	mov	x4, xzr
004ee92f8 	bl	#69801292 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee92fc 	mov	x20, x0
004ee9300 	mov	x0, x19
004ee9304 	mov	x21, x1
004ee9308 	bl	#33624 ; -> 0x4ef1660 PlayerBase::get_HpClass
004ee930c 	mov	x1, xzr
004ee9310 	bl	#69809676 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9314 	mov	x2, x0
004ee9318 	mov	x3, x1
004ee931c 	mov	x0, x20
004ee9320 	mov	x1, x21
004ee9324 	mov	x4, xzr
004ee9328 	bl	#69801244 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee932c 	mov	x20, x0
004ee9330 	mov	x0, x19
004ee9334 	mov	x21, x1
004ee9338 	bl	#32024 ; -> 0x4ef1050 PlayerBase::get_HpAccessory
004ee933c 	mov	x1, xzr
004ee9340 	bl	#69809628 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9344 	mov	x2, x0
004ee9348 	mov	x3, x1
004ee934c 	mov	x0, x20
004ee9350 	mov	x1, x21
004ee9354 	mov	x4, xzr
004ee9358 	bl	#69801196 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee935c 	mov	x20, x0
004ee9360 	mov	x0, x19
004ee9364 	mov	x21, x1
004ee9368 	bl	#34548 ; -> 0x4ef1a5c PlayerBase::get_HealAdd
004ee936c 	mov	x1, xzr
004ee9370 	bl	#69811252 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9374 	mov	x2, x0
004ee9378 	mov	x3, x1
004ee937c 	mov	x0, x20
004ee9380 	mov	x1, x21
004ee9384 	mov	x4, xzr
004ee9388 	bl	#69801148 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee938c 	ldr	x8, [x19, #312]
004ee9390 	cbz	x8, #5340 ; -> 0x4eea86c 
004ee9394 	mov	w9, #12744
004ee9398 	mov	x20, x0
004ee939c 	mov	x21, x1
004ee93a0 	add	x8, x8, x9
004ee93a4 	add	x0, sp, #2192
004ee93a8 	mov	x1, xzr
004ee93ac 	ldp	q0, q1, [x8]
004ee93b0 	str	q0, [x25, #1680]
004ee93b4 	ldp	q0, q2, [x8, #32]
004ee93b8 	str	q1, [x25, #1696]
004ee93bc 	str	q0, [x25, #1712]
004ee93c0 	str	q2, [x25, #1728]
004ee93c4 	bl	#-3764340 ; -> 0x4b52350 SilentInt::op_Implicit
004ee93c8 	add	w0, w0, #100
004ee93cc 	mov	x1, xzr
004ee93d0 	bl	#69811156 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee93d4 	mov	x2, x0
004ee93d8 	mov	x3, x1
004ee93dc 	mov	x0, x20
004ee93e0 	mov	x1, x21
004ee93e4 	mov	x4, xzr
004ee93e8 	bl	#69801052 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee93ec 	mov	x20, x0
004ee93f0 	mov	w0, #16960
004ee93f4 	mov	x21, x1
004ee93f8 	movk	w0, #15, lsl #16
004ee93fc 	mov	x1, xzr
004ee9400 	bl	#69811108 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9404 	mov	x2, x0
004ee9408 	mov	x3, x1
004ee940c 	mov	x0, x20
004ee9410 	mov	x1, x21
004ee9414 	mov	x4, xzr
004ee9418 	bl	#69801504 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee941c 	str	x0, [x19, #1792]
004ee9420 	add	x0, x19, #1800
004ee9424 	str	x1, [x19, #1800]
004ee9428 	mov	x1, xzr
004ee942c 	bl	#-9800232 ; -> 0x4590a04 
004ee9430 	ldr	x8, [x19, #312]
004ee9434 	cbz	x8, #5176 ; -> 0x4eea86c 
004ee9438 	mov	w9, #20392
004ee943c 	ldr	x20, [x19, #1800]
004ee9440 	ldr	x21, [x19, #1792]
004ee9444 	add	x0, sp, #2120
004ee9448 	add	x1, x8, x9
004ee944c 	mov	w2, #72
004ee9450 	bl	#82322592 ; -> 0x9d6b8f0 
004ee9454 	add	x0, sp, #2120
004ee9458 	mov	x1, xzr
004ee945c 	bl	#-3766068 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ee9460 	mov	w8, #1120403456
004ee9464 	mov	x1, xzr
004ee9468 	fmov	s1, w8
004ee946c 	mov	w8, #2139095040
004ee9470 	fadd	s0, s0, s1
004ee9474 	fmul	s0, s0, s1
004ee9478 	fmov	s1, w8
004ee947c 	mov	x8, #-9223372036854775808
004ee9480 	fcvtzs	x9, s0
004ee9484 	fcmp	s0, s1
004ee9488 	csel	x0, x8, x9, eq
004ee948c 	bl	#69809296 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9490 	mov	x2, x0
004ee9494 	mov	x3, x1
004ee9498 	mov	x0, x21
004ee949c 	mov	x1, x20
004ee94a0 	mov	x4, xzr
004ee94a4 	bl	#69800864 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee94a8 	mov	x20, x0
004ee94ac 	mov	x21, x1
004ee94b0 	mov	w0, #10000
004ee94b4 	mov	x1, xzr
004ee94b8 	bl	#69810924 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee94bc 	mov	x2, x0
004ee94c0 	mov	x3, x1
004ee94c4 	mov	x0, x20
004ee94c8 	mov	x1, x21
004ee94cc 	mov	x4, xzr
004ee94d0 	bl	#69801320 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee94d4 	str	x0, [x19, #1792]
004ee94d8 	add	x0, x19, #1800
004ee94dc 	str	x1, [x19, #1800]
004ee94e0 	mov	x1, xzr
004ee94e4 	bl	#-9800416 ; -> 0x4590a04 
004ee94e8 	ldr	x8, [x19, #312]
004ee94ec 	cbz	x8, #4992 ; -> 0x4eea86c 
004ee94f0 	ldr	d0, [x8, #16344]
004ee94f4 	fcmp	d0, #0.0
004ee94f8 	b.le	#668 ; -> 0x4ee9794 
004ee94fc 	mov	x0, x19
004ee9500 	mov	x1, xzr
004ee9504 	bl	#1233024 ; -> 0x5016584 Character::get_Hp_max
004ee9508 	ldr	x8, [x19, #312]
004ee950c 	cbz	x8, #4960 ; -> 0x4eea86c 
004ee9510 	mov	x20, x0
004ee9514 	ldr	x0, [x24]
004ee9518 	ldr	d8, [x8, #16344]
004ee951c 	mov	x21, x1
004ee9520 	ldr	w9, [x0, #228]
004ee9524 	cbnz	w9, #8 ; -> 0x4ee952c 
004ee9528 	bl	#-9800008 ; -> 0x4590be0 
004ee952c 	mov	x8, #4636737291354636288
004ee9530 	mov	x22, #-9223372036854775808
004ee9534 	mov	x1, xzr
004ee9538 	fmov	d0, x8
004ee953c 	mov	x8, #9218868437227405312
004ee9540 	fadd	d1, d8, d0
004ee9544 	fmul	d0, d1, d0
004ee9548 	fmov	d1, x8
004ee954c 	fcvtzs	x9, d0
004ee9550 	fcmp	d0, d1
004ee9554 	csel	x0, x22, x9, eq
004ee9558 	bl	#69809092 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee955c 	mov	x2, x0
004ee9560 	mov	x3, x1
004ee9564 	mov	x0, x20
004ee9568 	mov	x1, x21
004ee956c 	mov	x4, xzr
004ee9570 	bl	#69800660 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9574 	mov	x20, x0
004ee9578 	mov	x21, x1
004ee957c 	mov	w0, #10000
004ee9580 	mov	x1, xzr
004ee9584 	bl	#69810720 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9588 	mov	x2, x0
004ee958c 	mov	x3, x1
004ee9590 	mov	x0, x20
004ee9594 	mov	x1, x21
004ee9598 	mov	x4, xzr
004ee959c 	bl	#69801116 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee95a0 	mov	x2, x0
004ee95a4 	mov	x3, x1
004ee95a8 	mov	x0, x19
004ee95ac 	mov	x1, x2
004ee95b0 	mov	x2, x3
004ee95b4 	mov	x3, xzr
004ee95b8 	bl	#1232920 ; -> 0x50165d0 Character::set_Hp_max
004ee95bc 	ldr	x8, [x19, #312]
004ee95c0 	cbz	x8, #4780 ; -> 0x4eea86c 
004ee95c4 	ldr	d0, [x8, #16344]
004ee95c8 	mov	x8, #4636737291354636288
004ee95cc 	ldr	x20, [x19, #1800]
004ee95d0 	fmov	d1, x8
004ee95d4 	mov	x8, #9218868437227405312
004ee95d8 	ldr	x21, [x19, #1792]
004ee95dc 	mov	x1, xzr
004ee95e0 	fadd	d0, d0, d1
004ee95e4 	fmul	d0, d0, d1
004ee95e8 	fmov	d1, x8
004ee95ec 	fcvtzs	x9, d0
004ee95f0 	fcmp	d0, d1
004ee95f4 	csel	x0, x22, x9, eq
004ee95f8 	bl	#69808932 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee95fc 	mov	x2, x0
004ee9600 	mov	x3, x1
004ee9604 	mov	x0, x21
004ee9608 	mov	x1, x20
004ee960c 	mov	x4, xzr
004ee9610 	bl	#69800500 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9614 	mov	x20, x0
004ee9618 	mov	x21, x1
004ee961c 	mov	w0, #10000
004ee9620 	mov	x1, xzr
004ee9624 	bl	#69810560 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9628 	mov	x2, x0
004ee962c 	mov	x3, x1
004ee9630 	mov	x0, x20
004ee9634 	mov	x1, x21
004ee9638 	mov	x4, xzr
004ee963c 	bl	#69800956 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9640 	str	x0, [x19, #1792]
004ee9644 	add	x0, x19, #1800
004ee9648 	str	x1, [x19, #1800]
004ee964c 	mov	x1, xzr
004ee9650 	bl	#-9800780 ; -> 0x4590a04 
004ee9654 	ldr	x0, [x19, #312]
004ee9658 	cbz	x0, #4628 ; -> 0x4eea86c 
004ee965c 	mov	w1, #9
004ee9660 	mov	x2, xzr
004ee9664 	bl	#-1639892 ; -> 0x4d59090 DatabaseManager::SpiritSkillValue
004ee9668 	fcmp	s0, #0.0
004ee966c 	b.le	#296 ; -> 0x4ee9794 
004ee9670 	mov	x0, x19
004ee9674 	mov	x1, xzr
004ee9678 	fmov	s8, s0
004ee967c 	bl	#1232648 ; -> 0x5016584 Character::get_Hp_max
004ee9680 	mov	x20, x0
004ee9684 	ldr	x0, [x24]
004ee9688 	mov	x21, x1
004ee968c 	ldr	w8, [x0, #228]
004ee9690 	cbnz	w8, #8 ; -> 0x4ee9698 
004ee9694 	bl	#-9800372 ; -> 0x4590be0 
004ee9698 	mov	w8, #1120403456
004ee969c 	mov	x1, xzr
004ee96a0 	fmov	s0, w8
004ee96a4 	mov	w8, #2139095040
004ee96a8 	fmov	s1, w8
004ee96ac 	mov	w8, #-2147483648
004ee96b0 	fadd	s0, s8, s0
004ee96b4 	fcvtzs	w9, s0
004ee96b8 	fcmp	s0, s1
004ee96bc 	csel	w22, w8, w9, eq
004ee96c0 	mov	w0, w22
004ee96c4 	bl	#69810400 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee96c8 	mov	x2, x0
004ee96cc 	mov	x3, x1
004ee96d0 	mov	x0, x20
004ee96d4 	mov	x1, x21
004ee96d8 	mov	x4, xzr
004ee96dc 	bl	#69800296 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee96e0 	mov	x20, x0
004ee96e4 	mov	x21, x1
004ee96e8 	mov	w0, #100
004ee96ec 	mov	x1, xzr
004ee96f0 	bl	#69810356 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee96f4 	mov	x2, x0
004ee96f8 	mov	x3, x1
004ee96fc 	mov	x0, x20
004ee9700 	mov	x1, x21
004ee9704 	mov	x4, xzr
004ee9708 	bl	#69800752 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee970c 	mov	x2, x0
004ee9710 	mov	x3, x1
004ee9714 	mov	x0, x19
004ee9718 	mov	x1, x2
004ee971c 	mov	x2, x3
004ee9720 	mov	x3, xzr
004ee9724 	bl	#1232556 ; -> 0x50165d0 Character::set_Hp_max
004ee9728 	ldr	x20, [x19, #1792]
004ee972c 	ldr	x21, [x19, #1800]
004ee9730 	mov	w0, w22
004ee9734 	mov	x1, xzr
004ee9738 	bl	#69810284 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee973c 	mov	x2, x0
004ee9740 	mov	x3, x1
004ee9744 	mov	x0, x20
004ee9748 	mov	x1, x21
004ee974c 	mov	x4, xzr
004ee9750 	bl	#69800180 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9754 	mov	x20, x0
004ee9758 	mov	x21, x1
004ee975c 	mov	w0, #100
004ee9760 	mov	x1, xzr
004ee9764 	bl	#69810240 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9768 	mov	x2, x0
004ee976c 	mov	x3, x1
004ee9770 	mov	x0, x20
004ee9774 	mov	x1, x21
004ee9778 	mov	x4, xzr
004ee977c 	bl	#69800636 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9780 	str	x0, [x19, #1792]
004ee9784 	add	x0, x19, #1800
004ee9788 	str	x1, [x19, #1800]
004ee978c 	mov	x1, xzr
004ee9790 	bl	#-9801100 ; -> 0x4590a04 
004ee9794 	ldr	x8, [x19, #312]
004ee9798 	cbz	x8, #4308 ; -> 0x4eea86c 
004ee979c 	ldr	q0, [x8, #17264]
004ee97a0 	ldr	q1, [x8, #17280]
004ee97a4 	add	x0, sp, #2048
004ee97a8 	ldr	q2, [x8, #17296]
004ee97ac 	mov	x1, xzr
004ee97b0 	str	q0, [x25, #1536]
004ee97b4 	ldr	q0, [x8, #17312]
004ee97b8 	str	q1, [x25, #1552]
004ee97bc 	str	q2, [x25, #1568]
004ee97c0 	str	q0, [x25, #1584]
004ee97c4 	bl	#-3765364 ; -> 0x4b52350 SilentInt::op_Implicit
004ee97c8 	cmp	w0, #0
004ee97cc 	b.gt	#64 ; -> 0x4ee980c 
004ee97d0 	ldr	x8, [x19, #312]
004ee97d4 	cbz	x8, #4248 ; -> 0x4eea86c 
004ee97d8 	ldr	q0, [x8, #11760]
004ee97dc 	ldr	q1, [x8, #11776]
004ee97e0 	add	x0, sp, #1984
004ee97e4 	ldr	q2, [x8, #11792]
004ee97e8 	mov	x1, xzr
004ee97ec 	str	q0, [x25, #1472]
004ee97f0 	ldr	q0, [x8, #11808]
004ee97f4 	str	q1, [x25, #1488]
004ee97f8 	str	q2, [x25, #1504]
004ee97fc 	str	q0, [x25, #1520]
004ee9800 	bl	#-3763968 ; -> 0x4b52900 SilentLong::op_Implicit
004ee9804 	cmp	x0, #1
004ee9808 	b.lt	#268 ; -> 0x4ee9914 
004ee980c 	mov	x0, x19
004ee9810 	mov	x1, xzr
004ee9814 	bl	#1232240 ; -> 0x5016584 Character::get_Hp_max
004ee9818 	ldr	x8, [x19, #312]
004ee981c 	cbz	x8, #4176 ; -> 0x4eea86c 
004ee9820 	ldr	q0, [x8, #17264]
004ee9824 	ldr	q1, [x8, #17280]
004ee9828 	mov	x20, x0
004ee982c 	ldr	q2, [x8, #17296]
004ee9830 	mov	x21, x1
004ee9834 	add	x0, sp, #1920
004ee9838 	str	q0, [x25, #1408]
004ee983c 	ldr	q0, [x8, #17312]
004ee9840 	mov	x1, xzr
004ee9844 	str	q1, [x25, #1424]
004ee9848 	str	q2, [x25, #1440]
004ee984c 	str	q0, [x25, #1456]
004ee9850 	bl	#-3765504 ; -> 0x4b52350 SilentInt::op_Implicit
004ee9854 	ldr	x8, [x19, #312]
004ee9858 	cbz	x8, #4116 ; -> 0x4eea86c 
004ee985c 	ldr	q0, [x8, #11760]
004ee9860 	ldr	q1, [x8, #11776]
004ee9864 	mov	w22, w0
004ee9868 	ldr	q2, [x8, #11792]
004ee986c 	add	x0, sp, #1856
004ee9870 	mov	x1, xzr
004ee9874 	str	q0, [x25, #1344]
004ee9878 	ldr	q0, [x8, #11808]
004ee987c 	str	q1, [x25, #1360]
004ee9880 	str	q2, [x25, #1376]
004ee9884 	str	q0, [x25, #1392]
004ee9888 	bl	#-3764104 ; -> 0x4b52900 SilentLong::op_Implicit
004ee988c 	ldr	x8, [x24]
004ee9890 	mov	x23, x0
004ee9894 	ldr	w9, [x8, #228]
004ee9898 	cbnz	w9, #12 ; -> 0x4ee98a4 
004ee989c 	mov	x0, x8
004ee98a0 	bl	#-9800896 ; -> 0x4590be0 
004ee98a4 	add	w8, w22, #100
004ee98a8 	mov	x1, xzr
004ee98ac 	add	x0, x23, w8, sxtw
004ee98b0 	bl	#69808236 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee98b4 	mov	x2, x0
004ee98b8 	mov	x3, x1
004ee98bc 	mov	x0, x20
004ee98c0 	mov	x1, x21
004ee98c4 	mov	x4, xzr
004ee98c8 	bl	#69799804 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee98cc 	mov	x20, x0
004ee98d0 	mov	x21, x1
004ee98d4 	mov	w0, #100
004ee98d8 	mov	x1, xzr
004ee98dc 	bl	#69809864 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee98e0 	mov	x2, x0
004ee98e4 	mov	x3, x1
004ee98e8 	mov	x0, x20
004ee98ec 	mov	x1, x21
004ee98f0 	mov	x4, xzr
004ee98f4 	bl	#69800260 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee98f8 	mov	x2, x0
004ee98fc 	mov	x3, x1
004ee9900 	mov	x0, x19
004ee9904 	mov	x1, x2
004ee9908 	mov	x2, x3
004ee990c 	mov	x3, xzr
004ee9910 	bl	#1232064 ; -> 0x50165d0 Character::set_Hp_max
004ee9914 	ldr	x8, [x19, #312]
004ee9918 	cbz	x8, #3924 ; -> 0x4eea86c 
004ee991c 	ldr	q0, [x8, #17328]
004ee9920 	ldr	q1, [x8, #17344]
004ee9924 	add	x0, sp, #1792
004ee9928 	ldr	q2, [x8, #17360]
004ee992c 	mov	x1, xzr
004ee9930 	str	q0, [x25, #1280]
004ee9934 	ldr	q0, [x8, #17376]
004ee9938 	str	q1, [x25, #1296]
004ee993c 	str	q2, [x25, #1312]
004ee9940 	str	q0, [x25, #1328]
004ee9944 	bl	#-3765748 ; -> 0x4b52350 SilentInt::op_Implicit
004ee9948 	cmp	w0, #0
004ee994c 	b.gt	#64 ; -> 0x4ee998c 
004ee9950 	ldr	x8, [x19, #312]
004ee9954 	cbz	x8, #3864 ; -> 0x4eea86c 
004ee9958 	ldr	q0, [x8, #11824]
004ee995c 	ldr	q1, [x8, #11840]
004ee9960 	add	x0, sp, #1728
004ee9964 	ldr	q2, [x8, #11856]
004ee9968 	mov	x1, xzr
004ee996c 	str	q0, [x25, #1216]
004ee9970 	ldr	q0, [x8, #11872]
004ee9974 	str	q1, [x25, #1232]
004ee9978 	str	q2, [x25, #1248]
004ee997c 	str	q0, [x25, #1264]
004ee9980 	bl	#-3764352 ; -> 0x4b52900 SilentLong::op_Implicit
004ee9984 	cmp	x0, #1
004ee9988 	b.lt	#248 ; -> 0x4ee9a80 
004ee998c 	ldr	x8, [x19, #312]
004ee9990 	cbz	x8, #3804 ; -> 0x4eea86c 
004ee9994 	ldr	q0, [x8, #17328]
004ee9998 	ldr	q1, [x8, #17344]
004ee999c 	add	x0, sp, #1664
004ee99a0 	ldr	q2, [x8, #17360]
004ee99a4 	ldr	x20, [x19, #1792]
004ee99a8 	mov	x1, xzr
004ee99ac 	str	q0, [x25, #1152]
004ee99b0 	ldr	q0, [x8, #17376]
004ee99b4 	ldr	x21, [x19, #1800]
004ee99b8 	str	q1, [x25, #1168]
004ee99bc 	str	q2, [x25, #1184]
004ee99c0 	str	q0, [x25, #1200]
004ee99c4 	bl	#-3765876 ; -> 0x4b52350 SilentInt::op_Implicit
004ee99c8 	ldr	x8, [x19, #312]
004ee99cc 	cbz	x8, #3744 ; -> 0x4eea86c 
004ee99d0 	ldr	q0, [x8, #11824]
004ee99d4 	ldr	q1, [x8, #11840]
004ee99d8 	mov	w22, w0
004ee99dc 	ldr	q2, [x8, #11856]
004ee99e0 	add	x0, sp, #1600
004ee99e4 	mov	x1, xzr
004ee99e8 	str	q0, [x25, #1088]
004ee99ec 	ldr	q0, [x8, #11872]
004ee99f0 	str	q1, [x25, #1104]
004ee99f4 	str	q2, [x25, #1120]
004ee99f8 	str	q0, [x25, #1136]
004ee99fc 	bl	#-3764476 ; -> 0x4b52900 SilentLong::op_Implicit
004ee9a00 	ldr	x8, [x24]
004ee9a04 	mov	x23, x0
004ee9a08 	ldr	w9, [x8, #228]
004ee9a0c 	cbnz	w9, #12 ; -> 0x4ee9a18 
004ee9a10 	mov	x0, x8
004ee9a14 	bl	#-9801268 ; -> 0x4590be0 
004ee9a18 	add	w8, w22, #100
004ee9a1c 	mov	x1, xzr
004ee9a20 	add	x0, x23, w8, sxtw
004ee9a24 	bl	#69807864 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9a28 	mov	x2, x0
004ee9a2c 	mov	x3, x1
004ee9a30 	mov	x0, x20
004ee9a34 	mov	x1, x21
004ee9a38 	mov	x4, xzr
004ee9a3c 	bl	#69799432 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9a40 	mov	x20, x0
004ee9a44 	mov	x21, x1
004ee9a48 	mov	w0, #100
004ee9a4c 	mov	x1, xzr
004ee9a50 	bl	#69809492 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9a54 	mov	x2, x0
004ee9a58 	mov	x3, x1
004ee9a5c 	mov	x0, x20
004ee9a60 	mov	x1, x21
004ee9a64 	mov	x4, xzr
004ee9a68 	bl	#69799888 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9a6c 	str	x0, [x19, #1792]
004ee9a70 	add	x0, x19, #1800
004ee9a74 	str	x1, [x19, #1800]
004ee9a78 	mov	x1, xzr
004ee9a7c 	bl	#-9801848 ; -> 0x4590a04 
004ee9a80 	ldr	x8, [x19, #312]
004ee9a84 	cbz	x8, #3560 ; -> 0x4eea86c 
004ee9a88 	ldr	q0, [x8, #17392]
004ee9a8c 	ldr	q1, [x8, #17408]
004ee9a90 	add	x0, sp, #1536
004ee9a94 	ldr	q2, [x8, #17424]
004ee9a98 	mov	x1, xzr
004ee9a9c 	str	q0, [x25, #1024]
004ee9aa0 	ldr	q0, [x8, #17440]
004ee9aa4 	str	q1, [x25, #1040]
004ee9aa8 	str	q2, [x25, #1056]
004ee9aac 	str	q0, [x25, #1072]
004ee9ab0 	bl	#-3766112 ; -> 0x4b52350 SilentInt::op_Implicit
004ee9ab4 	cmp	w0, #1
004ee9ab8 	b.lt	#200 ; -> 0x4ee9b80 
004ee9abc 	mov	x0, x19
004ee9ac0 	mov	x1, xzr
004ee9ac4 	bl	#1231552 ; -> 0x5016584 Character::get_Hp_max
004ee9ac8 	ldr	x8, [x19, #312]
004ee9acc 	cbz	x8, #3488 ; -> 0x4eea86c 
004ee9ad0 	ldr	q0, [x8, #17392]
004ee9ad4 	ldr	q1, [x8, #17408]
004ee9ad8 	mov	x20, x0
004ee9adc 	ldr	q2, [x8, #17424]
004ee9ae0 	mov	x21, x1
004ee9ae4 	add	x0, sp, #1472
004ee9ae8 	stp	q0, q1, [x25, #960]
004ee9aec 	ldr	q0, [x8, #17440]
004ee9af0 	mov	x1, xzr
004ee9af4 	stp	q2, q0, [x25, #992]
004ee9af8 	bl	#-3766184 ; -> 0x4b52350 SilentInt::op_Implicit
004ee9afc 	ldr	x8, [x24]
004ee9b00 	mov	w22, w0
004ee9b04 	ldr	w9, [x8, #228]
004ee9b08 	cbnz	w9, #12 ; -> 0x4ee9b14 
004ee9b0c 	mov	x0, x8
004ee9b10 	bl	#-9801520 ; -> 0x4590be0 
004ee9b14 	add	w0, w22, #100
004ee9b18 	mov	x1, xzr
004ee9b1c 	bl	#69809288 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9b20 	mov	x2, x0
004ee9b24 	mov	x3, x1
004ee9b28 	mov	x0, x20
004ee9b2c 	mov	x1, x21
004ee9b30 	mov	x4, xzr
004ee9b34 	bl	#69799184 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9b38 	mov	x20, x0
004ee9b3c 	mov	x21, x1
004ee9b40 	mov	w0, #100
004ee9b44 	mov	x1, xzr
004ee9b48 	bl	#69809244 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9b4c 	mov	x2, x0
004ee9b50 	mov	x3, x1
004ee9b54 	mov	x0, x20
004ee9b58 	mov	x1, x21
004ee9b5c 	mov	x4, xzr
004ee9b60 	bl	#69799640 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9b64 	mov	x2, x0
004ee9b68 	mov	x3, x1
004ee9b6c 	mov	x0, x19
004ee9b70 	mov	x1, x2
004ee9b74 	mov	x2, x3
004ee9b78 	mov	x3, xzr
004ee9b7c 	bl	#1231444 ; -> 0x50165d0 Character::set_Hp_max
004ee9b80 	ldr	x8, [x19, #312]
004ee9b84 	cbz	x8, #3304 ; -> 0x4eea86c 
004ee9b88 	ldr	q0, [x8, #17456]
004ee9b8c 	ldr	q1, [x8, #17472]
004ee9b90 	add	x0, sp, #1408
004ee9b94 	ldr	q2, [x8, #17488]
004ee9b98 	mov	x1, xzr
004ee9b9c 	stp	q0, q1, [x25, #896]
004ee9ba0 	ldr	q0, [x8, #17504]
004ee9ba4 	stp	q2, q0, [x25, #928]
004ee9ba8 	bl	#-3766360 ; -> 0x4b52350 SilentInt::op_Implicit
004ee9bac 	cmp	w0, #1
004ee9bb0 	b.lt	#180 ; -> 0x4ee9c64 
004ee9bb4 	ldr	x8, [x19, #312]
004ee9bb8 	cbz	x8, #3252 ; -> 0x4eea86c 
004ee9bbc 	ldr	q0, [x8, #17456]
004ee9bc0 	ldr	q1, [x8, #17472]
004ee9bc4 	add	x0, sp, #1344
004ee9bc8 	ldr	q2, [x8, #17488]
004ee9bcc 	ldr	x20, [x19, #1792]
004ee9bd0 	mov	x1, xzr
004ee9bd4 	stp	q0, q1, [x25, #832]
004ee9bd8 	ldr	q0, [x8, #17504]
004ee9bdc 	ldr	x21, [x19, #1800]
004ee9be0 	stp	q2, q0, [x25, #864]
004ee9be4 	bl	#-3766420 ; -> 0x4b52350 SilentInt::op_Implicit
004ee9be8 	ldr	x8, [x24]
004ee9bec 	mov	w22, w0
004ee9bf0 	ldr	w9, [x8, #228]
004ee9bf4 	cbnz	w9, #12 ; -> 0x4ee9c00 
004ee9bf8 	mov	x0, x8
004ee9bfc 	bl	#-9801756 ; -> 0x4590be0 
004ee9c00 	add	w0, w22, #100
004ee9c04 	mov	x1, xzr
004ee9c08 	bl	#69809052 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9c0c 	mov	x2, x0
004ee9c10 	mov	x3, x1
004ee9c14 	mov	x0, x20
004ee9c18 	mov	x1, x21
004ee9c1c 	mov	x4, xzr
004ee9c20 	bl	#69798948 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9c24 	mov	x20, x0
004ee9c28 	mov	x21, x1
004ee9c2c 	mov	w0, #100
004ee9c30 	mov	x1, xzr
004ee9c34 	bl	#69809008 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9c38 	mov	x2, x0
004ee9c3c 	mov	x3, x1
004ee9c40 	mov	x0, x20
004ee9c44 	mov	x1, x21
004ee9c48 	mov	x4, xzr
004ee9c4c 	bl	#69799404 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9c50 	str	x0, [x19, #1792]
004ee9c54 	add	x0, x19, #1800
004ee9c58 	str	x1, [x19, #1800]
004ee9c5c 	mov	x1, xzr
004ee9c60 	bl	#-9802332 ; -> 0x4590a04 
004ee9c64 	ldr	x8, [x19, #312]
004ee9c68 	cbz	x8, #3076 ; -> 0x4eea86c 
004ee9c6c 	mov	w9, #19352
004ee9c70 	add	x0, sp, #1272
004ee9c74 	mov	w2, #72
004ee9c78 	add	x1, x8, x9
004ee9c7c 	bl	#82320500 ; -> 0x9d6b8f0 
004ee9c80 	add	x0, sp, #1272
004ee9c84 	mov	x1, xzr
004ee9c88 	bl	#-3768160 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ee9c8c 	fcmp	s0, #0.0
004ee9c90 	b.le	#408 ; -> 0x4ee9e28 
004ee9c94 	mov	x0, x19
004ee9c98 	mov	x1, xzr
004ee9c9c 	bl	#1231080 ; -> 0x5016584 Character::get_Hp_max
004ee9ca0 	ldr	x8, [x19, #312]
004ee9ca4 	cbz	x8, #3016 ; -> 0x4eea86c 
004ee9ca8 	mov	w9, #19352
004ee9cac 	mov	x20, x0
004ee9cb0 	mov	x21, x1
004ee9cb4 	add	x0, sp, #1200
004ee9cb8 	add	x1, x8, x9
004ee9cbc 	mov	w2, #72
004ee9cc0 	bl	#82320432 ; -> 0x9d6b8f0 
004ee9cc4 	add	x0, sp, #1200
004ee9cc8 	mov	x1, xzr
004ee9ccc 	bl	#-3768228 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ee9cd0 	ldr	x0, [x24]
004ee9cd4 	fmov	s8, s0
004ee9cd8 	ldr	w8, [x0, #228]
004ee9cdc 	cbnz	w8, #8 ; -> 0x4ee9ce4 
004ee9ce0 	bl	#-9801984 ; -> 0x4590be0 
004ee9ce4 	mov	w8, #1120403456
004ee9ce8 	mov	x22, #-9223372036854775808
004ee9cec 	mov	x1, xzr
004ee9cf0 	fmov	s0, w8
004ee9cf4 	mov	w8, #2139095040
004ee9cf8 	fadd	s1, s8, s0
004ee9cfc 	fmul	s0, s1, s0
004ee9d00 	fmov	s1, w8
004ee9d04 	fcvtzs	x9, s0
004ee9d08 	fcmp	s0, s1
004ee9d0c 	csel	x0, x22, x9, eq
004ee9d10 	bl	#69807116 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9d14 	mov	x2, x0
004ee9d18 	mov	x3, x1
004ee9d1c 	mov	x0, x20
004ee9d20 	mov	x1, x21
004ee9d24 	mov	x4, xzr
004ee9d28 	bl	#69798684 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9d2c 	mov	x20, x0
004ee9d30 	mov	x21, x1
004ee9d34 	mov	w0, #10000
004ee9d38 	mov	x1, xzr
004ee9d3c 	bl	#69808744 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9d40 	mov	x2, x0
004ee9d44 	mov	x3, x1
004ee9d48 	mov	x0, x20
004ee9d4c 	mov	x1, x21
004ee9d50 	mov	x4, xzr
004ee9d54 	bl	#69799140 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9d58 	mov	x2, x0
004ee9d5c 	mov	x3, x1
004ee9d60 	mov	x0, x19
004ee9d64 	mov	x1, x2
004ee9d68 	mov	x2, x3
004ee9d6c 	mov	x3, xzr
004ee9d70 	bl	#1230944 ; -> 0x50165d0 Character::set_Hp_max
004ee9d74 	ldr	x8, [x19, #312]
004ee9d78 	cbz	x8, #2804 ; -> 0x4eea86c 
004ee9d7c 	mov	w9, #19352
004ee9d80 	ldr	x20, [x19, #1800]
004ee9d84 	ldr	x21, [x19, #1792]
004ee9d88 	add	x0, sp, #1128
004ee9d8c 	add	x1, x8, x9
004ee9d90 	mov	w2, #72
004ee9d94 	bl	#82320220 ; -> 0x9d6b8f0 
004ee9d98 	add	x0, sp, #1128
004ee9d9c 	mov	x1, xzr
004ee9da0 	bl	#-3768440 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ee9da4 	mov	w8, #1120403456
004ee9da8 	mov	x1, xzr
004ee9dac 	fmov	s1, w8
004ee9db0 	mov	w8, #2139095040
004ee9db4 	fadd	s0, s0, s1
004ee9db8 	fmul	s0, s0, s1
004ee9dbc 	fmov	s1, w8
004ee9dc0 	fcvtzs	x9, s0
004ee9dc4 	fcmp	s0, s1
004ee9dc8 	csel	x0, x22, x9, eq
004ee9dcc 	bl	#69806928 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9dd0 	mov	x2, x0
004ee9dd4 	mov	x3, x1
004ee9dd8 	mov	x0, x21
004ee9ddc 	mov	x1, x20
004ee9de0 	mov	x4, xzr
004ee9de4 	bl	#69798496 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9de8 	mov	x20, x0
004ee9dec 	mov	x21, x1
004ee9df0 	mov	w0, #10000
004ee9df4 	mov	x1, xzr
004ee9df8 	bl	#69808556 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9dfc 	mov	x2, x0
004ee9e00 	mov	x3, x1
004ee9e04 	mov	x0, x20
004ee9e08 	mov	x1, x21
004ee9e0c 	mov	x4, xzr
004ee9e10 	bl	#69798952 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9e14 	str	x0, [x19, #1792]
004ee9e18 	add	x0, x19, #1800
004ee9e1c 	str	x1, [x19, #1800]
004ee9e20 	mov	x1, xzr
004ee9e24 	bl	#-9802784 ; -> 0x4590a04 
004ee9e28 	ldr	x8, [x19, #312]
004ee9e2c 	cbz	x8, #2624 ; -> 0x4eea86c 
004ee9e30 	mov	w9, #11960
004ee9e34 	add	x0, sp, #1056
004ee9e38 	mov	x1, xzr
004ee9e3c 	add	x8, x8, x9
004ee9e40 	ldp	q0, q1, [x8]
004ee9e44 	stp	q0, q1, [x25, #544]
004ee9e48 	ldp	q0, q2, [x8, #32]
004ee9e4c 	stp	q0, q2, [x25, #576]
004ee9e50 	bl	#-3765584 ; -> 0x4b52900 SilentLong::op_Implicit
004ee9e54 	cmp	x0, #1
004ee9e58 	b.lt	#368 ; -> 0x4ee9fc8 
004ee9e5c 	mov	x0, x19
004ee9e60 	mov	x1, xzr
004ee9e64 	bl	#1230624 ; -> 0x5016584 Character::get_Hp_max
004ee9e68 	ldr	x8, [x19, #312]
004ee9e6c 	cbz	x8, #2560 ; -> 0x4eea86c 
004ee9e70 	mov	w9, #11960
004ee9e74 	mov	x20, x0
004ee9e78 	mov	x21, x1
004ee9e7c 	add	x8, x8, x9
004ee9e80 	add	x0, sp, #992
004ee9e84 	mov	x1, xzr
004ee9e88 	ldp	q0, q1, [x8]
004ee9e8c 	stp	q0, q1, [x25, #480]
004ee9e90 	ldp	q0, q2, [x8, #32]
004ee9e94 	stp	q0, q2, [x25, #512]
004ee9e98 	bl	#-3765656 ; -> 0x4b52900 SilentLong::op_Implicit
004ee9e9c 	ldr	x8, [x24]
004ee9ea0 	mov	x22, x0
004ee9ea4 	ldr	w9, [x8, #228]
004ee9ea8 	cbnz	w9, #12 ; -> 0x4ee9eb4 
004ee9eac 	mov	x0, x8
004ee9eb0 	bl	#-9802448 ; -> 0x4590be0 
004ee9eb4 	mov	w8, #100
004ee9eb8 	mov	w9, #10000
004ee9ebc 	mov	x1, xzr
004ee9ec0 	madd	x0, x22, x8, x9
004ee9ec4 	bl	#69806680 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9ec8 	mov	x2, x0
004ee9ecc 	mov	x3, x1
004ee9ed0 	mov	x0, x20
004ee9ed4 	mov	x1, x21
004ee9ed8 	mov	x4, xzr
004ee9edc 	bl	#69798248 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9ee0 	mov	x20, x0
004ee9ee4 	mov	x21, x1
004ee9ee8 	mov	w0, #10000
004ee9eec 	mov	x1, xzr
004ee9ef0 	bl	#69808308 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9ef4 	mov	x2, x0
004ee9ef8 	mov	x3, x1
004ee9efc 	mov	x0, x20
004ee9f00 	mov	x1, x21
004ee9f04 	mov	x4, xzr
004ee9f08 	bl	#69798704 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9f0c 	mov	x2, x0
004ee9f10 	mov	x3, x1
004ee9f14 	mov	x0, x19
004ee9f18 	mov	x1, x2
004ee9f1c 	mov	x2, x3
004ee9f20 	mov	x3, xzr
004ee9f24 	bl	#1230508 ; -> 0x50165d0 Character::set_Hp_max
004ee9f28 	ldr	x8, [x19, #312]
004ee9f2c 	cbz	x8, #2368 ; -> 0x4eea86c 
004ee9f30 	mov	w9, #11960
004ee9f34 	ldr	x20, [x19, #1800]
004ee9f38 	ldr	x21, [x19, #1792]
004ee9f3c 	add	x8, x8, x9
004ee9f40 	add	x0, sp, #928
004ee9f44 	mov	x1, xzr
004ee9f48 	ldp	q0, q1, [x8]
004ee9f4c 	stp	q0, q1, [x25, #416]
004ee9f50 	ldp	q0, q2, [x8, #32]
004ee9f54 	stp	q0, q2, [x25, #448]
004ee9f58 	bl	#-3765848 ; -> 0x4b52900 SilentLong::op_Implicit
004ee9f5c 	mov	w8, #100
004ee9f60 	mov	w9, #10000
004ee9f64 	mov	x1, xzr
004ee9f68 	madd	x0, x0, x8, x9
004ee9f6c 	bl	#69806512 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ee9f70 	mov	x2, x0
004ee9f74 	mov	x3, x1
004ee9f78 	mov	x0, x21
004ee9f7c 	mov	x1, x20
004ee9f80 	mov	x4, xzr
004ee9f84 	bl	#69798080 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ee9f88 	mov	x20, x0
004ee9f8c 	mov	x21, x1
004ee9f90 	mov	w0, #10000
004ee9f94 	mov	x1, xzr
004ee9f98 	bl	#69808140 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee9f9c 	mov	x2, x0
004ee9fa0 	mov	x3, x1
004ee9fa4 	mov	x0, x20
004ee9fa8 	mov	x1, x21
004ee9fac 	mov	x4, xzr
004ee9fb0 	bl	#69798536 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ee9fb4 	str	x0, [x19, #1792]
004ee9fb8 	add	x0, x19, #1800
004ee9fbc 	str	x1, [x19, #1800]
004ee9fc0 	mov	x1, xzr
004ee9fc4 	bl	#-9803200 ; -> 0x4590a04 
004ee9fc8 	ldr	x8, [x19, #312]
004ee9fcc 	cbz	x8, #2208 ; -> 0x4eea86c 
004ee9fd0 	mov	w9, #13664
004ee9fd4 	add	x0, sp, #856
004ee9fd8 	mov	w2, #72
004ee9fdc 	add	x1, x8, x9
004ee9fe0 	bl	#82319632 ; -> 0x9d6b8f0 
004ee9fe4 	add	x0, sp, #856
004ee9fe8 	mov	x1, xzr
004ee9fec 	bl	#-3769028 ; -> 0x4b51d28 SilentFloat::op_Implicit
004ee9ff0 	fcmp	s0, #0.0
004ee9ff4 	b.le	#556 ; -> 0x4eea220 
004ee9ff8 	adrp	x21, #97411072 ; -> 0xabcf000 
004ee9ffc 	ldrb	w8, [x21, #1161]
004eea000 	cbnz	w8, #24 ; -> 0x4eea018 
004eea004 	adrp	x0, #89157632 ; -> 0xa3f1000 
004eea008 	ldr	x0, [x0, #4032]
004eea00c 	bl	#-9803180 ; -> 0x4590a60 
004eea010 	mov	w8, #1
004eea014 	strb	w8, [x21, #1161]
004eea018 	adrp	x22, #89157632 ; -> 0xa3f1000 
004eea01c 	adrp	x8, #89116672 ; -> 0xa3e7000 
004eea020 	ldr	x22, [x22, #4032]
004eea024 	ldr	x8, [x8, #1192]
004eea028 	ldr	x9, [x22]
004eea02c 	ldr	x0, [x8]
004eea030 	ldr	x8, [x9, #184]
004eea034 	ldr	w9, [x0, #228]
004eea038 	ldr	x20, [x8]
004eea03c 	cbnz	w9, #8 ; -> 0x4eea044 
004eea040 	bl	#-9802848 ; -> 0x4590be0 
004eea044 	mov	x0, x20
004eea048 	mov	x1, xzr
004eea04c 	mov	x2, xzr
004eea050 	bl	#78746176 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
004eea054 	tbz	w0, #0, #460 ; -> 0x4eea220 
004eea058 	ldrb	w8, [x21, #1161]
004eea05c 	cbnz	w8, #24 ; -> 0x4eea074 
004eea060 	adrp	x0, #89157632 ; -> 0xa3f1000 
004eea064 	ldr	x0, [x0, #4032]
004eea068 	bl	#-9803272 ; -> 0x4590a60 
004eea06c 	mov	w8, #1
004eea070 	strb	w8, [x21, #1161]
004eea074 	ldr	x8, [x22]
004eea078 	ldr	x8, [x8, #184]
004eea07c 	ldr	x8, [x8]
004eea080 	cbz	x8, #2028 ; -> 0x4eea86c 
004eea084 	ldr	x8, [x8, #88]
004eea088 	cbz	x8, #408 ; -> 0x4eea220 
004eea08c 	mov	x0, x19
004eea090 	mov	x1, xzr
004eea094 	bl	#1230064 ; -> 0x5016584 Character::get_Hp_max
004eea098 	ldr	x8, [x19, #312]
004eea09c 	cbz	x8, #2000 ; -> 0x4eea86c 
004eea0a0 	mov	w9, #13664
004eea0a4 	mov	x20, x0
004eea0a8 	mov	x21, x1
004eea0ac 	add	x0, sp, #784
004eea0b0 	add	x1, x8, x9
004eea0b4 	mov	w2, #72
004eea0b8 	bl	#82319416 ; -> 0x9d6b8f0 
004eea0bc 	add	x0, sp, #784
004eea0c0 	mov	x1, xzr
004eea0c4 	bl	#-3769244 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea0c8 	ldr	x0, [x24]
004eea0cc 	fmov	s8, s0
004eea0d0 	ldr	w8, [x0, #228]
004eea0d4 	cbnz	w8, #8 ; -> 0x4eea0dc 
004eea0d8 	bl	#-9803000 ; -> 0x4590be0 
004eea0dc 	mov	w8, #1120403456
004eea0e0 	mov	x22, #-9223372036854775808
004eea0e4 	mov	x1, xzr
004eea0e8 	fmov	s0, w8
004eea0ec 	mov	w8, #2139095040
004eea0f0 	fadd	s1, s8, s0
004eea0f4 	fmul	s0, s1, s0
004eea0f8 	fmov	s1, w8
004eea0fc 	fcvtzs	x9, s0
004eea100 	fcmp	s0, s1
004eea104 	csel	x0, x22, x9, eq
004eea108 	bl	#69806100 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eea10c 	mov	x2, x0
004eea110 	mov	x3, x1
004eea114 	mov	x0, x20
004eea118 	mov	x1, x21
004eea11c 	mov	x4, xzr
004eea120 	bl	#69797668 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eea124 	mov	x20, x0
004eea128 	mov	x21, x1
004eea12c 	mov	w0, #10000
004eea130 	mov	x1, xzr
004eea134 	bl	#69807728 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea138 	mov	x2, x0
004eea13c 	mov	x3, x1
004eea140 	mov	x0, x20
004eea144 	mov	x1, x21
004eea148 	mov	x4, xzr
004eea14c 	bl	#69798124 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eea150 	mov	x2, x0
004eea154 	mov	x3, x1
004eea158 	mov	x0, x19
004eea15c 	mov	x1, x2
004eea160 	mov	x2, x3
004eea164 	mov	x3, xzr
004eea168 	bl	#1229928 ; -> 0x50165d0 Character::set_Hp_max
004eea16c 	ldr	x8, [x19, #312]
004eea170 	cbz	x8, #1788 ; -> 0x4eea86c 
004eea174 	mov	w9, #13664
004eea178 	ldr	x20, [x19, #1800]
004eea17c 	ldr	x21, [x19, #1792]
004eea180 	add	x0, sp, #712
004eea184 	add	x1, x8, x9
004eea188 	mov	w2, #72
004eea18c 	bl	#82319204 ; -> 0x9d6b8f0 
004eea190 	add	x0, sp, #712
004eea194 	mov	x1, xzr
004eea198 	bl	#-3769456 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea19c 	mov	w8, #1120403456
004eea1a0 	mov	x1, xzr
004eea1a4 	fmov	s1, w8
004eea1a8 	mov	w8, #2139095040
004eea1ac 	fadd	s0, s0, s1
004eea1b0 	fmul	s0, s0, s1
004eea1b4 	fmov	s1, w8
004eea1b8 	fcvtzs	x9, s0
004eea1bc 	fcmp	s0, s1
004eea1c0 	csel	x0, x22, x9, eq
004eea1c4 	bl	#69805912 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eea1c8 	mov	x2, x0
004eea1cc 	mov	x3, x1
004eea1d0 	mov	x0, x21
004eea1d4 	mov	x1, x20
004eea1d8 	mov	x4, xzr
004eea1dc 	bl	#69797480 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eea1e0 	mov	x20, x0
004eea1e4 	mov	x21, x1
004eea1e8 	mov	w0, #10000
004eea1ec 	mov	x1, xzr
004eea1f0 	bl	#69807540 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea1f4 	mov	x2, x0
004eea1f8 	mov	x3, x1
004eea1fc 	mov	x0, x20
004eea200 	mov	x1, x21
004eea204 	mov	x4, xzr
004eea208 	bl	#69797936 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eea20c 	str	x0, [x19, #1792]
004eea210 	add	x0, x19, #1800
004eea214 	str	x1, [x19, #1800]
004eea218 	mov	x1, xzr
004eea21c 	bl	#-9803800 ; -> 0x4590a04 
004eea220 	ldr	x8, [x19, #312]
004eea224 	cbz	x8, #1608 ; -> 0x4eea86c 
004eea228 	mov	w9, #10664
004eea22c 	add	x0, sp, #640
004eea230 	mov	x1, xzr
004eea234 	add	x8, x8, x9
004eea238 	ldp	q0, q1, [x8]
004eea23c 	stp	q0, q1, [x25, #128]
004eea240 	ldp	q0, q2, [x8, #32]
004eea244 	stp	q0, q2, [x25, #160]
004eea248 	bl	#-3768056 ; -> 0x4b52350 SilentInt::op_Implicit
004eea24c 	cmp	w0, #1
004eea250 	b.lt	#368 ; -> 0x4eea3c0 
004eea254 	mov	x0, x19
004eea258 	mov	x1, xzr
004eea25c 	bl	#1229608 ; -> 0x5016584 Character::get_Hp_max
004eea260 	ldr	x8, [x19, #312]
004eea264 	cbz	x8, #1544 ; -> 0x4eea86c 
004eea268 	mov	w9, #10664
004eea26c 	mov	x20, x0
004eea270 	mov	x21, x1
004eea274 	add	x8, x8, x9
004eea278 	add	x0, sp, #576
004eea27c 	mov	x1, xzr
004eea280 	ldp	q0, q1, [x8]
004eea284 	stp	q0, q1, [x25, #64]
004eea288 	ldp	q0, q2, [x8, #32]
004eea28c 	stp	q0, q2, [x25, #96]
004eea290 	bl	#-3768128 ; -> 0x4b52350 SilentInt::op_Implicit
004eea294 	ldr	x8, [x24]
004eea298 	mov	w22, w0
004eea29c 	ldr	w9, [x8, #228]
004eea2a0 	cbnz	w9, #12 ; -> 0x4eea2ac 
004eea2a4 	mov	x0, x8
004eea2a8 	bl	#-9803464 ; -> 0x4590be0 
004eea2ac 	mov	w23, #100
004eea2b0 	mov	w26, #10000
004eea2b4 	mov	x1, xzr
004eea2b8 	madd	w8, w22, w23, w26
004eea2bc 	sxtw	x0, w8
004eea2c0 	bl	#69805660 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eea2c4 	mov	x2, x0
004eea2c8 	mov	x3, x1
004eea2cc 	mov	x0, x20
004eea2d0 	mov	x1, x21
004eea2d4 	mov	x4, xzr
004eea2d8 	bl	#69797228 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eea2dc 	mov	x20, x0
004eea2e0 	mov	x21, x1
004eea2e4 	mov	w0, #10000
004eea2e8 	mov	x1, xzr
004eea2ec 	bl	#69807288 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea2f0 	mov	x2, x0
004eea2f4 	mov	x3, x1
004eea2f8 	mov	x0, x20
004eea2fc 	mov	x1, x21
004eea300 	mov	x4, xzr
004eea304 	bl	#69797684 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eea308 	mov	x2, x0
004eea30c 	mov	x3, x1
004eea310 	mov	x0, x19
004eea314 	mov	x1, x2
004eea318 	mov	x2, x3
004eea31c 	mov	x3, xzr
004eea320 	bl	#1229488 ; -> 0x50165d0 Character::set_Hp_max
004eea324 	ldr	x8, [x19, #312]
004eea328 	cbz	x8, #1348 ; -> 0x4eea86c 
004eea32c 	mov	w9, #10664
004eea330 	ldr	x20, [x19, #1800]
004eea334 	ldr	x21, [x19, #1792]
004eea338 	add	x8, x8, x9
004eea33c 	add	x0, sp, #512
004eea340 	mov	x1, xzr
004eea344 	ldp	q0, q1, [x8]
004eea348 	stp	q0, q1, [x25]
004eea34c 	ldp	q0, q2, [x8, #32]
004eea350 	stp	q0, q2, [x25, #32]
004eea354 	bl	#-3768324 ; -> 0x4b52350 SilentInt::op_Implicit
004eea358 	madd	w8, w0, w23, w26
004eea35c 	mov	x1, xzr
004eea360 	sxtw	x0, w8
004eea364 	bl	#69805496 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004eea368 	mov	x2, x0
004eea36c 	mov	x3, x1
004eea370 	mov	x0, x21
004eea374 	mov	x1, x20
004eea378 	mov	x4, xzr
004eea37c 	bl	#69797064 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eea380 	mov	x20, x0
004eea384 	mov	x21, x1
004eea388 	mov	w0, #10000
004eea38c 	mov	x1, xzr
004eea390 	bl	#69807124 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea394 	mov	x2, x0
004eea398 	mov	x3, x1
004eea39c 	mov	x0, x20
004eea3a0 	mov	x1, x21
004eea3a4 	mov	x4, xzr
004eea3a8 	bl	#69797520 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eea3ac 	str	x0, [x19, #1792]
004eea3b0 	add	x0, x19, #1800
004eea3b4 	str	x1, [x19, #1800]
004eea3b8 	mov	x1, xzr
004eea3bc 	bl	#-9804216 ; -> 0x4590a04 
004eea3c0 	adrp	x22, #97406976 ; -> 0xabcf000 
004eea3c4 	ldrb	w8, [x22, #636]
004eea3c8 	cbnz	w8, #24 ; -> 0x4eea3e0 
004eea3cc 	adrp	x0, #89149440 ; -> 0xa3ef000 
004eea3d0 	ldr	x0, [x0, #3328]
004eea3d4 	bl	#-9804148 ; -> 0x4590a60 
004eea3d8 	mov	w8, #1
004eea3dc 	strb	w8, [x22, #636]
004eea3e0 	adrp	x23, #89149440 ; -> 0xa3ef000 
004eea3e4 	adrp	x8, #89116672 ; -> 0xa3e7000 
004eea3e8 	ldr	x23, [x23, #3328]
004eea3ec 	ldr	x8, [x8, #1192]
004eea3f0 	ldr	x9, [x23]
004eea3f4 	ldr	x0, [x8]
004eea3f8 	ldr	x8, [x9, #184]
004eea3fc 	ldr	w9, [x0, #228]
004eea400 	ldr	x20, [x8]
004eea404 	cbnz	w9, #8 ; -> 0x4eea40c 
004eea408 	bl	#-9803816 ; -> 0x4590be0 
004eea40c 	mov	x0, x20
004eea410 	mov	x1, xzr
004eea414 	mov	x2, xzr
004eea418 	bl	#78745208 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
004eea41c 	tbz	w0, #0, #1040 ; -> 0x4eea82c 
004eea420 	ldrb	w8, [x22, #636]
004eea424 	cbnz	w8, #24 ; -> 0x4eea43c 
004eea428 	adrp	x0, #89149440 ; -> 0xa3ef000 
004eea42c 	ldr	x0, [x0, #3328]
004eea430 	bl	#-9804240 ; -> 0x4590a60 
004eea434 	mov	w8, #1
004eea438 	strb	w8, [x22, #636]
004eea43c 	ldr	x8, [x23]
004eea440 	ldr	x8, [x8, #184]
004eea444 	ldr	x0, [x8]
004eea448 	cbz	x0, #1060 ; -> 0x4eea86c 
004eea44c 	mov	x1, xzr
004eea450 	bl	#1401608 ; -> 0x5040758 DragonValleyManager::get_IsDragonValleyBattleMode
004eea454 	tbz	w0, #0, #984 ; -> 0x4eea82c 
004eea458 	ldrb	w8, [x22, #636]
004eea45c 	cbnz	w8, #24 ; -> 0x4eea474 
004eea460 	adrp	x0, #89149440 ; -> 0xa3ef000 
004eea464 	ldr	x0, [x0, #3328]
004eea468 	bl	#-9804296 ; -> 0x4590a60 
004eea46c 	mov	w8, #1
004eea470 	strb	w8, [x22, #636]
004eea474 	ldr	x8, [x23]
004eea478 	ldr	x8, [x8, #184]
004eea47c 	ldr	x8, [x8]
004eea480 	cbz	x8, #1004 ; -> 0x4eea86c 
004eea484 	ldr	x25, [x8, #96]
004eea488 	cbz	x25, #996 ; -> 0x4eea86c 
004eea48c 	add	x0, sp, #440
004eea490 	add	x1, x25, #2280
004eea494 	mov	w2, #72
004eea498 	bl	#82318424 ; -> 0x9d6b8f0 
004eea49c 	add	x0, sp, #440
004eea4a0 	mov	x1, xzr
004eea4a4 	bl	#-3770236 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea4a8 	fcmp	s0, #0.0
004eea4ac 	b.le	#216 ; -> 0x4eea584 
004eea4b0 	mov	x0, x19
004eea4b4 	mov	x1, xzr
004eea4b8 	bl	#1229004 ; -> 0x5016584 Character::get_Hp_max
004eea4bc 	mov	x20, x0
004eea4c0 	mov	x21, x1
004eea4c4 	add	x0, sp, #368
004eea4c8 	add	x1, x25, #2280
004eea4cc 	mov	w2, #72
004eea4d0 	bl	#82318368 ; -> 0x9d6b8f0 
004eea4d4 	add	x0, sp, #368
004eea4d8 	mov	x1, xzr
004eea4dc 	bl	#-3770292 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea4e0 	ldr	x0, [x24]
004eea4e4 	fmov	s8, s0
004eea4e8 	ldr	w8, [x0, #228]
004eea4ec 	cbnz	w8, #8 ; -> 0x4eea4f4 
004eea4f0 	bl	#-9804048 ; -> 0x4590be0 
004eea4f4 	mov	w8, #1120403456
004eea4f8 	mov	x1, xzr
004eea4fc 	fmov	s0, w8
004eea500 	mov	w8, #2139095040
004eea504 	fadd	s1, s8, s0
004eea508 	fmul	s0, s1, s0
004eea50c 	fmov	s1, w8
004eea510 	mov	w8, #-2147483648
004eea514 	fcvtzs	w9, s0
004eea518 	fcmp	s0, s1
004eea51c 	csel	w0, w8, w9, eq
004eea520 	bl	#69806724 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea524 	mov	x2, x0
004eea528 	mov	x3, x1
004eea52c 	mov	x0, x20
004eea530 	mov	x1, x21
004eea534 	mov	x4, xzr
004eea538 	bl	#69796620 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eea53c 	mov	x20, x0
004eea540 	mov	x21, x1
004eea544 	mov	w0, #10000
004eea548 	mov	x1, xzr
004eea54c 	bl	#69806680 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea550 	mov	x2, x0
004eea554 	mov	x3, x1
004eea558 	mov	x0, x20
004eea55c 	mov	x1, x21
004eea560 	mov	x4, xzr
004eea564 	bl	#69797076 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eea568 	mov	x2, x0
004eea56c 	mov	x3, x1
004eea570 	mov	x0, x19
004eea574 	mov	x1, x2
004eea578 	mov	x2, x3
004eea57c 	mov	x3, xzr
004eea580 	bl	#1228880 ; -> 0x50165d0 Character::set_Hp_max
004eea584 	add	x0, sp, #296
004eea588 	add	x1, x25, #2352
004eea58c 	mov	w2, #72
004eea590 	bl	#82318176 ; -> 0x9d6b8f0 
004eea594 	add	x0, sp, #296
004eea598 	mov	x1, xzr
004eea59c 	bl	#-3770484 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea5a0 	fcmp	s0, #0.0
004eea5a4 	b.le	#196 ; -> 0x4eea668 
004eea5a8 	ldr	x20, [x19, #1792]
004eea5ac 	ldr	x21, [x19, #1800]
004eea5b0 	add	x0, sp, #224
004eea5b4 	add	x1, x25, #2352
004eea5b8 	mov	w2, #72
004eea5bc 	bl	#82318132 ; -> 0x9d6b8f0 
004eea5c0 	add	x0, sp, #224
004eea5c4 	mov	x1, xzr
004eea5c8 	bl	#-3770528 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea5cc 	ldr	x0, [x24]
004eea5d0 	fmov	s8, s0
004eea5d4 	ldr	w8, [x0, #228]
004eea5d8 	cbnz	w8, #8 ; -> 0x4eea5e0 
004eea5dc 	bl	#-9804284 ; -> 0x4590be0 
004eea5e0 	mov	w8, #1120403456
004eea5e4 	mov	x1, xzr
004eea5e8 	fmov	s0, w8
004eea5ec 	mov	w8, #2139095040
004eea5f0 	fadd	s1, s8, s0
004eea5f4 	fmul	s0, s1, s0
004eea5f8 	fmov	s1, w8
004eea5fc 	mov	w8, #-2147483648
004eea600 	fcvtzs	w9, s0
004eea604 	fcmp	s0, s1
004eea608 	csel	w0, w8, w9, eq
004eea60c 	bl	#69806488 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea610 	mov	x2, x0
004eea614 	mov	x3, x1
004eea618 	mov	x0, x20
004eea61c 	mov	x1, x21
004eea620 	mov	x4, xzr
004eea624 	bl	#69796384 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eea628 	mov	x20, x0
004eea62c 	mov	x21, x1
004eea630 	mov	w0, #10000
004eea634 	mov	x1, xzr
004eea638 	bl	#69806444 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea63c 	mov	x2, x0
004eea640 	mov	x3, x1
004eea644 	mov	x0, x20
004eea648 	mov	x1, x21
004eea64c 	mov	x4, xzr
004eea650 	bl	#69796840 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eea654 	str	x0, [x19, #1792]
004eea658 	add	x0, x19, #1800
004eea65c 	str	x1, [x19, #1800]
004eea660 	mov	x1, xzr
004eea664 	bl	#-9804896 ; -> 0x4590a04 
004eea668 	ldrb	w8, [x22, #636]
004eea66c 	cbnz	w8, #24 ; -> 0x4eea684 
004eea670 	adrp	x0, #89149440 ; -> 0xa3ef000 
004eea674 	ldr	x0, [x0, #3328]
004eea678 	bl	#-9804824 ; -> 0x4590a60 
004eea67c 	mov	w8, #1
004eea680 	strb	w8, [x22, #636]
004eea684 	ldr	x8, [x23]
004eea688 	ldr	x8, [x8, #184]
004eea68c 	ldr	x8, [x8]
004eea690 	cbz	x8, #476 ; -> 0x4eea86c 
004eea694 	ldr	x22, [x8, #104]
004eea698 	cbz	x22, #468 ; -> 0x4eea86c 
004eea69c 	add	x0, sp, #152
004eea6a0 	add	x1, x22, #208
004eea6a4 	mov	w2, #72
004eea6a8 	bl	#82317896 ; -> 0x9d6b8f0 
004eea6ac 	add	x0, sp, #152
004eea6b0 	mov	x1, xzr
004eea6b4 	bl	#-3770764 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea6b8 	fcmp	s0, #0.0
004eea6bc 	b.le	#368 ; -> 0x4eea82c 
004eea6c0 	mov	x0, x19
004eea6c4 	mov	x1, xzr
004eea6c8 	bl	#1228476 ; -> 0x5016584 Character::get_Hp_max
004eea6cc 	mov	x20, x0
004eea6d0 	mov	x21, x1
004eea6d4 	add	x0, sp, #80
004eea6d8 	add	x1, x22, #208
004eea6dc 	mov	w2, #72
004eea6e0 	bl	#82317840 ; -> 0x9d6b8f0 
004eea6e4 	add	x0, sp, #80
004eea6e8 	mov	x1, xzr
004eea6ec 	bl	#-3770820 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea6f0 	ldr	x0, [x24]
004eea6f4 	fmov	s8, s0
004eea6f8 	ldr	w8, [x0, #228]
004eea6fc 	cbnz	w8, #8 ; -> 0x4eea704 
004eea700 	bl	#-9804576 ; -> 0x4590be0 
004eea704 	mov	w8, #1120403456
004eea708 	mov	w23, #-2147483648
004eea70c 	mov	x1, xzr
004eea710 	fmov	s9, w8
004eea714 	mov	w8, #2139095040
004eea718 	fadd	s0, s8, s9
004eea71c 	fmov	s8, w8
004eea720 	fmul	s0, s0, s9
004eea724 	fcvtzs	w9, s0
004eea728 	fcmp	s0, s8
004eea72c 	csel	w0, w23, w9, eq
004eea730 	bl	#69806196 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea734 	mov	x2, x0
004eea738 	mov	x3, x1
004eea73c 	mov	x0, x20
004eea740 	mov	x1, x21
004eea744 	mov	x4, xzr
004eea748 	bl	#69796092 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eea74c 	mov	x20, x0
004eea750 	mov	x21, x1
004eea754 	mov	w0, #10000
004eea758 	mov	x1, xzr
004eea75c 	bl	#69806152 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea760 	mov	x2, x0
004eea764 	mov	x3, x1
004eea768 	mov	x0, x20
004eea76c 	mov	x1, x21
004eea770 	mov	x4, xzr
004eea774 	bl	#69796548 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eea778 	mov	x2, x0
004eea77c 	mov	x3, x1
004eea780 	mov	x0, x19
004eea784 	mov	x1, x2
004eea788 	mov	x2, x3
004eea78c 	mov	x3, xzr
004eea790 	bl	#1228352 ; -> 0x50165d0 Character::set_Hp_max
004eea794 	ldr	x20, [x19, #1792]
004eea798 	ldr	x21, [x19, #1800]
004eea79c 	add	x0, sp, #8
004eea7a0 	add	x1, x22, #208
004eea7a4 	mov	w2, #72
004eea7a8 	bl	#82317640 ; -> 0x9d6b8f0 
004eea7ac 	add	x0, sp, #8
004eea7b0 	mov	x1, xzr
004eea7b4 	bl	#-3771020 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eea7b8 	fadd	s0, s0, s9
004eea7bc 	mov	x1, xzr
004eea7c0 	fmul	s0, s0, s9
004eea7c4 	fcvtzs	w8, s0
004eea7c8 	fcmp	s0, s8
004eea7cc 	csel	w0, w23, w8, eq
004eea7d0 	bl	#69806036 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea7d4 	mov	x2, x0
004eea7d8 	mov	x3, x1
004eea7dc 	mov	x0, x20
004eea7e0 	mov	x1, x21
004eea7e4 	mov	x4, xzr
004eea7e8 	bl	#69795932 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004eea7ec 	mov	x20, x0
004eea7f0 	mov	x21, x1
004eea7f4 	mov	w0, #10000
004eea7f8 	mov	x1, xzr
004eea7fc 	bl	#69805992 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004eea800 	mov	x2, x0
004eea804 	mov	x3, x1
004eea808 	mov	x0, x20
004eea80c 	mov	x1, x21
004eea810 	mov	x4, xzr
004eea814 	bl	#69796388 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004eea818 	str	x0, [x19, #1792]
004eea81c 	add	x0, x19, #1800
004eea820 	str	x1, [x19, #1800]
004eea824 	mov	x1, xzr
004eea828 	bl	#-9805348 ; -> 0x4590a04 
004eea82c 	ldr	x8, [x19, #1840]
004eea830 	cbz	x8, #60 ; -> 0x4eea86c 
004eea834 	ldr	x9, [x8, #24]
004eea838 	ldr	x0, [x8, #64]
004eea83c 	ldr	x1, [x8, #40]
004eea840 	blr	x9
004eea844 	mov	x0, x19
004eea848 	bl	#30844 ; -> 0x4ef20c4 PlayerBase::SetHpBar_Effect_FillAmount
004eea84c 	add	sp, sp, #2400
004eea850 	ldp	x20, x19, [sp, #80]
004eea854 	ldp	x22, x21, [sp, #64]
004eea858 	ldp	x24, x23, [sp, #48]
004eea85c 	ldp	x26, x25, [sp, #32]
004eea860 	ldp	x29, x30, [sp, #16]
004eea864 	ldp	d9, d8, [sp], #96
004eea868 	ret
004eea86c 	bl	#-9804640 ; -> 0x4590d0c 
