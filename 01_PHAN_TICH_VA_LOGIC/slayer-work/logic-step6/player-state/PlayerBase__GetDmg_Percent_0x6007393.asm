004ef7f10 	str	d10, [sp, #-80]!
004ef7f14 	stp	d9, d8, [sp, #16]
004ef7f18 	stp	x30, x23, [sp, #32]
004ef7f1c 	stp	x22, x21, [sp, #48]
004ef7f20 	stp	x20, x19, [sp, #64]
004ef7f24 	fmov	s9, s1
004ef7f28 	fmov	s8, s0
004ef7f2c 	adrp	x22, #97378304 ; -> 0xabd5000 
004ef7f30 	ldrb	w8, [x22, #1488]
004ef7f34 	mov	x20, x2
004ef7f38 	mov	w21, w1
004ef7f3c 	mov	x19, x0
004ef7f40 	tbnz	w8, #0, #96 ; -> 0x4ef7fa0 
004ef7f44 	adrp	x0, #89071616 ; -> 0xa3e9000 
004ef7f48 	ldr	x0, [x0, #3552]
004ef7f4c 	bl	#-9860332 ; -> 0x4590a60 
004ef7f50 	adrp	x0, #89108480 ; -> 0xa3f2000 
004ef7f54 	ldr	x0, [x0, #552]
004ef7f58 	bl	#-9860344 ; -> 0x4590a60 
004ef7f5c 	adrp	x0, #89255936 ; -> 0xa416000 
004ef7f60 	ldr	x0, [x0, #1664]
004ef7f64 	bl	#-9860356 ; -> 0x4590a60 
004ef7f68 	adrp	x0, #89071616 ; -> 0xa3e9000 
004ef7f6c 	ldr	x0, [x0, #736]
004ef7f70 	bl	#-9860368 ; -> 0x4590a60 
004ef7f74 	adrp	x0, #89341952 ; -> 0xa42b000 
004ef7f78 	ldr	x0, [x0, #2600]
004ef7f7c 	bl	#-9860380 ; -> 0x4590a60 
004ef7f80 	adrp	x0, #89292800 ; -> 0xa41f000 
004ef7f84 	ldr	x0, [x0, #1848]
004ef7f88 	bl	#-9860392 ; -> 0x4590a60 
004ef7f8c 	adrp	x0, #89247744 ; -> 0xa414000 
004ef7f90 	ldr	x0, [x0, #3032]
004ef7f94 	bl	#-9860404 ; -> 0x4590a60 
004ef7f98 	mov	w8, #1
004ef7f9c 	strb	w8, [x22, #1488]
004ef7fa0 	mov	w0, #32929
004ef7fa4 	mov	x1, xzr
004ef7fa8 	bl	#-2820612 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef7fac 	tbz	w0, #0, #68 ; -> 0x4ef7ff0 
004ef7fb0 	mov	w0, #32929
004ef7fb4 	mov	x1, xzr
004ef7fb8 	bl	#-2820448 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef7fbc 	cbz	x0, #1048 ; -> 0x4ef83d4 
004ef7fc0 	mov	x1, x19
004ef7fc4 	fmov	s0, s8
004ef7fc8 	fmov	s1, s9
004ef7fcc 	mov	w2, w21
004ef7fd0 	mov	x3, x20
004ef7fd4 	mov	x4, xzr
004ef7fd8 	ldp	x20, x19, [sp, #64]
004ef7fdc 	ldp	x22, x21, [sp, #48]
004ef7fe0 	ldp	x30, x23, [sp, #32]
004ef7fe4 	ldp	d9, d8, [sp, #16]
004ef7fe8 	ldr	d10, [sp], #80
004ef7fec 	b	#-3204200 ; -> 0x4be9b84 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2102
004ef7ff0 	ldr	w8, [x19, #36]
004ef7ff4 	cmp	w8, #3
004ef7ff8 	b.eq	#936 ; -> 0x4ef83a0 
004ef7ffc 	ldrb	w8, [x19, #448]
004ef8000 	cbz	w8, #928 ; -> 0x4ef83a0 
004ef8004 	mov	x0, x19
004ef8008 	bl	#-73124 ; -> 0x4ee6264 PlayerBase::get_IsWaterReflectActive
004ef800c 	tbz	w0, #0, #32 ; -> 0x4ef802c 
004ef8010 	mov	x0, x19
004ef8014 	ldp	x20, x19, [sp, #64]
004ef8018 	ldp	x22, x21, [sp, #48]
004ef801c 	ldp	x30, x23, [sp, #32]
004ef8020 	ldp	d9, d8, [sp, #16]
004ef8024 	ldr	d10, [sp], #80
004ef8028 	b	#-6820 ; -> 0x4ef6584 PlayerBase::WaterReflect
004ef802c 	adrp	x21, #89104384 ; -> 0xa3f2000 
004ef8030 	ldr	x21, [x21, #552]
004ef8034 	ldr	x0, [x21]
004ef8038 	ldr	w8, [x0, #228]
004ef803c 	cbnz	w8, #12 ; -> 0x4ef8048 
004ef8040 	bl	#-9860192 ; -> 0x4590be0 
004ef8044 	ldr	x0, [x21]
004ef8048 	ldr	x8, [x0, #184]
004ef804c 	ldr	x0, [x8]
004ef8050 	cbz	x0, #900 ; -> 0x4ef83d4 
004ef8054 	mov	x1, xzr
004ef8058 	bl	#-745732 ; -> 0x4e41f54 GameManager::get_gameMode
004ef805c 	cmp	w0, #24
004ef8060 	b.ne	#52 ; -> 0x4ef8094 
004ef8064 	ldr	s0, [x19, #1832]
004ef8068 	fcmp	s0, #0.0
004ef806c 	b.le	#40 ; -> 0x4ef8094 
004ef8070 	mov	w0, wzr
004ef8074 	mov	w1, #100
004ef8078 	mov	x2, xzr
004ef807c 	bl	#78656900 ; -> 0x99fb600 UnityEngine.Random::Range
004ef8080 	scvtf	s0, w0
004ef8084 	ldr	s1, [x19, #1832]
004ef8088 	fcmp	s1, s0
004ef808c 	cset	w22, gt
004ef8090 	b	#8 ; -> 0x4ef8098 
004ef8094 	mov	w22, wzr
004ef8098 	ldr	x8, [x19]
004ef809c 	mov	x0, x19
004ef80a0 	ldp	x9, x1, [x8, #472]
004ef80a4 	blr	x9
004ef80a8 	adrp	x23, #89067520 ; -> 0xa3e9000 
004ef80ac 	fmov	s10, s0
004ef80b0 	ldr	x23, [x23, #736]
004ef80b4 	ldr	x0, [x23]
004ef80b8 	ldr	w8, [x0, #228]
004ef80bc 	cbnz	w8, #8 ; -> 0x4ef80c4 
004ef80c0 	bl	#-9860320 ; -> 0x4590be0 
004ef80c4 	fmov	s0, s9
004ef80c8 	fmov	s1, s10
004ef80cc 	mov	x0, xzr
004ef80d0 	bl	#-1921104 ; -> 0x4d23080 UsefulManager::Player_MissProbability
004ef80d4 	tbnz	w0, #0, #20 ; -> 0x4ef80e8 
004ef80d8 	ldrb	w8, [x19, #449]
004ef80dc 	cmp	w8, #0
004ef80e0 	csinc	w8, w22, wzr, eq
004ef80e4 	tbz	w8, #0, #172 ; -> 0x4ef8190 
004ef80e8 	ldr	x0, [x19, #168]
004ef80ec 	cbz	x0, #744 ; -> 0x4ef83d4 
004ef80f0 	mov	x1, xzr
004ef80f4 	bl	#78753848 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef80f8 	adrp	x9, #89337856 ; -> 0xa42b000 
004ef80fc 	adrp	x10, #89243648 ; -> 0xa414000 
004ef8100 	ldr	x8, [x19]
004ef8104 	ldr	x9, [x9, #2600]
004ef8108 	ldr	x10, [x10, #3032]
004ef810c 	mov	x0, x19
004ef8110 	ldr	x3, [x8, #704]
004ef8114 	ldr	x1, [x9]
004ef8118 	ldr	x2, [x10]
004ef811c 	ldr	x9, [x8, #696]
004ef8120 	blr	x9
004ef8124 	ldr	x0, [x21]
004ef8128 	ldr	w8, [x0, #228]
004ef812c 	cbnz	w8, #12 ; -> 0x4ef8138 
004ef8130 	bl	#-9860432 ; -> 0x4590be0 
004ef8134 	ldr	x0, [x21]
004ef8138 	ldr	x8, [x0, #184]
004ef813c 	ldr	x0, [x8]
004ef8140 	cbz	x0, #660 ; -> 0x4ef83d4 
004ef8144 	mov	x1, xzr
004ef8148 	bl	#-745972 ; -> 0x4e41f54 GameManager::get_gameMode
004ef814c 	cmp	w0, #8
004ef8150 	b.ne	#592 ; -> 0x4ef83a0 
004ef8154 	adrp	x8, #89251840 ; -> 0xa416000 
004ef8158 	ldr	x8, [x8, #1664]
004ef815c 	ldr	x8, [x8]
004ef8160 	ldr	x8, [x8, #184]
004ef8164 	ldr	x0, [x8]
004ef8168 	cbz	x0, #620 ; -> 0x4ef83d4 
004ef816c 	ldp	x20, x19, [sp, #64]
004ef8170 	mov	w1, #42
004ef8174 	ldp	x22, x21, [sp, #48]
004ef8178 	mov	w2, #22
004ef817c 	ldp	x30, x23, [sp, #32]
004ef8180 	mov	x3, xzr
004ef8184 	ldp	d9, d8, [sp, #16]
004ef8188 	ldr	d10, [sp], #80
004ef818c 	b	#3685224 ; -> 0x527bcf4 QuestManager::UpdateHighSlayerQuestType
004ef8190 	cbz	x20, #68 ; -> 0x4ef81d4 
004ef8194 	mov	x0, x19
004ef8198 	bl	#-37744 ; -> 0x4eeee28 PlayerBase::get_Resistance
004ef819c 	ldr	x0, [x23]
004ef81a0 	fmov	s10, s0
004ef81a4 	ldr	w8, [x0, #228]
004ef81a8 	cbnz	w8, #8 ; -> 0x4ef81b0 
004ef81ac 	bl	#-9860556 ; -> 0x4590be0 
004ef81b0 	fmov	s0, s9
004ef81b4 	fmov	s1, s10
004ef81b8 	mov	x0, xzr
004ef81bc 	bl	#-1921340 ; -> 0x4d23080 UsefulManager::Player_MissProbability
004ef81c0 	tbnz	w0, #0, #20 ; -> 0x4ef81d4 
004ef81c4 	ldr	x8, [x20, #24]
004ef81c8 	ldr	x0, [x20, #64]
004ef81cc 	ldr	x1, [x20, #40]
004ef81d0 	blr	x8
004ef81d4 	ldr	x0, [x19, #336]
004ef81d8 	cbz	x0, #508 ; -> 0x4ef83d4 
004ef81dc 	adrp	x8, #89288704 ; -> 0xa41f000 
004ef81e0 	mov	x2, xzr
004ef81e4 	ldr	x8, [x8, #1848]
004ef81e8 	ldr	x1, [x8]
004ef81ec 	bl	#78287036 ; -> 0x99a12a8 UnityEngine.Animator::SetTrigger
004ef81f0 	ldr	x8, [x19]
004ef81f4 	mov	x0, x19
004ef81f8 	ldr	x9, [x8, #584]
004ef81fc 	ldr	x1, [x8, #592]
004ef8200 	blr	x9
004ef8204 	mov	x0, xzr
004ef8208 	bl	#-1963100 ; -> 0x4d18dac SoundManager::get_instance
004ef820c 	cbz	x0, #456 ; -> 0x4ef83d4 
004ef8210 	ldr	x8, [x0]
004ef8214 	mov	x1, xzr
004ef8218 	ldr	x9, [x8, #1864]
004ef821c 	ldr	x2, [x8, #1872]
004ef8220 	blr	x9
004ef8224 	mov	x0, x19
004ef8228 	mov	x1, xzr
004ef822c 	bl	#1172312 ; -> 0x5016584 Character::get_Hp_max
004ef8230 	adrp	x8, #89067520 ; -> 0xa3e9000 
004ef8234 	mov	x20, x0
004ef8238 	mov	x21, x1
004ef823c 	ldr	x8, [x8, #3552]
004ef8240 	ldr	x0, [x8]
004ef8244 	ldr	w8, [x0, #228]
004ef8248 	cbnz	w8, #8 ; -> 0x4ef8250 
004ef824c 	bl	#-9860716 ; -> 0x4590be0 
004ef8250 	mov	w8, #1120403456
004ef8254 	mov	x1, xzr
004ef8258 	fmov	s0, w8
004ef825c 	mov	w8, #2139095040
004ef8260 	fmov	s1, w8
004ef8264 	mov	w8, #-2147483648
004ef8268 	fmul	s0, s8, s0
004ef826c 	fcvtzs	w9, s0
004ef8270 	fcmp	s0, s1
004ef8274 	csel	w0, w8, w9, eq
004ef8278 	bl	#69750060 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef827c 	mov	x2, x0
004ef8280 	mov	x3, x1
004ef8284 	mov	x0, x20
004ef8288 	mov	x1, x21
004ef828c 	mov	x4, xzr
004ef8290 	bl	#69739956 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004ef8294 	mov	x20, x0
004ef8298 	mov	x21, x1
004ef829c 	mov	w0, #10000
004ef82a0 	mov	x1, xzr
004ef82a4 	bl	#69750016 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ef82a8 	mov	x2, x0
004ef82ac 	mov	x3, x1
004ef82b0 	mov	x0, x20
004ef82b4 	mov	x1, x21
004ef82b8 	mov	x4, xzr
004ef82bc 	bl	#69740412 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004ef82c0 	mov	x20, x0
004ef82c4 	mov	x21, x1
004ef82c8 	mov	x0, x19
004ef82cc 	mov	x1, xzr
004ef82d0 	bl	#1172336 ; -> 0x5016640 Character::get_Hp_cur
004ef82d4 	mov	x2, x20
004ef82d8 	mov	x3, x21
004ef82dc 	mov	x4, xzr
004ef82e0 	bl	#69748776 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004ef82e4 	mov	x2, x0
004ef82e8 	mov	x3, x1
004ef82ec 	mov	x0, x19
004ef82f0 	mov	x1, x2
004ef82f4 	mov	x2, x3
004ef82f8 	mov	x3, xzr
004ef82fc 	bl	#1172368 ; -> 0x501668c Character::set_Hp_cur
004ef8300 	ldr	x8, [x19, #1840]
004ef8304 	cbz	x8, #208 ; -> 0x4ef83d4 
004ef8308 	ldr	x9, [x8, #24]
004ef830c 	ldr	x0, [x8, #64]
004ef8310 	ldr	x1, [x8, #40]
004ef8314 	blr	x9
004ef8318 	ldr	x8, [x19]
004ef831c 	mov	x0, x19
004ef8320 	ldr	x9, [x8, #648]
004ef8324 	ldr	x1, [x8, #656]
004ef8328 	blr	x9
004ef832c 	ldr	x0, [x19, #168]
004ef8330 	cbz	x0, #164 ; -> 0x4ef83d4 
004ef8334 	mov	x1, xzr
004ef8338 	bl	#78753268 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef833c 	ldr	x8, [x19]
004ef8340 	mov	x0, x19
004ef8344 	mov	x1, x20
004ef8348 	mov	x2, x21
004ef834c 	mov	w3, #1
004ef8350 	ldr	x9, [x8, #680]
004ef8354 	ldr	x4, [x8, #688]
004ef8358 	blr	x9
004ef835c 	mov	x0, x19
004ef8360 	mov	x1, xzr
004ef8364 	bl	#1172188 ; -> 0x5016640 Character::get_Hp_cur
004ef8368 	mov	x2, xzr
004ef836c 	mov	x3, xzr
004ef8370 	bl	#69756356 ; -> 0x917e934 System.Numerics.BigInteger::op_LessThanOrEqual
004ef8374 	tbz	w0, #0, #44 ; -> 0x4ef83a0 
004ef8378 	ldrb	w8, [x19, #2360]
004ef837c 	cbz	w8, #60 ; -> 0x4ef83b8 
004ef8380 	mov	x0, x19
004ef8384 	ldp	x20, x19, [sp, #64]
004ef8388 	ldp	x22, x21, [sp, #48]
004ef838c 	mov	w1, #1
004ef8390 	ldp	x30, x23, [sp, #32]
004ef8394 	ldp	d9, d8, [sp, #16]
004ef8398 	ldr	d10, [sp], #80
004ef839c 	b	#-2592 ; -> 0x4ef797c PlayerBase::FakeDeath
004ef83a0 	ldp	x20, x19, [sp, #64]
004ef83a4 	ldp	x22, x21, [sp, #48]
004ef83a8 	ldp	x30, x23, [sp, #32]
004ef83ac 	ldp	d9, d8, [sp, #16]
004ef83b0 	ldr	d10, [sp], #80
004ef83b4 	ret
004ef83b8 	mov	x0, x19
004ef83bc 	ldp	x20, x19, [sp, #64]
004ef83c0 	ldp	x22, x21, [sp, #48]
004ef83c4 	ldp	x30, x23, [sp, #32]
004ef83c8 	ldp	d9, d8, [sp, #16]
004ef83cc 	ldr	d10, [sp], #80
004ef83d0 	b	#-2208 ; -> 0x4ef7b30 PlayerBase::Death
004ef83d4 	bl	#-9860808 ; -> 0x4590d0c 
