0050b9e10 	str	d8, [sp, #-64]!
0050b9e14 	str	x30, [sp, #8]
0050b9e18 	stp	x24, x23, [sp, #16]
0050b9e1c 	stp	x22, x21, [sp, #32]
0050b9e20 	stp	x20, x19, [sp, #48]
0050b9e24 	adrp	x20, #95539200 ; -> 0xabd6000 
0050b9e28 	mov	x19, x0
0050b9e2c 	ldrb	w8, [x20, #714]
0050b9e30 	tbnz	w8, #0, #24 ; -> 0x50b9e48 
0050b9e34 	adrp	x0, #87228416 ; -> 0xa3e9000 
0050b9e38 	ldr	x0, [x0, #3552]
0050b9e3c 	bl	#-11703260 ; -> 0x4590a60 
0050b9e40 	mov	w8, #1
0050b9e44 	strb	w8, [x20, #714]
0050b9e48 	mov	w0, #31607
0050b9e4c 	mov	x1, xzr
0050b9e50 	bl	#-4663468 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b9e54 	tbz	w0, #0, #52 ; -> 0x50b9e88 
0050b9e58 	mov	w0, #31607
0050b9e5c 	mov	x1, xzr
0050b9e60 	bl	#-4663304 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b9e64 	cbz	x0, #492 ; -> 0x50ba050 
0050b9e68 	mov	x1, x19
0050b9e6c 	ldp	x20, x19, [sp, #48]
0050b9e70 	ldp	x22, x21, [sp, #32]
0050b9e74 	mov	x2, xzr
0050b9e78 	ldp	x24, x23, [sp, #16]
0050b9e7c 	ldr	x30, [sp, #8]
0050b9e80 	ldr	d8, [sp], #64
0050b9e84 	b	#-5486948 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050b9e88 	adrp	x24, #87228416 ; -> 0xa3e9000 
0050b9e8c 	mov	x0, x19
0050b9e90 	mov	x1, xzr
0050b9e94 	ldr	x24, [x24, #3552]
0050b9e98 	bl	#-669784 ; -> 0x5016640 Character::get_Hp_cur
0050b9e9c 	mov	x20, x0
0050b9ea0 	mov	x21, x1
0050b9ea4 	mov	x0, x19
0050b9ea8 	mov	x1, xzr
0050b9eac 	bl	#-669992 ; -> 0x5016584 Character::get_Hp_max
0050b9eb0 	mov	x22, x0
0050b9eb4 	ldr	x0, [x24]
0050b9eb8 	mov	x23, x1
0050b9ebc 	ldr	w8, [x0, #228]
0050b9ec0 	cbnz	w8, #8 ; -> 0x50b9ec8 
0050b9ec4 	bl	#-11703012 ; -> 0x4590be0 
0050b9ec8 	mov	x0, x20
0050b9ecc 	mov	x1, x21
0050b9ed0 	mov	x2, x22
0050b9ed4 	mov	x3, x23
0050b9ed8 	mov	x4, xzr
0050b9edc 	bl	#67913840 ; -> 0x917e74c System.Numerics.BigInteger::op_GreaterThanOrEqual
0050b9ee0 	tbz	w0, #0, #344 ; -> 0x50ba038 
0050b9ee4 	ldr	x0, [x19, #312]
0050b9ee8 	cbz	x0, #360 ; -> 0x50ba050 
0050b9eec 	mov	w1, #11
0050b9ef0 	mov	x2, xzr
0050b9ef4 	bl	#-3542628 ; -> 0x4d59090 DatabaseManager::SpiritSkillValue
0050b9ef8 	fcmp	s0, #0.0
0050b9efc 	b.le	#316 ; -> 0x50ba038 
0050b9f00 	ldr	x0, [x19, #312]
0050b9f04 	cbz	x0, #332 ; -> 0x50ba050 
0050b9f08 	mov	w1, #11
0050b9f0c 	mov	x2, xzr
0050b9f10 	fmov	s8, s0
0050b9f14 	bl	#-3542948 ; -> 0x4d58f70 DatabaseManager::SpiritSkillCheck
0050b9f18 	tbz	w0, #0, #288 ; -> 0x50ba038 
0050b9f1c 	mov	x0, x19
0050b9f20 	mov	x1, xzr
0050b9f24 	bl	#-670112 ; -> 0x5016584 Character::get_Hp_max
0050b9f28 	mov	x20, x0
0050b9f2c 	ldr	x0, [x24]
0050b9f30 	mov	x21, x1
0050b9f34 	ldr	w8, [x0, #228]
0050b9f38 	cbnz	w8, #8 ; -> 0x50b9f40 
0050b9f3c 	bl	#-11703132 ; -> 0x4590be0 
0050b9f40 	mov	w8, #1120403456
0050b9f44 	mov	x1, xzr
0050b9f48 	fmov	s0, w8
0050b9f4c 	mov	w8, #2139095040
0050b9f50 	fmov	s1, w8
0050b9f54 	mov	w8, #-2147483648
0050b9f58 	fmul	s0, s8, s0
0050b9f5c 	fcvtzs	w9, s0
0050b9f60 	fcmp	s0, s1
0050b9f64 	csel	w0, w8, w9, eq
0050b9f68 	bl	#67907644 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b9f6c 	mov	x2, x0
0050b9f70 	mov	x3, x1
0050b9f74 	mov	x0, x20
0050b9f78 	mov	x1, x21
0050b9f7c 	mov	x4, xzr
0050b9f80 	bl	#67897540 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050b9f84 	mov	x20, x0
0050b9f88 	mov	x21, x1
0050b9f8c 	mov	w0, #10000
0050b9f90 	mov	x1, xzr
0050b9f94 	bl	#67907600 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050b9f98 	mov	x2, x0
0050b9f9c 	mov	x3, x1
0050b9fa0 	mov	x0, x20
0050b9fa4 	mov	x1, x21
0050b9fa8 	mov	x4, xzr
0050b9fac 	bl	#67897996 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050b9fb0 	mov	x20, x0
0050b9fb4 	mov	x21, x1
0050b9fb8 	mov	x0, x19
0050b9fbc 	mov	x1, xzr
0050b9fc0 	bl	#-670080 ; -> 0x5016640 Character::get_Hp_cur
0050b9fc4 	mov	x2, x20
0050b9fc8 	mov	x3, x21
0050b9fcc 	mov	x4, xzr
0050b9fd0 	bl	#67906360 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
0050b9fd4 	mov	x2, x0
0050b9fd8 	mov	x3, x1
0050b9fdc 	mov	x0, x19
0050b9fe0 	mov	x1, x2
0050b9fe4 	mov	x2, x3
0050b9fe8 	mov	x3, xzr
0050b9fec 	bl	#-670048 ; -> 0x501668c Character::set_Hp_cur
0050b9ff0 	ldrb	w8, [x19, #680]
0050b9ff4 	cbz	w8, #20 ; -> 0x50ba008 
0050b9ff8 	mov	x0, x19
0050b9ffc 	mov	x1, x20
0050ba000 	mov	x2, x21
0050ba004 	bl	#1408 ; -> 0x50ba584 EnemyBase::DmgStackEvent
0050ba008 	ldr	x0, [x19, #312]
0050ba00c 	cbz	x0, #68 ; -> 0x50ba050 
0050ba010 	mov	x1, x19
0050ba014 	ldp	x20, x19, [sp, #48]
0050ba018 	ldp	x22, x21, [sp, #32]
0050ba01c 	fmov	s0, #1.00000000
0050ba020 	ldp	x24, x23, [sp, #16]
0050ba024 	mov	w2, #11
0050ba028 	ldr	x30, [sp, #8]
0050ba02c 	mov	x3, xzr
0050ba030 	ldr	d8, [sp], #64
0050ba034 	b	#-3543536 ; -> 0x4d58e44 DatabaseManager::SpiritSkillEffect_EnemyTarget
0050ba038 	ldp	x20, x19, [sp, #48]
0050ba03c 	ldr	x30, [sp, #8]
0050ba040 	ldp	x22, x21, [sp, #32]
0050ba044 	ldp	x24, x23, [sp, #16]
0050ba048 	ldr	d8, [sp], #64
0050ba04c 	ret
0050ba050 	bl	#-11703108 ; -> 0x4590d0c 
