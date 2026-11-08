0050bafb0 	sub	sp, sp, #96
0050bafb4 	str	x30, [sp, #32]
0050bafb8 	stp	x24, x23, [sp, #48]
0050bafbc 	stp	x22, x21, [sp, #64]
0050bafc0 	stp	x20, x19, [sp, #80]
0050bafc4 	adrp	x22, #95535104 ; -> 0xabd6000 
0050bafc8 	mov	x20, x2
0050bafcc 	mov	x21, x1
0050bafd0 	ldrb	w8, [x22, #710]
0050bafd4 	mov	x19, x0
0050bafd8 	tbnz	w8, #0, #36 ; -> 0x50baffc 
0050bafdc 	adrp	x0, #87224320 ; -> 0xa3e9000 
0050bafe0 	ldr	x0, [x0, #3552]
0050bafe4 	bl	#-11707780 ; -> 0x4590a60 
0050bafe8 	adrp	x0, #87519232 ; -> 0xa431000 
0050bafec 	ldr	x0, [x0, #112]
0050baff0 	bl	#-11707792 ; -> 0x4590a60 
0050baff4 	mov	w8, #1
0050baff8 	strb	w8, [x22, #710]
0050baffc 	mov	w0, #31627
0050bb000 	mov	x1, xzr
0050bb004 	bl	#-4668000 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bb008 	tbz	w0, #0, #60 ; -> 0x50bb044 
0050bb00c 	mov	w0, #31627
0050bb010 	mov	x1, xzr
0050bb014 	bl	#-4667836 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bb018 	cbz	x0, #360 ; -> 0x50bb180 
0050bb01c 	mov	x1, x19
0050bb020 	mov	x2, x21
0050bb024 	mov	x3, x20
0050bb028 	ldp	x20, x19, [sp, #80]
0050bb02c 	ldr	x30, [sp, #32]
0050bb030 	ldp	x22, x21, [sp, #64]
0050bb034 	mov	x4, xzr
0050bb038 	ldp	x24, x23, [sp, #48]
0050bb03c 	add	sp, sp, #96
0050bb040 	b	#-5423360 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
0050bb044 	adrp	x24, #87220224 ; -> 0xa3e9000 
0050bb048 	mov	x0, x19
0050bb04c 	mov	x1, xzr
0050bb050 	ldr	x24, [x24, #3552]
0050bb054 	bl	#-674324 ; -> 0x5016640 Character::get_Hp_cur
0050bb058 	mov	x22, x0
0050bb05c 	ldr	x0, [x24]
0050bb060 	mov	x23, x1
0050bb064 	ldr	w8, [x0, #228]
0050bb068 	cbnz	w8, #8 ; -> 0x50bb070 
0050bb06c 	bl	#-11707532 ; -> 0x4590be0 
0050bb070 	mov	x0, x22
0050bb074 	mov	x1, x23
0050bb078 	mov	x2, x21
0050bb07c 	mov	x3, x20
0050bb080 	mov	x4, xzr
0050bb084 	bl	#67902084 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
0050bb088 	mov	x2, x0
0050bb08c 	mov	x3, x1
0050bb090 	mov	x0, x19
0050bb094 	mov	x1, x2
0050bb098 	mov	x2, x3
0050bb09c 	mov	x3, xzr
0050bb0a0 	bl	#-674324 ; -> 0x501668c Character::set_Hp_cur
0050bb0a4 	mov	x0, x19
0050bb0a8 	mov	x1, xzr
0050bb0ac 	bl	#-674412 ; -> 0x5016640 Character::get_Hp_cur
0050bb0b0 	mov	x2, xzr
0050bb0b4 	mov	x3, xzr
0050bb0b8 	bl	#67909868 ; -> 0x917e9a4 System.Numerics.BigInteger::op_GreaterThan
0050bb0bc 	tbz	w0, #0, #80 ; -> 0x50bb10c 
0050bb0c0 	adrp	x20, #87515136 ; -> 0xa431000 
0050bb0c4 	mov	w8, #1
0050bb0c8 	add	x1, sp, #44
0050bb0cc 	ldr	x20, [x20, #112]
0050bb0d0 	str	w8, [sp, #44]
0050bb0d4 	ldr	x0, [x20]
0050bb0d8 	bl	#-11707632 ; -> 0x4590be8 
0050bb0dc 	ldr	x8, [x20]
0050bb0e0 	ldr	w10, [x19, #324]
0050bb0e4 	mov	x1, x0
0050bb0e8 	mov	x9, #-1
0050bb0ec 	add	x0, sp, #8
0050bb0f0 	mov	x2, xzr
0050bb0f4 	stp	x8, x9, [sp, #8]
0050bb0f8 	str	w10, [sp, #24]
0050bb0fc 	bl	#64964868 ; -> 0x8eafa00 System.Enum::Equals
0050bb100 	tbz	w0, #0, #12 ; -> 0x50bb10c 
0050bb104 	mov	x0, x19
0050bb108 	bl	#124 ; -> 0x50bb184 EnemyBase::NormalEnemyInstantKill
0050bb10c 	mov	x0, x19
0050bb110 	mov	x1, xzr
0050bb114 	bl	#-674516 ; -> 0x5016640 Character::get_Hp_cur
0050bb118 	mov	x20, x0
0050bb11c 	ldr	x0, [x24]
0050bb120 	mov	x21, x1
0050bb124 	ldr	w8, [x0, #228]
0050bb128 	cbnz	w8, #8 ; -> 0x50bb130 
0050bb12c 	bl	#-11707724 ; -> 0x4590be0 
0050bb130 	mov	x0, x20
0050bb134 	mov	x1, x21
0050bb138 	mov	x2, xzr
0050bb13c 	mov	x3, xzr
0050bb140 	bl	#67909620 ; -> 0x917e934 System.Numerics.BigInteger::op_LessThanOrEqual
0050bb144 	ldr	x8, [x19]
0050bb148 	tbz	w0, #0, #16 ; -> 0x50bb158 
0050bb14c 	ldr	x9, [x8, #1320]
0050bb150 	ldr	x1, [x8, #1328]
0050bb154 	b	#12 ; -> 0x50bb160 
0050bb158 	ldr	x9, [x8, #1176]
0050bb15c 	ldr	x1, [x8, #1184]
0050bb160 	mov	x0, x19
0050bb164 	blr	x9
0050bb168 	ldp	x20, x19, [sp, #80]
0050bb16c 	ldr	x30, [sp, #32]
0050bb170 	ldp	x22, x21, [sp, #64]
0050bb174 	ldp	x24, x23, [sp, #48]
0050bb178 	add	sp, sp, #96
0050bb17c 	ret
0050bb180 	bl	#-11707508 ; -> 0x4590d0c 
