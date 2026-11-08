004ee7294 	str	d8, [sp, #-96]!
004ee7298 	str	x29, [sp, #8]
004ee729c 	stp	x30, x27, [sp, #16]
004ee72a0 	stp	x26, x25, [sp, #32]
004ee72a4 	stp	x24, x23, [sp, #48]
004ee72a8 	stp	x22, x21, [sp, #64]
004ee72ac 	stp	x20, x19, [sp, #80]
004ee72b0 	sub	sp, sp, #3232
004ee72b4 	adrp	x20, #97443840 ; -> 0xabd5000
004ee72b8 	mov	x19, x0
004ee72bc 	ldrb	w8, [x20, #1444]
004ee72c0 	tbnz	w8, #0, #36 ; -> 0x4ee72e4
004ee72c4 	adrp	x0, #89137152 ; -> 0xa3e9000
004ee72c8 	ldr	x0, [x0, #3552]
004ee72cc 	bl	#-9791596 ; -> 0x4590a60
004ee72d0 	adrp	x0, #89128960 ; -> 0xa3e7000
004ee72d4 	ldr	x0, [x0, #1192]
004ee72d8 	bl	#-9791608 ; -> 0x4590a60
004ee72dc 	mov	w8, #1
004ee72e0 	strb	w8, [x20, #1444]
004ee72e4 	movi	v0.2d, #0000000000000000
004ee72e8 	mov	w0, #4396
004ee72ec 	mov	x1, xzr
004ee72f0 	str	q0, [sp, #3216]
004ee72f4 	str	q0, [sp, #3200]
004ee72f8 	str	q0, [sp, #3184]
004ee72fc 	str	q0, [sp, #3168]
004ee7300 	str	q0, [sp, #3152]
004ee7304 	str	q0, [sp, #3136]
004ee7308 	str	q0, [sp, #3120]
004ee730c 	str	q0, [sp, #3104]
004ee7310 	bl	#-2751852 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
004ee7314 	tbz	w0, #0, #64 ; -> 0x4ee7354
004ee7318 	mov	w0, #4396
004ee731c 	mov	x1, xzr
004ee7320 	bl	#-2751688 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
004ee7324 	cbz	x0, #7292 ; -> 0x4ee8fa0
004ee7328 	mov	x1, x19
004ee732c 	mov	x2, xzr
004ee7330 	add	sp, sp, #3232
004ee7334 	ldp	x20, x19, [sp, #80]
004ee7338 	ldr	x29, [sp, #8]
004ee733c 	ldp	x22, x21, [sp, #64]
004ee7340 	ldp	x24, x23, [sp, #48]
004ee7344 	ldp	x26, x25, [sp, #32]
004ee7348 	ldp	x30, x27, [sp, #16]
004ee734c 	ldr	d8, [sp], #96
004ee7350 	b	#-3575344 ; -> 0x4b7e520 [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0]
004ee7354 	mov	x0, x19
004ee7358 	bl	#26356 ; -> 0x4eeda4c [PlayerBase::GetPresetBattleStat]
004ee735c 	cbz	x0, #48 ; -> 0x4ee738c
004ee7360 	mov	x1, x0
004ee7364 	mov	x0, x19
004ee7368 	add	sp, sp, #3232
004ee736c 	ldp	x20, x19, [sp, #80]
004ee7370 	ldr	x29, [sp, #8]
004ee7374 	ldp	x22, x21, [sp, #64]
004ee7378 	ldp	x24, x23, [sp, #48]
004ee737c 	ldp	x26, x25, [sp, #32]
004ee7380 	ldp	x30, x27, [sp, #16]
004ee7384 	ldr	d8, [sp], #96
004ee7388 	b	#37324 ; -> 0x4ef0554 [PlayerBase::Atk_Cal_PresetBattle]
004ee738c 	ldr	x20, [x19, #1464]
004ee7390 	ldr	x21, [x19, #1472]
004ee7394 	add	x8, sp, #3040
004ee7398 	mov	x0, x19
004ee739c 	bl	#31656 ; -> 0x4eeef44 [PlayerBase::get_AtkBase]
004ee73a0 	ldr	q0, [sp, #3040]
004ee73a4 	ldr	q1, [sp, #3056]
004ee73a8 	add	x0, sp, #3168
004ee73ac 	ldr	q2, [sp, #3088]
004ee73b0 	mov	x1, xzr
004ee73b4 	str	q0, [sp, #3168]
004ee73b8 	ldr	q0, [sp, #3072]
004ee73bc 	str	q1, [sp, #3184]
004ee73c0 	str	q0, [sp, #3200]
004ee73c4 	str	q2, [sp, #3216]
004ee73c8 	bl	#-3755940 ; -> 0x4b52424 [SilentLong::get_Value]
004ee73cc 	adrp	x24, #89137152 ; -> 0xa3e9000
004ee73d0 	mov	x22, x0
004ee73d4 	ldr	x24, [x24, #3552]
004ee73d8 	ldr	x8, [x24]
004ee73dc 	ldr	w9, [x8, #228]
004ee73e0 	cbnz	w9, #12 ; -> 0x4ee73ec
004ee73e4 	mov	x0, x8
004ee73e8 	bl	#-9791496 ; -> 0x4590be0
004ee73ec 	mov	x0, x22
004ee73f0 	mov	x1, xzr
004ee73f4 	bl	#69817640 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee73f8 	mov	x2, x0
004ee73fc 	mov	x3, x1
004ee7400 	mov	x0, x20
004ee7404 	mov	x1, x21
004ee7408 	mov	x4, xzr
004ee740c 	bl	#69809208 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7410 	mov	x20, x0
004ee7414 	add	x8, sp, #2976
004ee7418 	mov	x0, x19
004ee741c 	mov	x21, x1
004ee7420 	bl	#34084 ; -> 0x4eef944 [PlayerBase::get_AtkEquipment]
004ee7424 	ldr	q0, [sp, #2976]
004ee7428 	ldr	q1, [sp, #2992]
004ee742c 	add	x0, sp, #3168
004ee7430 	ldr	q2, [sp, #3024]
004ee7434 	mov	x1, xzr
004ee7438 	str	q0, [sp, #3168]
004ee743c 	ldr	q0, [sp, #3008]
004ee7440 	str	q1, [sp, #3184]
004ee7444 	str	q0, [sp, #3200]
004ee7448 	str	q2, [sp, #3216]
004ee744c 	bl	#-3756072 ; -> 0x4b52424 [SilentLong::get_Value]
004ee7450 	mov	x1, xzr
004ee7454 	bl	#69817544 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee7458 	mov	x2, x0
004ee745c 	mov	x3, x1
004ee7460 	mov	x0, x20
004ee7464 	mov	x1, x21
004ee7468 	mov	x4, xzr
004ee746c 	bl	#69809112 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7470 	mov	x20, x0
004ee7474 	add	x8, sp, #2912
004ee7478 	mov	x0, x19
004ee747c 	mov	x21, x1
004ee7480 	bl	#32772 ; -> 0x4eef484 [PlayerBase::get_AtkAdd]
004ee7484 	ldr	q0, [sp, #2912]
004ee7488 	ldr	q1, [sp, #2928]
004ee748c 	add	x0, sp, #3168
004ee7490 	ldr	q2, [sp, #2960]
004ee7494 	mov	x1, xzr
004ee7498 	str	q0, [sp, #3168]
004ee749c 	ldr	q0, [sp, #2944]
004ee74a0 	str	q1, [sp, #3184]
004ee74a4 	str	q0, [sp, #3200]
004ee74a8 	str	q2, [sp, #3216]
004ee74ac 	bl	#-3756168 ; -> 0x4b52424 [SilentLong::get_Value]
004ee74b0 	mov	x1, xzr
004ee74b4 	bl	#69817448 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee74b8 	mov	x2, x0
004ee74bc 	mov	x3, x1
004ee74c0 	mov	x0, x20
004ee74c4 	mov	x1, x21
004ee74c8 	mov	x4, xzr
004ee74cc 	bl	#69809016 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee74d0 	mov	x20, x0
004ee74d4 	add	x8, sp, #2848
004ee74d8 	mov	x0, x19
004ee74dc 	mov	x21, x1
004ee74e0 	bl	#34384 ; -> 0x4eefb30 [PlayerBase::get_AtkClass]
004ee74e4 	ldr	q0, [sp, #2848]
004ee74e8 	ldr	q1, [sp, #2864]
004ee74ec 	add	x0, sp, #3168
004ee74f0 	ldr	q2, [sp, #2896]
004ee74f4 	mov	x1, xzr
004ee74f8 	str	q0, [sp, #3168]
004ee74fc 	ldr	q0, [sp, #2880]
004ee7500 	str	q1, [sp, #3184]
004ee7504 	str	q0, [sp, #3200]
004ee7508 	str	q2, [sp, #3216]
004ee750c 	bl	#-3756264 ; -> 0x4b52424 [SilentLong::get_Value]
004ee7510 	mov	x1, xzr
004ee7514 	bl	#69817352 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee7518 	mov	x2, x0
004ee751c 	mov	x3, x1
004ee7520 	mov	x0, x20
004ee7524 	mov	x1, x21
004ee7528 	mov	x4, xzr
004ee752c 	bl	#69808920 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7530 	mov	x20, x0
004ee7534 	ldr	x0, [x19, #312]
004ee7538 	cbz	x0, #6760 ; -> 0x4ee8fa0
004ee753c 	mov	x21, x1
004ee7540 	add	x8, sp, #2784
004ee7544 	mov	x1, xzr
004ee7548 	bl	#-1665908 ; -> 0x4d509d4 [DatabaseManager::get_SkillEffect_AtkDmg]
004ee754c 	ldr	q0, [sp, #2784]
004ee7550 	ldr	q1, [sp, #2800]
004ee7554 	add	x0, sp, #3104
004ee7558 	ldr	q2, [sp, #2832]
004ee755c 	mov	x1, xzr
004ee7560 	str	q0, [sp, #3104]
004ee7564 	ldr	q0, [sp, #2816]
004ee7568 	str	q1, [sp, #3120]
004ee756c 	str	q0, [sp, #3136]
004ee7570 	str	q2, [sp, #3152]
004ee7574 	bl	#-3757924 ; -> 0x4b51e10 [SilentInt::get_Value]
004ee7578 	mov	x1, xzr
004ee757c 	bl	#69818920 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7580 	mov	x2, x0
004ee7584 	mov	x3, x1
004ee7588 	mov	x0, x20
004ee758c 	mov	x1, x21
004ee7590 	mov	x4, xzr
004ee7594 	bl	#69808816 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7598 	mov	x20, x0
004ee759c 	add	x8, sp, #2720
004ee75a0 	mov	x0, x19
004ee75a4 	mov	x21, x1
004ee75a8 	bl	#32112 ; -> 0x4eef318 [PlayerBase::get_AtkTotal]
004ee75ac 	ldr	q0, [sp, #2720]
004ee75b0 	ldr	q1, [sp, #2736]
004ee75b4 	add	x0, sp, #3168
004ee75b8 	ldr	q2, [sp, #2768]
004ee75bc 	mov	x1, xzr
004ee75c0 	str	q0, [sp, #3168]
004ee75c4 	ldr	q0, [sp, #2752]
004ee75c8 	str	q1, [sp, #3184]
004ee75cc 	str	q0, [sp, #3200]
004ee75d0 	str	q2, [sp, #3216]
004ee75d4 	bl	#-3756464 ; -> 0x4b52424 [SilentLong::get_Value]
004ee75d8 	mov	x1, xzr
004ee75dc 	bl	#69817152 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee75e0 	mov	x2, x0
004ee75e4 	mov	x3, x1
004ee75e8 	mov	x0, x20
004ee75ec 	mov	x1, x21
004ee75f0 	mov	x4, xzr
004ee75f4 	bl	#69808720 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee75f8 	ldr	x8, [x19, #312]
004ee75fc 	cbz	x8, #6564 ; -> 0x4ee8fa0
004ee7600 	mov	w9, #12744
004ee7604 	mov	x21, x0
004ee7608 	mov	x22, x1
004ee760c 	add	x8, x8, x9
004ee7610 	add	x0, sp, #2656
004ee7614 	mov	x1, xzr
004ee7618 	ldp	q0, q1, [x8]
004ee761c 	add	x20, x19, #744
004ee7620 	str	q0, [sp, #2656]
004ee7624 	ldp	q0, q2, [x8, #32]
004ee7628 	str	q1, [sp, #2672]
004ee762c 	str	q0, [sp, #2688]
004ee7630 	str	q2, [sp, #2704]
004ee7634 	bl	#-3756772 ; -> 0x4b52350 [SilentInt::op_Implicit]
004ee7638 	add	w0, w0, #100
004ee763c 	mov	x1, xzr
004ee7640 	bl	#69818724 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7644 	mov	x2, x0
004ee7648 	mov	x3, x1
004ee764c 	mov	x0, x21
004ee7650 	mov	x1, x22
004ee7654 	mov	x4, xzr
004ee7658 	bl	#69808620 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee765c 	mov	x21, x0
004ee7660 	mov	x0, #58368
004ee7664 	mov	x22, x1
004ee7668 	movk	x0, #21515, lsl #16
004ee766c 	mov	x1, xzr
004ee7670 	movk	x0, #2, lsl #32
004ee7674 	bl	#69817000 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee7678 	mov	x2, x0
004ee767c 	mov	x3, x1
004ee7680 	mov	x0, x21
004ee7684 	mov	x1, x22
004ee7688 	mov	x4, xzr
004ee768c 	bl	#69809068 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee7690 	mov	x2, x0
004ee7694 	mov	x3, x1
004ee7698 	mov	x0, x20
004ee769c 	mov	x1, x2
004ee76a0 	mov	x2, x3
004ee76a4 	mov	x3, xzr
004ee76a8 	bl	#-3762352 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee76ac 	mov	x0, x20
004ee76b0 	mov	x1, xzr
004ee76b4 	bl	#-3763296 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee76b8 	ldr	x8, [x19, #312]
004ee76bc 	cbz	x8, #6372 ; -> 0x4ee8fa0
004ee76c0 	mov	w9, #20320
004ee76c4 	mov	x21, x0
004ee76c8 	mov	x22, x1
004ee76cc 	add	x0, sp, #2584
004ee76d0 	add	x1, x8, x9
004ee76d4 	mov	w2, #72
004ee76d8 	bl	#82330136 ; -> 0x9d6b8f0
004ee76dc 	add	x0, sp, #2584
004ee76e0 	mov	x1, xzr
004ee76e4 	bl	#-3758524 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee76e8 	mov	w8, #1120403456
004ee76ec 	mov	x1, xzr
004ee76f0 	fmov	s1, w8
004ee76f4 	mov	w8, #2139095040
004ee76f8 	fadd	s0, s0, s1
004ee76fc 	fmul	s0, s0, s1
004ee7700 	fmov	s1, w8
004ee7704 	mov	x8, #-9223372036854775808
004ee7708 	fcvtzs	x9, s0
004ee770c 	fcmp	s0, s1
004ee7710 	csel	x0, x8, x9, eq
004ee7714 	bl	#69816840 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee7718 	mov	x2, x0
004ee771c 	mov	x3, x1
004ee7720 	mov	x0, x21
004ee7724 	mov	x1, x22
004ee7728 	mov	x4, xzr
004ee772c 	bl	#69808408 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7730 	mov	x21, x0
004ee7734 	mov	x22, x1
004ee7738 	mov	w0, #10000
004ee773c 	mov	x1, xzr
004ee7740 	bl	#69818468 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7744 	mov	x2, x0
004ee7748 	mov	x3, x1
004ee774c 	mov	x0, x21
004ee7750 	mov	x1, x22
004ee7754 	mov	x4, xzr
004ee7758 	bl	#69808864 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee775c 	mov	x2, x0
004ee7760 	mov	x3, x1
004ee7764 	mov	x0, x20
004ee7768 	mov	x1, x2
004ee776c 	mov	x2, x3
004ee7770 	mov	x3, xzr
004ee7774 	bl	#-3762556 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee7778 	ldr	x8, [x19, #312]
004ee777c 	cbz	x8, #6180 ; -> 0x4ee8fa0
004ee7780 	ldr	d0, [x8, #16336]
004ee7784 	fcmp	d0, #0.0
004ee7788 	b.le	#196 ; -> 0x4ee784c
004ee778c 	mov	x0, x20
004ee7790 	mov	x1, xzr
004ee7794 	bl	#-3763520 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee7798 	ldr	x8, [x19, #312]
004ee779c 	cbz	x8, #6148 ; -> 0x4ee8fa0
004ee77a0 	mov	x21, x0
004ee77a4 	ldr	x0, [x24]
004ee77a8 	ldr	d8, [x8, #16336]
004ee77ac 	mov	x22, x1
004ee77b0 	ldr	w9, [x0, #228]
004ee77b4 	cbnz	w9, #8 ; -> 0x4ee77bc
004ee77b8 	bl	#-9792472 ; -> 0x4590be0
004ee77bc 	mov	x8, #4636737291354636288
004ee77c0 	mov	x1, xzr
004ee77c4 	fmov	d0, x8
004ee77c8 	mov	x8, #9218868437227405312
004ee77cc 	fadd	d1, d8, d0
004ee77d0 	fmul	d0, d1, d0
004ee77d4 	fmov	d1, x8
004ee77d8 	mov	x8, #-9223372036854775808
004ee77dc 	fcvtzs	x9, d0
004ee77e0 	fcmp	d0, d1
004ee77e4 	csel	x0, x8, x9, eq
004ee77e8 	bl	#69816628 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee77ec 	mov	x2, x0
004ee77f0 	mov	x3, x1
004ee77f4 	mov	x0, x21
004ee77f8 	mov	x1, x22
004ee77fc 	mov	x4, xzr
004ee7800 	bl	#69808196 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7804 	mov	x21, x0
004ee7808 	mov	x22, x1
004ee780c 	mov	w0, #10000
004ee7810 	mov	x1, xzr
004ee7814 	bl	#69818256 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7818 	mov	x2, x0
004ee781c 	mov	x3, x1
004ee7820 	mov	x0, x21
004ee7824 	mov	x1, x22
004ee7828 	mov	x4, xzr
004ee782c 	bl	#69808652 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee7830 	mov	x2, x0
004ee7834 	mov	x3, x1
004ee7838 	mov	x0, x20
004ee783c 	mov	x1, x2
004ee7840 	mov	x2, x3
004ee7844 	mov	x3, xzr
004ee7848 	bl	#-3762768 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee784c 	ldr	s0, [x19, #1480]
004ee7850 	fcmp	s0, #0.0
004ee7854 	b.le	#184 ; -> 0x4ee790c
004ee7858 	mov	x0, x20
004ee785c 	mov	x1, xzr
004ee7860 	bl	#-3763724 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee7864 	mov	x21, x0
004ee7868 	ldr	x0, [x24]
004ee786c 	ldr	s8, [x19, #1480]
004ee7870 	mov	x22, x1
004ee7874 	ldr	w8, [x0, #228]
004ee7878 	cbnz	w8, #8 ; -> 0x4ee7880
004ee787c 	bl	#-9792668 ; -> 0x4590be0
004ee7880 	adrp	x8, #-50061312 ; -> 0x1f29000
004ee7884 	mov	x1, xzr
004ee7888 	ldr	s0, [x8, #2416]
004ee788c 	mov	w8, #2139095040
004ee7890 	fmov	s1, w8
004ee7894 	mov	w8, #-2147483648
004ee7898 	fmul	s0, s8, s0
004ee789c 	fcvtzs	w9, s0
004ee78a0 	fcmp	s0, s1
004ee78a4 	csel	w0, w8, w9, eq
004ee78a8 	bl	#69818108 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee78ac 	mov	x2, x0
004ee78b0 	mov	x3, x1
004ee78b4 	mov	x0, x21
004ee78b8 	mov	x1, x22
004ee78bc 	mov	x4, xzr
004ee78c0 	bl	#69808004 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee78c4 	mov	x21, x0
004ee78c8 	mov	x22, x1
004ee78cc 	mov	w0, #10000
004ee78d0 	mov	x1, xzr
004ee78d4 	bl	#69818064 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee78d8 	mov	x2, x0
004ee78dc 	mov	x3, x1
004ee78e0 	mov	x0, x21
004ee78e4 	mov	x1, x22
004ee78e8 	mov	x4, xzr
004ee78ec 	bl	#69808460 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee78f0 	mov	x2, x0
004ee78f4 	mov	x3, x1
004ee78f8 	mov	x0, x20
004ee78fc 	mov	x1, x2
004ee7900 	mov	x2, x3
004ee7904 	mov	x3, xzr
004ee7908 	bl	#-3762960 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee790c 	ldr	x8, [x19, #312]
004ee7910 	cbz	x8, #5776 ; -> 0x4ee8fa0
004ee7914 	mov	w9, #19352
004ee7918 	add	x0, sp, #2512
004ee791c 	mov	w2, #72
004ee7920 	add	x1, x8, x9
004ee7924 	bl	#82329548 ; -> 0x9d6b8f0
004ee7928 	add	x0, sp, #2512
004ee792c 	mov	x1, xzr
004ee7930 	bl	#-3759112 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee7934 	fcmp	s0, #0.0
004ee7938 	b.le	#228 ; -> 0x4ee7a1c
004ee793c 	mov	x0, x20
004ee7940 	mov	x1, xzr
004ee7944 	bl	#-3763952 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee7948 	ldr	x8, [x19, #312]
004ee794c 	cbz	x8, #5716 ; -> 0x4ee8fa0
004ee7950 	mov	w9, #19352
004ee7954 	mov	x21, x0
004ee7958 	mov	x22, x1
004ee795c 	add	x0, sp, #2440
004ee7960 	add	x1, x8, x9
004ee7964 	mov	w2, #72
004ee7968 	bl	#82329480 ; -> 0x9d6b8f0
004ee796c 	add	x0, sp, #2440
004ee7970 	mov	x1, xzr
004ee7974 	bl	#-3759180 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee7978 	ldr	x0, [x24]
004ee797c 	fmov	s8, s0
004ee7980 	ldr	w8, [x0, #228]
004ee7984 	cbnz	w8, #8 ; -> 0x4ee798c
004ee7988 	bl	#-9792936 ; -> 0x4590be0
004ee798c 	mov	w8, #1120403456
004ee7990 	mov	x1, xzr
004ee7994 	fmov	s0, w8
004ee7998 	mov	w8, #2139095040
004ee799c 	fadd	s1, s8, s0
004ee79a0 	fmul	s0, s1, s0
004ee79a4 	fmov	s1, w8
004ee79a8 	mov	w8, #-2147483648
004ee79ac 	fcvtzs	w9, s0
004ee79b0 	fcmp	s0, s1
004ee79b4 	csel	w0, w8, w9, eq
004ee79b8 	bl	#69817836 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee79bc 	mov	x2, x0
004ee79c0 	mov	x3, x1
004ee79c4 	mov	x0, x21
004ee79c8 	mov	x1, x22
004ee79cc 	mov	x4, xzr
004ee79d0 	bl	#69807732 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee79d4 	mov	x21, x0
004ee79d8 	mov	x22, x1
004ee79dc 	mov	w0, #10000
004ee79e0 	mov	x1, xzr
004ee79e4 	bl	#69817792 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee79e8 	mov	x2, x0
004ee79ec 	mov	x3, x1
004ee79f0 	mov	x0, x21
004ee79f4 	mov	x1, x22
004ee79f8 	mov	x4, xzr
004ee79fc 	bl	#69808188 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee7a00 	mov	x2, x0
004ee7a04 	mov	x3, x1
004ee7a08 	mov	x0, x20
004ee7a0c 	mov	x1, x2
004ee7a10 	mov	x2, x3
004ee7a14 	mov	x3, xzr
004ee7a18 	bl	#-3763232 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee7a1c 	add	x0, sp, #2368
004ee7a20 	add	x1, x19, #1488
004ee7a24 	mov	w2, #72
004ee7a28 	bl	#82329288 ; -> 0x9d6b8f0
004ee7a2c 	add	x0, sp, #2368
004ee7a30 	mov	x1, xzr
004ee7a34 	bl	#-3759372 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee7a38 	fcmp	s0, #0.0
004ee7a3c 	b.le	#216 ; -> 0x4ee7b14
004ee7a40 	mov	x0, x20
004ee7a44 	mov	x1, xzr
004ee7a48 	bl	#-3764212 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee7a4c 	mov	x21, x0
004ee7a50 	mov	x22, x1
004ee7a54 	add	x0, sp, #2296
004ee7a58 	add	x1, x19, #1488
004ee7a5c 	mov	w2, #72
004ee7a60 	bl	#82329232 ; -> 0x9d6b8f0
004ee7a64 	add	x0, sp, #2296
004ee7a68 	mov	x1, xzr
004ee7a6c 	bl	#-3759428 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee7a70 	ldr	x0, [x24]
004ee7a74 	fmov	s8, s0
004ee7a78 	ldr	w8, [x0, #228]
004ee7a7c 	cbnz	w8, #8 ; -> 0x4ee7a84
004ee7a80 	bl	#-9793184 ; -> 0x4590be0
004ee7a84 	mov	w8, #1120403456
004ee7a88 	mov	x1, xzr
004ee7a8c 	fmov	s0, w8
004ee7a90 	mov	w8, #2139095040
004ee7a94 	fadd	s1, s8, s0
004ee7a98 	fmul	s0, s1, s0
004ee7a9c 	fmov	s1, w8
004ee7aa0 	mov	w8, #-2147483648
004ee7aa4 	fcvtzs	w9, s0
004ee7aa8 	fcmp	s0, s1
004ee7aac 	csel	w0, w8, w9, eq
004ee7ab0 	bl	#69817588 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7ab4 	mov	x2, x0
004ee7ab8 	mov	x3, x1
004ee7abc 	mov	x0, x21
004ee7ac0 	mov	x1, x22
004ee7ac4 	mov	x4, xzr
004ee7ac8 	bl	#69807484 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7acc 	mov	x21, x0
004ee7ad0 	mov	x22, x1
004ee7ad4 	mov	w0, #10000
004ee7ad8 	mov	x1, xzr
004ee7adc 	bl	#69817544 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7ae0 	mov	x2, x0
004ee7ae4 	mov	x3, x1
004ee7ae8 	mov	x0, x21
004ee7aec 	mov	x1, x22
004ee7af0 	mov	x4, xzr
004ee7af4 	bl	#69807940 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee7af8 	mov	x2, x0
004ee7afc 	mov	x3, x1
004ee7b00 	mov	x0, x20
004ee7b04 	mov	x1, x2
004ee7b08 	mov	x2, x3
004ee7b0c 	mov	x3, xzr
004ee7b10 	bl	#-3763480 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee7b14 	ldr	x8, [x19, #312]
004ee7b18 	cbz	x8, #5256 ; -> 0x4ee8fa0
004ee7b1c 	mov	w9, #11896
004ee7b20 	add	x0, sp, #2224
004ee7b24 	mov	x1, xzr
004ee7b28 	add	x8, x8, x9
004ee7b2c 	ldp	q0, q1, [x8]
004ee7b30 	str	q0, [sp, #2224]
004ee7b34 	ldp	q0, q2, [x8, #32]
004ee7b38 	str	q1, [sp, #2240]
004ee7b3c 	str	q0, [sp, #2256]
004ee7b40 	str	q2, [sp, #2272]
004ee7b44 	bl	#-3756612 ; -> 0x4b52900 [SilentLong::op_Implicit]
004ee7b48 	cmp	x0, #1
004ee7b4c 	b.lt	#216 ; -> 0x4ee7c24
004ee7b50 	mov	x0, x20
004ee7b54 	mov	x1, xzr
004ee7b58 	bl	#-3764484 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee7b5c 	ldr	x8, [x19, #312]
004ee7b60 	cbz	x8, #5184 ; -> 0x4ee8fa0
004ee7b64 	mov	w9, #11896
004ee7b68 	mov	x21, x0
004ee7b6c 	mov	x22, x1
004ee7b70 	add	x8, x8, x9
004ee7b74 	add	x0, sp, #2160
004ee7b78 	mov	x1, xzr
004ee7b7c 	ldp	q0, q1, [x8]
004ee7b80 	str	q0, [sp, #2160]
004ee7b84 	ldp	q0, q2, [x8, #32]
004ee7b88 	str	q1, [sp, #2176]
004ee7b8c 	str	q0, [sp, #2192]
004ee7b90 	str	q2, [sp, #2208]
004ee7b94 	bl	#-3756692 ; -> 0x4b52900 [SilentLong::op_Implicit]
004ee7b98 	ldr	x8, [x24]
004ee7b9c 	mov	x23, x0
004ee7ba0 	ldr	w9, [x8, #228]
004ee7ba4 	cbnz	w9, #12 ; -> 0x4ee7bb0
004ee7ba8 	mov	x0, x8
004ee7bac 	bl	#-9793484 ; -> 0x4590be0
004ee7bb0 	mov	w8, #100
004ee7bb4 	mov	w9, #10000
004ee7bb8 	mov	x1, xzr
004ee7bbc 	madd	w0, w23, w8, w9
004ee7bc0 	bl	#69817316 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7bc4 	mov	x2, x0
004ee7bc8 	mov	x3, x1
004ee7bcc 	mov	x0, x21
004ee7bd0 	mov	x1, x22
004ee7bd4 	mov	x4, xzr
004ee7bd8 	bl	#69807212 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7bdc 	mov	x21, x0
004ee7be0 	mov	x22, x1
004ee7be4 	mov	w0, #10000
004ee7be8 	mov	x1, xzr
004ee7bec 	bl	#69817272 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7bf0 	mov	x2, x0
004ee7bf4 	mov	x3, x1
004ee7bf8 	mov	x0, x21
004ee7bfc 	mov	x1, x22
004ee7c00 	mov	x4, xzr
004ee7c04 	bl	#69807668 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee7c08 	mov	x2, x0
004ee7c0c 	mov	x3, x1
004ee7c10 	mov	x0, x20
004ee7c14 	mov	x1, x2
004ee7c18 	mov	x2, x3
004ee7c1c 	mov	x3, xzr
004ee7c20 	bl	#-3763752 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee7c24 	ldr	x8, [x19, #312]
004ee7c28 	cbz	x8, #4984 ; -> 0x4ee8fa0
004ee7c2c 	mov	w9, #13592
004ee7c30 	add	x0, sp, #2088
004ee7c34 	mov	w2, #72
004ee7c38 	add	x1, x8, x9
004ee7c3c 	bl	#82328756 ; -> 0x9d6b8f0
004ee7c40 	add	x0, sp, #2088
004ee7c44 	mov	x1, xzr
004ee7c48 	bl	#-3759904 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee7c4c 	fcmp	s0, #0.0
004ee7c50 	b.le	#376 ; -> 0x4ee7dc8
004ee7c54 	adrp	x22, #97419264 ; -> 0xabcf000
004ee7c58 	ldrb	w8, [x22, #1161]
004ee7c5c 	cbnz	w8, #24 ; -> 0x4ee7c74
004ee7c60 	adrp	x0, #89169920 ; -> 0xa3f1000
004ee7c64 	ldr	x0, [x0, #4032]
004ee7c68 	bl	#-9794056 ; -> 0x4590a60
004ee7c6c 	mov	w8, #1
004ee7c70 	strb	w8, [x22, #1161]
004ee7c74 	adrp	x23, #89169920 ; -> 0xa3f1000
004ee7c78 	adrp	x8, #89128960 ; -> 0xa3e7000
004ee7c7c 	ldr	x23, [x23, #4032]
004ee7c80 	ldr	x8, [x8, #1192]
004ee7c84 	ldr	x9, [x23]
004ee7c88 	ldr	x0, [x8]
004ee7c8c 	ldr	x8, [x9, #184]
004ee7c90 	ldr	w9, [x0, #228]
004ee7c94 	ldr	x21, [x8]
004ee7c98 	cbnz	w9, #8 ; -> 0x4ee7ca0
004ee7c9c 	bl	#-9793724 ; -> 0x4590be0
004ee7ca0 	mov	x0, x21
004ee7ca4 	mov	x1, xzr
004ee7ca8 	mov	x2, xzr
004ee7cac 	bl	#78755300 ; -> 0x9a03290 [UnityEngine.Object::op_Inequality]
004ee7cb0 	tbz	w0, #0, #280 ; -> 0x4ee7dc8
004ee7cb4 	ldrb	w8, [x22, #1161]
004ee7cb8 	cbnz	w8, #24 ; -> 0x4ee7cd0
004ee7cbc 	adrp	x0, #89169920 ; -> 0xa3f1000
004ee7cc0 	ldr	x0, [x0, #4032]
004ee7cc4 	bl	#-9794148 ; -> 0x4590a60
004ee7cc8 	mov	w8, #1
004ee7ccc 	strb	w8, [x22, #1161]
004ee7cd0 	ldr	x8, [x23]
004ee7cd4 	ldr	x8, [x8, #184]
004ee7cd8 	ldr	x8, [x8]
004ee7cdc 	cbz	x8, #4804 ; -> 0x4ee8fa0
004ee7ce0 	ldr	x8, [x8, #88]
004ee7ce4 	cbz	x8, #228 ; -> 0x4ee7dc8
004ee7ce8 	mov	x0, x20
004ee7cec 	mov	x1, xzr
004ee7cf0 	bl	#-3764892 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee7cf4 	ldr	x8, [x19, #312]
004ee7cf8 	cbz	x8, #4776 ; -> 0x4ee8fa0
004ee7cfc 	mov	w9, #13592
004ee7d00 	mov	x21, x0
004ee7d04 	mov	x22, x1
004ee7d08 	add	x0, sp, #2016
004ee7d0c 	add	x1, x8, x9
004ee7d10 	mov	w2, #72
004ee7d14 	bl	#82328540 ; -> 0x9d6b8f0
004ee7d18 	add	x0, sp, #2016
004ee7d1c 	mov	x1, xzr
004ee7d20 	bl	#-3760120 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee7d24 	ldr	x0, [x24]
004ee7d28 	fmov	s8, s0
004ee7d2c 	ldr	w8, [x0, #228]
004ee7d30 	cbnz	w8, #8 ; -> 0x4ee7d38
004ee7d34 	bl	#-9793876 ; -> 0x4590be0
004ee7d38 	mov	w8, #1120403456
004ee7d3c 	mov	x1, xzr
004ee7d40 	fmov	s0, w8
004ee7d44 	mov	w8, #2139095040
004ee7d48 	fadd	s1, s8, s0
004ee7d4c 	fmul	s0, s1, s0
004ee7d50 	fmov	s1, w8
004ee7d54 	mov	w8, #-2147483648
004ee7d58 	fcvtzs	w9, s0
004ee7d5c 	fcmp	s0, s1
004ee7d60 	csel	w0, w8, w9, eq
004ee7d64 	bl	#69816896 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7d68 	mov	x2, x0
004ee7d6c 	mov	x3, x1
004ee7d70 	mov	x0, x21
004ee7d74 	mov	x1, x22
004ee7d78 	mov	x4, xzr
004ee7d7c 	bl	#69806792 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7d80 	mov	x21, x0
004ee7d84 	mov	x22, x1
004ee7d88 	mov	w0, #10000
004ee7d8c 	mov	x1, xzr
004ee7d90 	bl	#69816852 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7d94 	mov	x2, x0
004ee7d98 	mov	x3, x1
004ee7d9c 	mov	x0, x21
004ee7da0 	mov	x1, x22
004ee7da4 	mov	x4, xzr
004ee7da8 	bl	#69807248 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee7dac 	mov	x2, x0
004ee7db0 	mov	x3, x1
004ee7db4 	mov	x0, x20
004ee7db8 	mov	x1, x2
004ee7dbc 	mov	x2, x3
004ee7dc0 	mov	x3, xzr
004ee7dc4 	bl	#-3764172 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee7dc8 	ldr	x8, [x19, #312]
004ee7dcc 	cbz	x8, #4564 ; -> 0x4ee8fa0
004ee7dd0 	mov	w9, #13880
004ee7dd4 	add	x0, sp, #1944
004ee7dd8 	mov	w2, #72
004ee7ddc 	add	x1, x8, x9
004ee7de0 	bl	#82328336 ; -> 0x9d6b8f0
004ee7de4 	add	x0, sp, #1944
004ee7de8 	mov	x1, xzr
004ee7dec 	bl	#-3760324 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee7df0 	fcmp	s0, #0.0
004ee7df4 	b.le	#228 ; -> 0x4ee7ed8
004ee7df8 	mov	x0, x20
004ee7dfc 	mov	x1, xzr
004ee7e00 	bl	#-3765164 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee7e04 	ldr	x8, [x19, #312]
004ee7e08 	cbz	x8, #4504 ; -> 0x4ee8fa0
004ee7e0c 	mov	w9, #13880
004ee7e10 	mov	x21, x0
004ee7e14 	mov	x22, x1
004ee7e18 	add	x0, sp, #1872
004ee7e1c 	add	x1, x8, x9
004ee7e20 	mov	w2, #72
004ee7e24 	bl	#82328268 ; -> 0x9d6b8f0
004ee7e28 	add	x0, sp, #1872
004ee7e2c 	mov	x1, xzr
004ee7e30 	bl	#-3760392 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee7e34 	ldr	x0, [x24]
004ee7e38 	fmov	s8, s0
004ee7e3c 	ldr	w8, [x0, #228]
004ee7e40 	cbnz	w8, #8 ; -> 0x4ee7e48
004ee7e44 	bl	#-9794148 ; -> 0x4590be0
004ee7e48 	mov	w8, #1120403456
004ee7e4c 	mov	x1, xzr
004ee7e50 	fmov	s0, w8
004ee7e54 	mov	w8, #2139095040
004ee7e58 	fadd	s1, s8, s0
004ee7e5c 	fmul	s0, s1, s0
004ee7e60 	fmov	s1, w8
004ee7e64 	mov	w8, #-2147483648
004ee7e68 	fcvtzs	w9, s0
004ee7e6c 	fcmp	s0, s1
004ee7e70 	csel	w0, w8, w9, eq
004ee7e74 	bl	#69816624 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7e78 	mov	x2, x0
004ee7e7c 	mov	x3, x1
004ee7e80 	mov	x0, x21
004ee7e84 	mov	x1, x22
004ee7e88 	mov	x4, xzr
004ee7e8c 	bl	#69806520 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7e90 	mov	x21, x0
004ee7e94 	mov	x22, x1
004ee7e98 	mov	w0, #10000
004ee7e9c 	mov	x1, xzr
004ee7ea0 	bl	#69816580 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7ea4 	mov	x2, x0
004ee7ea8 	mov	x3, x1
004ee7eac 	mov	x0, x21
004ee7eb0 	mov	x1, x22
004ee7eb4 	mov	x4, xzr
004ee7eb8 	bl	#69806976 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee7ebc 	mov	x2, x0
004ee7ec0 	mov	x3, x1
004ee7ec4 	mov	x0, x20
004ee7ec8 	mov	x1, x2
004ee7ecc 	mov	x2, x3
004ee7ed0 	mov	x3, xzr
004ee7ed4 	bl	#-3764444 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee7ed8 	ldr	x8, [x19, #312]
004ee7edc 	cbz	x8, #4292 ; -> 0x4ee8fa0
004ee7ee0 	mov	w9, #10600
004ee7ee4 	add	x0, sp, #1808
004ee7ee8 	mov	x1, xzr
004ee7eec 	add	x8, x8, x9
004ee7ef0 	ldp	q0, q1, [x8]
004ee7ef4 	str	q0, [sp, #1808]
004ee7ef8 	ldp	q0, q2, [x8, #32]
004ee7efc 	str	q1, [sp, #1824]
004ee7f00 	str	q0, [sp, #1840]
004ee7f04 	str	q2, [sp, #1856]
004ee7f08 	bl	#-3759032 ; -> 0x4b52350 [SilentInt::op_Implicit]
004ee7f0c 	cmp	w0, #1
004ee7f10 	b.lt	#216 ; -> 0x4ee7fe8
004ee7f14 	mov	x0, x20
004ee7f18 	mov	x1, xzr
004ee7f1c 	bl	#-3765448 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee7f20 	ldr	x8, [x19, #312]
004ee7f24 	cbz	x8, #4220 ; -> 0x4ee8fa0
004ee7f28 	mov	w9, #10600
004ee7f2c 	mov	x21, x0
004ee7f30 	mov	x22, x1
004ee7f34 	add	x8, x8, x9
004ee7f38 	add	x0, sp, #1744
004ee7f3c 	mov	x1, xzr
004ee7f40 	ldp	q0, q1, [x8]
004ee7f44 	str	q0, [sp, #1744]
004ee7f48 	ldp	q0, q2, [x8, #32]
004ee7f4c 	str	q1, [sp, #1760]
004ee7f50 	str	q0, [sp, #1776]
004ee7f54 	str	q2, [sp, #1792]
004ee7f58 	bl	#-3759112 ; -> 0x4b52350 [SilentInt::op_Implicit]
004ee7f5c 	ldr	x8, [x24]
004ee7f60 	mov	w23, w0
004ee7f64 	ldr	w9, [x8, #228]
004ee7f68 	cbnz	w9, #12 ; -> 0x4ee7f74
004ee7f6c 	mov	x0, x8
004ee7f70 	bl	#-9794448 ; -> 0x4590be0
004ee7f74 	mov	w8, #100
004ee7f78 	mov	w9, #10000
004ee7f7c 	mov	x1, xzr
004ee7f80 	madd	w0, w23, w8, w9
004ee7f84 	bl	#69816352 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7f88 	mov	x2, x0
004ee7f8c 	mov	x3, x1
004ee7f90 	mov	x0, x21
004ee7f94 	mov	x1, x22
004ee7f98 	mov	x4, xzr
004ee7f9c 	bl	#69806248 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee7fa0 	mov	x21, x0
004ee7fa4 	mov	x22, x1
004ee7fa8 	mov	w0, #10000
004ee7fac 	mov	x1, xzr
004ee7fb0 	bl	#69816308 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee7fb4 	mov	x2, x0
004ee7fb8 	mov	x3, x1
004ee7fbc 	mov	x0, x21
004ee7fc0 	mov	x1, x22
004ee7fc4 	mov	x4, xzr
004ee7fc8 	bl	#69806704 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee7fcc 	mov	x2, x0
004ee7fd0 	mov	x3, x1
004ee7fd4 	mov	x0, x20
004ee7fd8 	mov	x1, x2
004ee7fdc 	mov	x2, x3
004ee7fe0 	mov	x3, xzr
004ee7fe4 	bl	#-3764716 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee7fe8 	adrp	x25, #97419264 ; -> 0xabcf000
004ee7fec 	ldrb	w8, [x25, #636]
004ee7ff0 	cbnz	w8, #24 ; -> 0x4ee8008
004ee7ff4 	adrp	x0, #89161728 ; -> 0xa3ef000
004ee7ff8 	ldr	x0, [x0, #3328]
004ee7ffc 	bl	#-9794972 ; -> 0x4590a60
004ee8000 	mov	w8, #1
004ee8004 	strb	w8, [x25, #636]
004ee8008 	adrp	x26, #89157632 ; -> 0xa3ef000
004ee800c 	adrp	x27, #89124864 ; -> 0xa3e7000
004ee8010 	ldr	x26, [x26, #3328]
004ee8014 	ldr	x27, [x27, #1192]
004ee8018 	ldr	x8, [x26]
004ee801c 	ldr	x0, [x27]
004ee8020 	ldr	x8, [x8, #184]
004ee8024 	ldr	w9, [x0, #228]
004ee8028 	ldr	x21, [x8]
004ee802c 	cbnz	w9, #8 ; -> 0x4ee8034
004ee8030 	bl	#-9794640 ; -> 0x4590be0
004ee8034 	mov	x0, x21
004ee8038 	mov	x1, xzr
004ee803c 	mov	x2, xzr
004ee8040 	bl	#78754384 ; -> 0x9a03290 [UnityEngine.Object::op_Inequality]
004ee8044 	tbz	w0, #0, #2644 ; -> 0x4ee8a98
004ee8048 	ldrb	w8, [x25, #636]
004ee804c 	cbnz	w8, #24 ; -> 0x4ee8064
004ee8050 	adrp	x0, #89157632 ; -> 0xa3ef000
004ee8054 	ldr	x0, [x0, #3328]
004ee8058 	bl	#-9795064 ; -> 0x4590a60
004ee805c 	mov	w8, #1
004ee8060 	strb	w8, [x25, #636]
004ee8064 	ldr	x8, [x26]
004ee8068 	ldr	x8, [x8, #184]
004ee806c 	ldr	x0, [x8]
004ee8070 	cbz	x0, #3888 ; -> 0x4ee8fa0
004ee8074 	mov	x1, xzr
004ee8078 	bl	#1410784 ; -> 0x5040758 [DragonValleyManager::get_IsDragonValleyBattleMode]
004ee807c 	tbz	w0, #0, #2588 ; -> 0x4ee8a98
004ee8080 	ldrb	w8, [x25, #636]
004ee8084 	cbnz	w8, #24 ; -> 0x4ee809c
004ee8088 	adrp	x0, #89157632 ; -> 0xa3ef000
004ee808c 	ldr	x0, [x0, #3328]
004ee8090 	bl	#-9795120 ; -> 0x4590a60
004ee8094 	mov	w8, #1
004ee8098 	strb	w8, [x25, #636]
004ee809c 	ldr	x8, [x26]
004ee80a0 	ldr	x8, [x8, #184]
004ee80a4 	ldr	x8, [x8]
004ee80a8 	cbz	x8, #3832 ; -> 0x4ee8fa0
004ee80ac 	ldr	x23, [x8, #96]
004ee80b0 	cbz	x23, #3824 ; -> 0x4ee8fa0
004ee80b4 	add	x0, sp, #1672
004ee80b8 	add	x1, x23, #552
004ee80bc 	mov	w2, #72
004ee80c0 	bl	#82327600 ; -> 0x9d6b8f0
004ee80c4 	add	x0, sp, #1672
004ee80c8 	mov	x1, xzr
004ee80cc 	bl	#-3761060 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee80d0 	fcmp	s0, #0.0
004ee80d4 	b.le	#216 ; -> 0x4ee81ac
004ee80d8 	mov	x0, x20
004ee80dc 	mov	x1, xzr
004ee80e0 	bl	#-3765900 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee80e4 	mov	x21, x0
004ee80e8 	mov	x22, x1
004ee80ec 	add	x0, sp, #1600
004ee80f0 	add	x1, x23, #552
004ee80f4 	mov	w2, #72
004ee80f8 	bl	#82327544 ; -> 0x9d6b8f0
004ee80fc 	add	x0, sp, #1600
004ee8100 	mov	x1, xzr
004ee8104 	bl	#-3761116 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee8108 	ldr	x0, [x24]
004ee810c 	fmov	s8, s0
004ee8110 	ldr	w8, [x0, #228]
004ee8114 	cbnz	w8, #8 ; -> 0x4ee811c
004ee8118 	bl	#-9794872 ; -> 0x4590be0
004ee811c 	mov	w8, #1120403456
004ee8120 	mov	x1, xzr
004ee8124 	fmov	s0, w8
004ee8128 	mov	w8, #2139095040
004ee812c 	fadd	s1, s8, s0
004ee8130 	fmul	s0, s1, s0
004ee8134 	fmov	s1, w8
004ee8138 	mov	w8, #-2147483648
004ee813c 	fcvtzs	w9, s0
004ee8140 	fcmp	s0, s1
004ee8144 	csel	w0, w8, w9, eq
004ee8148 	bl	#69815900 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee814c 	mov	x2, x0
004ee8150 	mov	x3, x1
004ee8154 	mov	x0, x21
004ee8158 	mov	x1, x22
004ee815c 	mov	x4, xzr
004ee8160 	bl	#69805796 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8164 	mov	x21, x0
004ee8168 	mov	x22, x1
004ee816c 	mov	w0, #10000
004ee8170 	mov	x1, xzr
004ee8174 	bl	#69815856 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8178 	mov	x2, x0
004ee817c 	mov	x3, x1
004ee8180 	mov	x0, x21
004ee8184 	mov	x1, x22
004ee8188 	mov	x4, xzr
004ee818c 	bl	#69806252 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8190 	mov	x2, x0
004ee8194 	mov	x3, x1
004ee8198 	mov	x0, x20
004ee819c 	mov	x1, x2
004ee81a0 	mov	x2, x3
004ee81a4 	mov	x3, xzr
004ee81a8 	bl	#-3765168 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee81ac 	add	x0, sp, #1528
004ee81b0 	add	x1, x23, #3000
004ee81b4 	mov	w2, #72
004ee81b8 	bl	#82327352 ; -> 0x9d6b8f0
004ee81bc 	add	x0, sp, #1528
004ee81c0 	mov	x1, xzr
004ee81c4 	bl	#-3761308 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee81c8 	fcmp	s0, #0.0
004ee81cc 	b.le	#216 ; -> 0x4ee82a4
004ee81d0 	mov	x0, x20
004ee81d4 	mov	x1, xzr
004ee81d8 	bl	#-3766148 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee81dc 	mov	x21, x0
004ee81e0 	mov	x22, x1
004ee81e4 	add	x0, sp, #1456
004ee81e8 	add	x1, x23, #3000
004ee81ec 	mov	w2, #72
004ee81f0 	bl	#82327296 ; -> 0x9d6b8f0
004ee81f4 	add	x0, sp, #1456
004ee81f8 	mov	x1, xzr
004ee81fc 	bl	#-3761364 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee8200 	ldr	x0, [x24]
004ee8204 	fmov	s8, s0
004ee8208 	ldr	w8, [x0, #228]
004ee820c 	cbnz	w8, #8 ; -> 0x4ee8214
004ee8210 	bl	#-9795120 ; -> 0x4590be0
004ee8214 	mov	w8, #1120403456
004ee8218 	mov	x1, xzr
004ee821c 	fmov	s0, w8
004ee8220 	mov	w8, #2139095040
004ee8224 	fadd	s1, s8, s0
004ee8228 	fmul	s0, s1, s0
004ee822c 	fmov	s1, w8
004ee8230 	mov	w8, #-2147483648
004ee8234 	fcvtzs	w9, s0
004ee8238 	fcmp	s0, s1
004ee823c 	csel	w0, w8, w9, eq
004ee8240 	bl	#69815652 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8244 	mov	x2, x0
004ee8248 	mov	x3, x1
004ee824c 	mov	x0, x21
004ee8250 	mov	x1, x22
004ee8254 	mov	x4, xzr
004ee8258 	bl	#69805548 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee825c 	mov	x21, x0
004ee8260 	mov	x22, x1
004ee8264 	mov	w0, #10000
004ee8268 	mov	x1, xzr
004ee826c 	bl	#69815608 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8270 	mov	x2, x0
004ee8274 	mov	x3, x1
004ee8278 	mov	x0, x21
004ee827c 	mov	x1, x22
004ee8280 	mov	x4, xzr
004ee8284 	bl	#69806004 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8288 	mov	x2, x0
004ee828c 	mov	x3, x1
004ee8290 	mov	x0, x20
004ee8294 	mov	x1, x2
004ee8298 	mov	x2, x3
004ee829c 	mov	x3, xzr
004ee82a0 	bl	#-3765416 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee82a4 	add	x0, sp, #1384
004ee82a8 	add	x1, x23, #3144
004ee82ac 	mov	w2, #72
004ee82b0 	bl	#82327104 ; -> 0x9d6b8f0
004ee82b4 	add	x0, sp, #1384
004ee82b8 	mov	x1, xzr
004ee82bc 	bl	#-3761556 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee82c0 	fcmp	s0, #0.0
004ee82c4 	b.le	#216 ; -> 0x4ee839c
004ee82c8 	mov	x0, x20
004ee82cc 	mov	x1, xzr
004ee82d0 	bl	#-3766396 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee82d4 	mov	x21, x0
004ee82d8 	mov	x22, x1
004ee82dc 	add	x0, sp, #1312
004ee82e0 	add	x1, x23, #3144
004ee82e4 	mov	w2, #72
004ee82e8 	bl	#82327048 ; -> 0x9d6b8f0
004ee82ec 	add	x0, sp, #1312
004ee82f0 	mov	x1, xzr
004ee82f4 	bl	#-3761612 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee82f8 	ldr	x0, [x24]
004ee82fc 	fmov	s8, s0
004ee8300 	ldr	w8, [x0, #228]
004ee8304 	cbnz	w8, #8 ; -> 0x4ee830c
004ee8308 	bl	#-9795368 ; -> 0x4590be0
004ee830c 	mov	w8, #1120403456
004ee8310 	mov	x1, xzr
004ee8314 	fmov	s0, w8
004ee8318 	mov	w8, #2139095040
004ee831c 	fadd	s1, s8, s0
004ee8320 	fmul	s0, s1, s0
004ee8324 	fmov	s1, w8
004ee8328 	mov	w8, #-2147483648
004ee832c 	fcvtzs	w9, s0
004ee8330 	fcmp	s0, s1
004ee8334 	csel	w0, w8, w9, eq
004ee8338 	bl	#69815404 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee833c 	mov	x2, x0
004ee8340 	mov	x3, x1
004ee8344 	mov	x0, x21
004ee8348 	mov	x1, x22
004ee834c 	mov	x4, xzr
004ee8350 	bl	#69805300 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8354 	mov	x21, x0
004ee8358 	mov	x22, x1
004ee835c 	mov	w0, #10000
004ee8360 	mov	x1, xzr
004ee8364 	bl	#69815360 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8368 	mov	x2, x0
004ee836c 	mov	x3, x1
004ee8370 	mov	x0, x21
004ee8374 	mov	x1, x22
004ee8378 	mov	x4, xzr
004ee837c 	bl	#69805756 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8380 	mov	x2, x0
004ee8384 	mov	x3, x1
004ee8388 	mov	x0, x20
004ee838c 	mov	x1, x2
004ee8390 	mov	x2, x3
004ee8394 	mov	x3, xzr
004ee8398 	bl	#-3765664 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee839c 	add	x0, sp, #1240
004ee83a0 	add	x1, x23, #2208
004ee83a4 	mov	w2, #72
004ee83a8 	bl	#82326856 ; -> 0x9d6b8f0
004ee83ac 	add	x0, sp, #1240
004ee83b0 	mov	x1, xzr
004ee83b4 	bl	#-3761804 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee83b8 	fcmp	s0, #0.0
004ee83bc 	b.le	#216 ; -> 0x4ee8494
004ee83c0 	mov	x0, x20
004ee83c4 	mov	x1, xzr
004ee83c8 	bl	#-3766644 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee83cc 	mov	x21, x0
004ee83d0 	mov	x22, x1
004ee83d4 	add	x0, sp, #1168
004ee83d8 	add	x1, x23, #2208
004ee83dc 	mov	w2, #72
004ee83e0 	bl	#82326800 ; -> 0x9d6b8f0
004ee83e4 	add	x0, sp, #1168
004ee83e8 	mov	x1, xzr
004ee83ec 	bl	#-3761860 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee83f0 	ldr	x0, [x24]
004ee83f4 	fmov	s8, s0
004ee83f8 	ldr	w8, [x0, #228]
004ee83fc 	cbnz	w8, #8 ; -> 0x4ee8404
004ee8400 	bl	#-9795616 ; -> 0x4590be0
004ee8404 	mov	w8, #1120403456
004ee8408 	mov	x1, xzr
004ee840c 	fmov	s0, w8
004ee8410 	mov	w8, #2139095040
004ee8414 	fadd	s1, s8, s0
004ee8418 	fmul	s0, s1, s0
004ee841c 	fmov	s1, w8
004ee8420 	mov	w8, #-2147483648
004ee8424 	fcvtzs	w9, s0
004ee8428 	fcmp	s0, s1
004ee842c 	csel	w0, w8, w9, eq
004ee8430 	bl	#69815156 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8434 	mov	x2, x0
004ee8438 	mov	x3, x1
004ee843c 	mov	x0, x21
004ee8440 	mov	x1, x22
004ee8444 	mov	x4, xzr
004ee8448 	bl	#69805052 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee844c 	mov	x21, x0
004ee8450 	mov	x22, x1
004ee8454 	mov	w0, #10000
004ee8458 	mov	x1, xzr
004ee845c 	bl	#69815112 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8460 	mov	x2, x0
004ee8464 	mov	x3, x1
004ee8468 	mov	x0, x21
004ee846c 	mov	x1, x22
004ee8470 	mov	x4, xzr
004ee8474 	bl	#69805508 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8478 	mov	x2, x0
004ee847c 	mov	x3, x1
004ee8480 	mov	x0, x20
004ee8484 	mov	x1, x2
004ee8488 	mov	x2, x3
004ee848c 	mov	x3, xzr
004ee8490 	bl	#-3765912 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee8494 	add	x0, sp, #1096
004ee8498 	add	x1, x23, #1776
004ee849c 	mov	w2, #72
004ee84a0 	bl	#82326608 ; -> 0x9d6b8f0
004ee84a4 	add	x0, sp, #1096
004ee84a8 	mov	x1, xzr
004ee84ac 	bl	#-3762052 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee84b0 	fcmp	s0, #0.0
004ee84b4 	b.le	#216 ; -> 0x4ee858c
004ee84b8 	mov	x0, x20
004ee84bc 	mov	x1, xzr
004ee84c0 	bl	#-3766892 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee84c4 	mov	x21, x0
004ee84c8 	mov	x22, x1
004ee84cc 	add	x0, sp, #1024
004ee84d0 	add	x1, x23, #1776
004ee84d4 	mov	w2, #72
004ee84d8 	bl	#82326552 ; -> 0x9d6b8f0
004ee84dc 	add	x0, sp, #1024
004ee84e0 	mov	x1, xzr
004ee84e4 	bl	#-3762108 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee84e8 	ldr	x0, [x24]
004ee84ec 	fmov	s8, s0
004ee84f0 	ldr	w8, [x0, #228]
004ee84f4 	cbnz	w8, #8 ; -> 0x4ee84fc
004ee84f8 	bl	#-9795864 ; -> 0x4590be0
004ee84fc 	mov	w8, #1120403456
004ee8500 	mov	x1, xzr
004ee8504 	fmov	s0, w8
004ee8508 	mov	w8, #2139095040
004ee850c 	fadd	s1, s8, s0
004ee8510 	fmul	s0, s1, s0
004ee8514 	fmov	s1, w8
004ee8518 	mov	w8, #-2147483648
004ee851c 	fcvtzs	w9, s0
004ee8520 	fcmp	s0, s1
004ee8524 	csel	w0, w8, w9, eq
004ee8528 	bl	#69814908 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee852c 	mov	x2, x0
004ee8530 	mov	x3, x1
004ee8534 	mov	x0, x21
004ee8538 	mov	x1, x22
004ee853c 	mov	x4, xzr
004ee8540 	bl	#69804804 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8544 	mov	x21, x0
004ee8548 	mov	x22, x1
004ee854c 	mov	w0, #10000
004ee8550 	mov	x1, xzr
004ee8554 	bl	#69814864 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8558 	mov	x2, x0
004ee855c 	mov	x3, x1
004ee8560 	mov	x0, x21
004ee8564 	mov	x1, x22
004ee8568 	mov	x4, xzr
004ee856c 	bl	#69805260 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8570 	mov	x2, x0
004ee8574 	mov	x3, x1
004ee8578 	mov	x0, x20
004ee857c 	mov	x1, x2
004ee8580 	mov	x2, x3
004ee8584 	mov	x3, xzr
004ee8588 	bl	#-3766160 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee858c 	add	x0, sp, #952
004ee8590 	add	x1, x23, #1560
004ee8594 	mov	w2, #72
004ee8598 	bl	#82326360 ; -> 0x9d6b8f0
004ee859c 	add	x0, sp, #952
004ee85a0 	mov	x1, xzr
004ee85a4 	bl	#-3762300 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee85a8 	fcmp	s0, #0.0
004ee85ac 	b.le	#216 ; -> 0x4ee8684
004ee85b0 	mov	x0, x20
004ee85b4 	mov	x1, xzr
004ee85b8 	bl	#-3767140 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee85bc 	mov	x21, x0
004ee85c0 	mov	x22, x1
004ee85c4 	add	x0, sp, #880
004ee85c8 	add	x1, x23, #1560
004ee85cc 	mov	w2, #72
004ee85d0 	bl	#82326304 ; -> 0x9d6b8f0
004ee85d4 	add	x0, sp, #880
004ee85d8 	mov	x1, xzr
004ee85dc 	bl	#-3762356 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee85e0 	ldr	x0, [x24]
004ee85e4 	fmov	s8, s0
004ee85e8 	ldr	w8, [x0, #228]
004ee85ec 	cbnz	w8, #8 ; -> 0x4ee85f4
004ee85f0 	bl	#-9796112 ; -> 0x4590be0
004ee85f4 	mov	w8, #1120403456
004ee85f8 	mov	x1, xzr
004ee85fc 	fmov	s0, w8
004ee8600 	mov	w8, #2139095040
004ee8604 	fadd	s1, s8, s0
004ee8608 	fmul	s0, s1, s0
004ee860c 	fmov	s1, w8
004ee8610 	mov	w8, #-2147483648
004ee8614 	fcvtzs	w9, s0
004ee8618 	fcmp	s0, s1
004ee861c 	csel	w0, w8, w9, eq
004ee8620 	bl	#69814660 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8624 	mov	x2, x0
004ee8628 	mov	x3, x1
004ee862c 	mov	x0, x21
004ee8630 	mov	x1, x22
004ee8634 	mov	x4, xzr
004ee8638 	bl	#69804556 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee863c 	mov	x21, x0
004ee8640 	mov	x22, x1
004ee8644 	mov	w0, #10000
004ee8648 	mov	x1, xzr
004ee864c 	bl	#69814616 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8650 	mov	x2, x0
004ee8654 	mov	x3, x1
004ee8658 	mov	x0, x21
004ee865c 	mov	x1, x22
004ee8660 	mov	x4, xzr
004ee8664 	bl	#69805012 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8668 	mov	x2, x0
004ee866c 	mov	x3, x1
004ee8670 	mov	x0, x20
004ee8674 	mov	x1, x2
004ee8678 	mov	x2, x3
004ee867c 	mov	x3, xzr
004ee8680 	bl	#-3766408 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee8684 	add	x0, sp, #808
004ee8688 	add	x1, x23, #2496
004ee868c 	mov	w2, #72
004ee8690 	bl	#82326112 ; -> 0x9d6b8f0
004ee8694 	add	x0, sp, #808
004ee8698 	mov	x1, xzr
004ee869c 	bl	#-3762548 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee86a0 	fcmp	s0, #0.0
004ee86a4 	b.le	#216 ; -> 0x4ee877c
004ee86a8 	mov	x0, x20
004ee86ac 	mov	x1, xzr
004ee86b0 	bl	#-3767388 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee86b4 	mov	x21, x0
004ee86b8 	mov	x22, x1
004ee86bc 	add	x0, sp, #736
004ee86c0 	add	x1, x23, #2496
004ee86c4 	mov	w2, #72
004ee86c8 	bl	#82326056 ; -> 0x9d6b8f0
004ee86cc 	add	x0, sp, #736
004ee86d0 	mov	x1, xzr
004ee86d4 	bl	#-3762604 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee86d8 	ldr	x0, [x24]
004ee86dc 	fmov	s8, s0
004ee86e0 	ldr	w8, [x0, #228]
004ee86e4 	cbnz	w8, #8 ; -> 0x4ee86ec
004ee86e8 	bl	#-9796360 ; -> 0x4590be0
004ee86ec 	mov	w8, #1120403456
004ee86f0 	mov	x1, xzr
004ee86f4 	fmov	s0, w8
004ee86f8 	mov	w8, #2139095040
004ee86fc 	fadd	s1, s8, s0
004ee8700 	fmul	s0, s1, s0
004ee8704 	fmov	s1, w8
004ee8708 	mov	w8, #-2147483648
004ee870c 	fcvtzs	w9, s0
004ee8710 	fcmp	s0, s1
004ee8714 	csel	w0, w8, w9, eq
004ee8718 	bl	#69814412 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee871c 	mov	x2, x0
004ee8720 	mov	x3, x1
004ee8724 	mov	x0, x21
004ee8728 	mov	x1, x22
004ee872c 	mov	x4, xzr
004ee8730 	bl	#69804308 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8734 	mov	x21, x0
004ee8738 	mov	x22, x1
004ee873c 	mov	w0, #10000
004ee8740 	mov	x1, xzr
004ee8744 	bl	#69814368 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8748 	mov	x2, x0
004ee874c 	mov	x3, x1
004ee8750 	mov	x0, x21
004ee8754 	mov	x1, x22
004ee8758 	mov	x4, xzr
004ee875c 	bl	#69804764 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8760 	mov	x2, x0
004ee8764 	mov	x3, x1
004ee8768 	mov	x0, x20
004ee876c 	mov	x1, x2
004ee8770 	mov	x2, x3
004ee8774 	mov	x3, xzr
004ee8778 	bl	#-3766656 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee877c 	add	x0, sp, #664
004ee8780 	add	x1, x23, #2568
004ee8784 	mov	w2, #72
004ee8788 	bl	#82325864 ; -> 0x9d6b8f0
004ee878c 	add	x0, sp, #664
004ee8790 	mov	x1, xzr
004ee8794 	bl	#-3762796 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee8798 	fcmp	s0, #0.0
004ee879c 	b.le	#216 ; -> 0x4ee8874
004ee87a0 	mov	x0, x20
004ee87a4 	mov	x1, xzr
004ee87a8 	bl	#-3767636 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee87ac 	mov	x21, x0
004ee87b0 	mov	x22, x1
004ee87b4 	add	x0, sp, #592
004ee87b8 	add	x1, x23, #2568
004ee87bc 	mov	w2, #72
004ee87c0 	bl	#82325808 ; -> 0x9d6b8f0
004ee87c4 	add	x0, sp, #592
004ee87c8 	mov	x1, xzr
004ee87cc 	bl	#-3762852 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee87d0 	ldr	x0, [x24]
004ee87d4 	fmov	s8, s0
004ee87d8 	ldr	w8, [x0, #228]
004ee87dc 	cbnz	w8, #8 ; -> 0x4ee87e4
004ee87e0 	bl	#-9796608 ; -> 0x4590be0
004ee87e4 	mov	w8, #1120403456
004ee87e8 	mov	x1, xzr
004ee87ec 	fmov	s0, w8
004ee87f0 	mov	w8, #2139095040
004ee87f4 	fadd	s1, s8, s0
004ee87f8 	fmul	s0, s1, s0
004ee87fc 	fmov	s1, w8
004ee8800 	mov	w8, #-2147483648
004ee8804 	fcvtzs	w9, s0
004ee8808 	fcmp	s0, s1
004ee880c 	csel	w0, w8, w9, eq
004ee8810 	bl	#69814164 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8814 	mov	x2, x0
004ee8818 	mov	x3, x1
004ee881c 	mov	x0, x21
004ee8820 	mov	x1, x22
004ee8824 	mov	x4, xzr
004ee8828 	bl	#69804060 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee882c 	mov	x21, x0
004ee8830 	mov	x22, x1
004ee8834 	mov	w0, #10000
004ee8838 	mov	x1, xzr
004ee883c 	bl	#69814120 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8840 	mov	x2, x0
004ee8844 	mov	x3, x1
004ee8848 	mov	x0, x21
004ee884c 	mov	x1, x22
004ee8850 	mov	x4, xzr
004ee8854 	bl	#69804516 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8858 	mov	x2, x0
004ee885c 	mov	x3, x1
004ee8860 	mov	x0, x20
004ee8864 	mov	x1, x2
004ee8868 	mov	x2, x3
004ee886c 	mov	x3, xzr
004ee8870 	bl	#-3766904 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee8874 	add	x0, sp, #520
004ee8878 	add	x1, x23, #912
004ee887c 	mov	w2, #72
004ee8880 	bl	#82325616 ; -> 0x9d6b8f0
004ee8884 	add	x0, sp, #520
004ee8888 	mov	x1, xzr
004ee888c 	bl	#-3763044 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee8890 	fcmp	s0, #0.0
004ee8894 	b.le	#216 ; -> 0x4ee896c
004ee8898 	mov	x0, x20
004ee889c 	mov	x1, xzr
004ee88a0 	bl	#-3767884 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee88a4 	mov	x21, x0
004ee88a8 	mov	x22, x1
004ee88ac 	add	x0, sp, #448
004ee88b0 	add	x1, x23, #912
004ee88b4 	mov	w2, #72
004ee88b8 	bl	#82325560 ; -> 0x9d6b8f0
004ee88bc 	add	x0, sp, #448
004ee88c0 	mov	x1, xzr
004ee88c4 	bl	#-3763100 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee88c8 	ldr	x0, [x24]
004ee88cc 	fmov	s8, s0
004ee88d0 	ldr	w8, [x0, #228]
004ee88d4 	cbnz	w8, #8 ; -> 0x4ee88dc
004ee88d8 	bl	#-9796856 ; -> 0x4590be0
004ee88dc 	mov	w8, #1120403456
004ee88e0 	mov	x1, xzr
004ee88e4 	fmov	s0, w8
004ee88e8 	mov	w8, #2139095040
004ee88ec 	fadd	s1, s8, s0
004ee88f0 	fmul	s0, s1, s0
004ee88f4 	fmov	s1, w8
004ee88f8 	mov	w8, #-2147483648
004ee88fc 	fcvtzs	w9, s0
004ee8900 	fcmp	s0, s1
004ee8904 	csel	w0, w8, w9, eq
004ee8908 	bl	#69813916 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee890c 	mov	x2, x0
004ee8910 	mov	x3, x1
004ee8914 	mov	x0, x21
004ee8918 	mov	x1, x22
004ee891c 	mov	x4, xzr
004ee8920 	bl	#69803812 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8924 	mov	x21, x0
004ee8928 	mov	x22, x1
004ee892c 	mov	w0, #10000
004ee8930 	mov	x1, xzr
004ee8934 	bl	#69813872 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8938 	mov	x2, x0
004ee893c 	mov	x3, x1
004ee8940 	mov	x0, x21
004ee8944 	mov	x1, x22
004ee8948 	mov	x4, xzr
004ee894c 	bl	#69804268 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8950 	mov	x2, x0
004ee8954 	mov	x3, x1
004ee8958 	mov	x0, x20
004ee895c 	mov	x1, x2
004ee8960 	mov	x2, x3
004ee8964 	mov	x3, xzr
004ee8968 	bl	#-3767152 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee896c 	ldrb	w8, [x25, #636]
004ee8970 	cbnz	w8, #24 ; -> 0x4ee8988
004ee8974 	adrp	x0, #89157632 ; -> 0xa3ef000
004ee8978 	ldr	x0, [x0, #3328]
004ee897c 	bl	#-9797404 ; -> 0x4590a60
004ee8980 	mov	w8, #1
004ee8984 	strb	w8, [x25, #636]
004ee8988 	ldr	x8, [x26]
004ee898c 	ldr	x8, [x8, #184]
004ee8990 	ldr	x8, [x8]
004ee8994 	cbz	x8, #1548 ; -> 0x4ee8fa0
004ee8998 	ldr	x23, [x8, #104]
004ee899c 	cbz	x23, #1540 ; -> 0x4ee8fa0
004ee89a0 	add	x0, sp, #376
004ee89a4 	add	x1, x23, #208
004ee89a8 	mov	w2, #72
004ee89ac 	bl	#82325316 ; -> 0x9d6b8f0
004ee89b0 	add	x0, sp, #376
004ee89b4 	mov	x1, xzr
004ee89b8 	bl	#-3763344 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee89bc 	fcmp	s0, #0.0
004ee89c0 	b.le	#216 ; -> 0x4ee8a98
004ee89c4 	mov	x0, x20
004ee89c8 	mov	x1, xzr
004ee89cc 	bl	#-3768184 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee89d0 	mov	x21, x0
004ee89d4 	mov	x22, x1
004ee89d8 	add	x0, sp, #304
004ee89dc 	add	x1, x23, #208
004ee89e0 	mov	w2, #72
004ee89e4 	bl	#82325260 ; -> 0x9d6b8f0
004ee89e8 	add	x0, sp, #304
004ee89ec 	mov	x1, xzr
004ee89f0 	bl	#-3763400 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee89f4 	ldr	x0, [x24]
004ee89f8 	fmov	s8, s0
004ee89fc 	ldr	w8, [x0, #228]
004ee8a00 	cbnz	w8, #8 ; -> 0x4ee8a08
004ee8a04 	bl	#-9797156 ; -> 0x4590be0
004ee8a08 	mov	w8, #1120403456
004ee8a0c 	mov	x1, xzr
004ee8a10 	fmov	s0, w8
004ee8a14 	mov	w8, #2139095040
004ee8a18 	fadd	s1, s8, s0
004ee8a1c 	fmul	s0, s1, s0
004ee8a20 	fmov	s1, w8
004ee8a24 	mov	w8, #-2147483648
004ee8a28 	fcvtzs	w9, s0
004ee8a2c 	fcmp	s0, s1
004ee8a30 	csel	w0, w8, w9, eq
004ee8a34 	bl	#69813616 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8a38 	mov	x2, x0
004ee8a3c 	mov	x3, x1
004ee8a40 	mov	x0, x21
004ee8a44 	mov	x1, x22
004ee8a48 	mov	x4, xzr
004ee8a4c 	bl	#69803512 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8a50 	mov	x21, x0
004ee8a54 	mov	x22, x1
004ee8a58 	mov	w0, #10000
004ee8a5c 	mov	x1, xzr
004ee8a60 	bl	#69813572 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8a64 	mov	x2, x0
004ee8a68 	mov	x3, x1
004ee8a6c 	mov	x0, x21
004ee8a70 	mov	x1, x22
004ee8a74 	mov	x4, xzr
004ee8a78 	bl	#69803968 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8a7c 	mov	x2, x0
004ee8a80 	mov	x3, x1
004ee8a84 	mov	x0, x20
004ee8a88 	mov	x1, x2
004ee8a8c 	mov	x2, x3
004ee8a90 	mov	x3, xzr
004ee8a94 	bl	#-3767452 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee8a98 	mov	x0, x20
004ee8a9c 	mov	x1, xzr
004ee8aa0 	bl	#-3768396 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee8aa4 	mov	x21, x0
004ee8aa8 	add	x8, sp, #3040
004ee8aac 	mov	x0, x19
004ee8ab0 	mov	x22, x1
004ee8ab4 	bl	#29752 ; -> 0x4eefeec [PlayerBase::get_CriticalDmg]
004ee8ab8 	ldr	q0, [sp, #3040]
004ee8abc 	ldr	q1, [sp, #3056]
004ee8ac0 	add	x0, sp, #3168
004ee8ac4 	ldr	q2, [sp, #3088]
004ee8ac8 	mov	x1, xzr
004ee8acc 	str	q0, [sp, #3168]
004ee8ad0 	ldr	q0, [sp, #3072]
004ee8ad4 	str	q1, [sp, #3184]
004ee8ad8 	str	q0, [sp, #3200]
004ee8adc 	str	q2, [sp, #3216]
004ee8ae0 	bl	#-3761852 ; -> 0x4b52424 [SilentLong::get_Value]
004ee8ae4 	ldr	x8, [x24]
004ee8ae8 	mov	x23, x0
004ee8aec 	ldr	w9, [x8, #228]
004ee8af0 	cbnz	w9, #12 ; -> 0x4ee8afc
004ee8af4 	mov	x0, x8
004ee8af8 	bl	#-9797400 ; -> 0x4590be0
004ee8afc 	mov	x0, x23
004ee8b00 	mov	x1, xzr
004ee8b04 	bl	#69811736 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee8b08 	mov	x2, x0
004ee8b0c 	mov	x3, x1
004ee8b10 	mov	x0, x21
004ee8b14 	mov	x1, x22
004ee8b18 	mov	x4, xzr
004ee8b1c 	bl	#69803304 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8b20 	ldr	x8, [x19, #312]
004ee8b24 	cbz	x8, #1148 ; -> 0x4ee8fa0
004ee8b28 	mov	w9, #9808
004ee8b2c 	mov	x21, x0
004ee8b30 	mov	x22, x1
004ee8b34 	add	x0, sp, #232
004ee8b38 	add	x1, x8, x9
004ee8b3c 	mov	w2, #72
004ee8b40 	bl	#82324912 ; -> 0x9d6b8f0
004ee8b44 	add	x0, sp, #232
004ee8b48 	mov	x1, xzr
004ee8b4c 	bl	#-3763748 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee8b50 	mov	w8, #1120403456
004ee8b54 	add	x0, sp, #2976
004ee8b58 	fmov	s1, w8
004ee8b5c 	fadd	s0, s0, s1
004ee8b60 	fmov	s1, #10.00000000
004ee8b64 	fmul	s8, s0, s1
004ee8b68 	fcvt	d0, s8
004ee8b6c 	bl	#82324964 ; -> 0x9d6b950
004ee8b70 	fcmp	s8, #0.0
004ee8b74 	b.ge	#28 ; -> 0x4ee8b90
004ee8b78 	fmov	d1, #-0.50000000
004ee8b7c 	fcmp	d0, d1
004ee8b80 	b.ne	#60 ; -> 0x4ee8bbc
004ee8b84 	ldr	d0, [sp, #2976]
004ee8b88 	fmov	s2, #-1.00000000
004ee8b8c 	b	#24 ; -> 0x4ee8ba4
004ee8b90 	fmov	d1, #0.50000000
004ee8b94 	fcmp	d0, d1
004ee8b98 	b.ne	#52 ; -> 0x4ee8bcc
004ee8b9c 	ldr	d0, [sp, #2976]
004ee8ba0 	fmov	s2, #1.00000000
004ee8ba4 	fcvt	s1, d0
004ee8ba8 	fcvtzs	x8, d0
004ee8bac 	fadd	s0, s1, s2
004ee8bb0 	tst	x8, #0x1
004ee8bb4 	fcsel	s0, s1, s0, eq
004ee8bb8 	b	#32 ; -> 0x4ee8bd8
004ee8bbc 	fmov	s0, #-0.50000000
004ee8bc0 	fadd	s0, s8, s0
004ee8bc4 	frintp	s0, s0
004ee8bc8 	b	#16 ; -> 0x4ee8bd8
004ee8bcc 	fmov	s0, #0.50000000
004ee8bd0 	fadd	s0, s8, s0
004ee8bd4 	frintm	s0, s0
004ee8bd8 	mov	w8, #2139095040
004ee8bdc 	fcvtzs	x9, s0
004ee8be0 	mov	x1, xzr
004ee8be4 	fmov	s1, w8
004ee8be8 	mov	x8, #-9223372036854775808
004ee8bec 	fcmp	s0, s1
004ee8bf0 	csel	x0, x8, x9, eq
004ee8bf4 	bl	#69811496 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee8bf8 	mov	x2, x0
004ee8bfc 	mov	x3, x1
004ee8c00 	mov	x0, x21
004ee8c04 	mov	x1, x22
004ee8c08 	mov	x4, xzr
004ee8c0c 	bl	#69803064 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8c10 	mov	x21, x0
004ee8c14 	mov	w0, #34464
004ee8c18 	mov	x22, x1
004ee8c1c 	movk	w0, #1, lsl #16
004ee8c20 	mov	x1, xzr
004ee8c24 	bl	#69813120 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8c28 	mov	x2, x0
004ee8c2c 	mov	x3, x1
004ee8c30 	mov	x0, x21
004ee8c34 	mov	x1, x22
004ee8c38 	mov	x4, xzr
004ee8c3c 	bl	#69803516 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8c40 	mov	x2, x0
004ee8c44 	mov	x3, x1
004ee8c48 	add	x0, x19, #784
004ee8c4c 	mov	x1, x2
004ee8c50 	mov	x2, x3
004ee8c54 	mov	x3, xzr
004ee8c58 	bl	#-3767904 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee8c5c 	mov	x0, x19
004ee8c60 	bl	#29088 ; -> 0x4eefe00 [PlayerBase::get_CriticalProb]
004ee8c64 	mov	w8, #1120403456
004ee8c68 	fmov	s1, w8
004ee8c6c 	fcmp	s0, s1
004ee8c70 	b.lt	#644 ; -> 0x4ee8ef4
004ee8c74 	add	x0, x19, #784
004ee8c78 	mov	x1, xzr
004ee8c7c 	bl	#-3768872 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee8c80 	mov	x21, x0
004ee8c84 	add	x8, sp, #3040
004ee8c88 	mov	x0, x19
004ee8c8c 	mov	x22, x1
004ee8c90 	bl	#30268 ; -> 0x4ef02cc [PlayerBase::get_SuperCriticalDmg]
004ee8c94 	ldr	q0, [sp, #3040]
004ee8c98 	ldr	q1, [sp, #3056]
004ee8c9c 	add	x0, sp, #3168
004ee8ca0 	ldr	q2, [sp, #3088]
004ee8ca4 	mov	x1, xzr
004ee8ca8 	str	q0, [sp, #3168]
004ee8cac 	ldr	q0, [sp, #3072]
004ee8cb0 	str	q1, [sp, #3184]
004ee8cb4 	str	q0, [sp, #3200]
004ee8cb8 	str	q2, [sp, #3216]
004ee8cbc 	bl	#-3762328 ; -> 0x4b52424 [SilentLong::get_Value]
004ee8cc0 	ldr	x8, [x24]
004ee8cc4 	mov	x23, x0
004ee8cc8 	ldr	w9, [x8, #228]
004ee8ccc 	cbnz	w9, #12 ; -> 0x4ee8cd8
004ee8cd0 	mov	x0, x8
004ee8cd4 	bl	#-9797876 ; -> 0x4590be0
004ee8cd8 	mov	x0, x23
004ee8cdc 	mov	x1, xzr
004ee8ce0 	bl	#69811260 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004ee8ce4 	mov	x2, x0
004ee8ce8 	mov	x3, x1
004ee8cec 	mov	x0, x21
004ee8cf0 	mov	x1, x22
004ee8cf4 	mov	x4, xzr
004ee8cf8 	bl	#69802828 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8cfc 	mov	x21, x0
004ee8d00 	mov	x22, x1
004ee8d04 	mov	w0, #100
004ee8d08 	mov	x1, xzr
004ee8d0c 	bl	#69812888 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8d10 	mov	x2, x0
004ee8d14 	mov	x3, x1
004ee8d18 	mov	x0, x21
004ee8d1c 	mov	x1, x22
004ee8d20 	mov	x4, xzr
004ee8d24 	bl	#69803284 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8d28 	mov	x2, x0
004ee8d2c 	mov	x3, x1
004ee8d30 	add	x0, x19, #824
004ee8d34 	mov	x1, x2
004ee8d38 	mov	x2, x3
004ee8d3c 	mov	x3, xzr
004ee8d40 	bl	#-3768136 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee8d44 	ldrb	w8, [x25, #636]
004ee8d48 	cbnz	w8, #24 ; -> 0x4ee8d60
004ee8d4c 	adrp	x0, #89157632 ; -> 0xa3ef000
004ee8d50 	ldr	x0, [x0, #3328]
004ee8d54 	bl	#-9798388 ; -> 0x4590a60
004ee8d58 	mov	w8, #1
004ee8d5c 	strb	w8, [x25, #636]
004ee8d60 	ldr	x8, [x26]
004ee8d64 	ldr	x0, [x27]
004ee8d68 	ldr	x8, [x8, #184]
004ee8d6c 	ldr	w9, [x0, #228]
004ee8d70 	ldr	x21, [x8]
004ee8d74 	cbnz	w9, #8 ; -> 0x4ee8d7c
004ee8d78 	bl	#-9798040 ; -> 0x4590be0
004ee8d7c 	mov	x0, x21
004ee8d80 	mov	x1, xzr
004ee8d84 	mov	x2, xzr
004ee8d88 	bl	#78750984 ; -> 0x9a03290 [UnityEngine.Object::op_Inequality]
004ee8d8c 	tbz	w0, #0, #360 ; -> 0x4ee8ef4
004ee8d90 	ldrb	w8, [x25, #636]
004ee8d94 	cbnz	w8, #24 ; -> 0x4ee8dac
004ee8d98 	adrp	x0, #89157632 ; -> 0xa3ef000
004ee8d9c 	ldr	x0, [x0, #3328]
004ee8da0 	bl	#-9798464 ; -> 0x4590a60
004ee8da4 	mov	w8, #1
004ee8da8 	strb	w8, [x25, #636]
004ee8dac 	ldr	x8, [x26]
004ee8db0 	ldr	x8, [x8, #184]
004ee8db4 	ldr	x0, [x8]
004ee8db8 	cbz	x0, #488 ; -> 0x4ee8fa0
004ee8dbc 	mov	x1, xzr
004ee8dc0 	bl	#1407384 ; -> 0x5040758 [DragonValleyManager::get_IsDragonValleyBattleMode]
004ee8dc4 	tbz	w0, #0, #304 ; -> 0x4ee8ef4
004ee8dc8 	ldrb	w8, [x25, #636]
004ee8dcc 	cbnz	w8, #24 ; -> 0x4ee8de4
004ee8dd0 	adrp	x0, #89157632 ; -> 0xa3ef000
004ee8dd4 	ldr	x0, [x0, #3328]
004ee8dd8 	bl	#-9798520 ; -> 0x4590a60
004ee8ddc 	mov	w8, #1
004ee8de0 	strb	w8, [x25, #636]
004ee8de4 	ldr	x8, [x26]
004ee8de8 	ldr	x8, [x8, #184]
004ee8dec 	ldr	x8, [x8]
004ee8df0 	cbz	x8, #432 ; -> 0x4ee8fa0
004ee8df4 	ldr	x23, [x8, #96]
004ee8df8 	cbz	x23, #424 ; -> 0x4ee8fa0
004ee8dfc 	add	x0, sp, #160
004ee8e00 	add	x1, x23, #2424
004ee8e04 	mov	w2, #72
004ee8e08 	bl	#82324200 ; -> 0x9d6b8f0
004ee8e0c 	add	x0, sp, #160
004ee8e10 	mov	x1, xzr
004ee8e14 	bl	#-3764460 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee8e18 	fcmp	s0, #0.0
004ee8e1c 	b.le	#216 ; -> 0x4ee8ef4
004ee8e20 	add	x0, x19, #824
004ee8e24 	mov	x1, xzr
004ee8e28 	bl	#-3769300 ; -> 0x4b50a54 [SilentBigInt::get_Value]
004ee8e2c 	mov	x21, x0
004ee8e30 	mov	x22, x1
004ee8e34 	add	x0, sp, #88
004ee8e38 	add	x1, x23, #2424
004ee8e3c 	mov	w2, #72
004ee8e40 	bl	#82324144 ; -> 0x9d6b8f0
004ee8e44 	add	x0, sp, #88
004ee8e48 	mov	x1, xzr
004ee8e4c 	bl	#-3764516 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004ee8e50 	ldr	x0, [x24]
004ee8e54 	fmov	s8, s0
004ee8e58 	ldr	w8, [x0, #228]
004ee8e5c 	cbnz	w8, #8 ; -> 0x4ee8e64
004ee8e60 	bl	#-9798272 ; -> 0x4590be0
004ee8e64 	mov	w8, #1120403456
004ee8e68 	mov	x1, xzr
004ee8e6c 	fmov	s0, w8
004ee8e70 	mov	w8, #2139095040
004ee8e74 	fadd	s1, s8, s0
004ee8e78 	fmul	s0, s1, s0
004ee8e7c 	fmov	s1, w8
004ee8e80 	mov	w8, #-2147483648
004ee8e84 	fcvtzs	w9, s0
004ee8e88 	fcmp	s0, s1
004ee8e8c 	csel	w0, w8, w9, eq
004ee8e90 	bl	#69812500 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8e94 	mov	x2, x0
004ee8e98 	mov	x3, x1
004ee8e9c 	mov	x0, x21
004ee8ea0 	mov	x1, x22
004ee8ea4 	mov	x4, xzr
004ee8ea8 	bl	#69802396 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004ee8eac 	mov	x21, x0
004ee8eb0 	mov	x22, x1
004ee8eb4 	mov	w0, #10000
004ee8eb8 	mov	x1, xzr
004ee8ebc 	bl	#69812456 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004ee8ec0 	mov	x2, x0
004ee8ec4 	mov	x3, x1
004ee8ec8 	mov	x0, x21
004ee8ecc 	mov	x1, x22
004ee8ed0 	mov	x4, xzr
004ee8ed4 	bl	#69802852 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004ee8ed8 	mov	x2, x0
004ee8edc 	mov	x3, x1
004ee8ee0 	add	x0, x19, #824
004ee8ee4 	mov	x1, x2
004ee8ee8 	mov	x2, x3
004ee8eec 	mov	x3, xzr
004ee8ef0 	bl	#-3768568 ; -> 0x4b50df8 [SilentBigInt::set_Value]
004ee8ef4 	ldp	q0, q1, [x20]
004ee8ef8 	add	x0, sp, #48
004ee8efc 	ldr	x8, [x20, #32]
004ee8f00 	ldr	x21, [x19, #1632]
004ee8f04 	mov	x1, xzr
004ee8f08 	ldr	x22, [x19, #1640]
004ee8f0c 	stp	q0, q1, [sp, #48]
004ee8f10 	str	x8, [sp, #80]
004ee8f14 	bl	#-3768036 ; -> 0x4b51030 [SilentBigInt::op_Implicit]
004ee8f18 	mov	x23, x0
004ee8f1c 	ldr	x0, [x24]
004ee8f20 	mov	x24, x1
004ee8f24 	ldr	w8, [x0, #228]
004ee8f28 	cbnz	w8, #8 ; -> 0x4ee8f30
004ee8f2c 	bl	#-9798476 ; -> 0x4590be0
004ee8f30 	mov	x0, x21
004ee8f34 	mov	x1, x22
004ee8f38 	mov	x2, x23
004ee8f3c 	mov	x3, x24
004ee8f40 	mov	x4, xzr
004ee8f44 	bl	#69817996 ; -> 0x917e5d0 [System.Numerics.BigInteger::op_LessThan]
004ee8f48 	tbz	w0, #0, #52 ; -> 0x4ee8f7c
004ee8f4c 	ldp	q0, q1, [x20]
004ee8f50 	mov	x0, sp
004ee8f54 	ldr	x8, [x20, #32]
004ee8f58 	mov	x1, xzr
004ee8f5c 	stp	q0, q1, [sp]
004ee8f60 	str	x8, [sp, #32]
004ee8f64 	bl	#-3768116 ; -> 0x4b51030 [SilentBigInt::op_Implicit]
004ee8f68 	str	x0, [x19, #1632]
004ee8f6c 	add	x0, x19, #1640
004ee8f70 	str	x1, [x19, #1640]
004ee8f74 	mov	x1, xzr
004ee8f78 	bl	#-9799028 ; -> 0x4590a04
004ee8f7c 	add	sp, sp, #3232
004ee8f80 	ldp	x20, x19, [sp, #80]
004ee8f84 	ldr	x29, [sp, #8]
004ee8f88 	ldp	x22, x21, [sp, #64]
004ee8f8c 	ldp	x24, x23, [sp, #48]
004ee8f90 	ldp	x26, x25, [sp, #32]
004ee8f94 	ldp	x30, x27, [sp, #16]
004ee8f98 	ldr	d8, [sp], #96
004ee8f9c 	ret
004ee8fa0 	bl	#-9798292 ; -> 0x4590d0c