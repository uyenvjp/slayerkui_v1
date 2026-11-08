0050b8cbc 	stp	x30, x25, [sp, #-64]!
0050b8cc0 	stp	x24, x23, [sp, #16]
0050b8cc4 	stp	x22, x21, [sp, #32]
0050b8cc8 	stp	x20, x19, [sp, #48]
0050b8ccc 	adrp	x25, #95543296 ; -> 0xabd6000 
0050b8cd0 	mov	w23, w5
0050b8cd4 	mov	w22, w4
0050b8cd8 	ldrb	w8, [x25, #711]
0050b8cdc 	mov	w24, w3
0050b8ce0 	mov	x20, x2
0050b8ce4 	mov	x21, x1
0050b8ce8 	mov	x19, x0
0050b8cec 	tbnz	w8, #0, #24 ; -> 0x50b8d04 
0050b8cf0 	adrp	x0, #87232512 ; -> 0xa3e9000 
0050b8cf4 	ldr	x0, [x0, #1384]
0050b8cf8 	bl	#-11698840 ; -> 0x4590a60 
0050b8cfc 	mov	w8, #1
0050b8d00 	strb	w8, [x25, #711]
0050b8d04 	mov	w0, #31618
0050b8d08 	mov	x1, xzr
0050b8d0c 	bl	#-4659048 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b8d10 	tbz	w0, #0, #68 ; -> 0x50b8d54 
0050b8d14 	mov	w0, #31618
0050b8d18 	mov	x1, xzr
0050b8d1c 	bl	#-4658884 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b8d20 	cbz	x0, #336 ; -> 0x50b8e70 
0050b8d24 	and	w6, w23, #0x1
0050b8d28 	mov	x1, x19
0050b8d2c 	mov	x2, x21
0050b8d30 	mov	x3, x20
0050b8d34 	mov	w4, w24
0050b8d38 	mov	w5, w22
0050b8d3c 	ldp	x20, x19, [sp, #48]
0050b8d40 	mov	x7, xzr
0050b8d44 	ldp	x22, x21, [sp, #32]
0050b8d48 	ldp	x24, x23, [sp, #16]
0050b8d4c 	ldp	x30, x25, [sp], #64
0050b8d50 	b	#-5067704 ; -> 0x4be3998 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1976
0050b8d54 	adrp	x24, #87232512 ; -> 0xa3e9000 
0050b8d58 	ldr	x24, [x24, #1384]
0050b8d5c 	ldr	x0, [x24]
0050b8d60 	ldr	w8, [x0, #228]
0050b8d64 	cbnz	w8, #12 ; -> 0x50b8d70 
0050b8d68 	bl	#-11698568 ; -> 0x4590be0 
0050b8d6c 	ldr	x0, [x24]
0050b8d70 	ldr	x8, [x0, #184]
0050b8d74 	ldr	w9, [x8, #304]
0050b8d78 	add	w9, w9, #1
0050b8d7c 	str	w9, [x8, #304]
0050b8d80 	tbz	w23, #0, #68 ; -> 0x50b8dc4 
0050b8d84 	ldr	x8, [x19]
0050b8d88 	mov	x0, x19
0050b8d8c 	mov	x1, x21
0050b8d90 	mov	x2, x20
0050b8d94 	mov	w3, w22
0050b8d98 	ldr	x9, [x8, #920]
0050b8d9c 	ldr	x4, [x8, #928]
0050b8da0 	blr	x9
0050b8da4 	mov	x2, x0
0050b8da8 	mov	x3, x1
0050b8dac 	mov	x0, x19
0050b8db0 	mov	x1, x2
0050b8db4 	mov	x2, x3
0050b8db8 	bl	#6360 ; -> 0x50ba690 EnemyBase::BossAddSkillDmg_Cal
0050b8dbc 	mov	x21, x0
0050b8dc0 	mov	x20, x1
0050b8dc4 	mov	x0, x19
0050b8dc8 	mov	x1, x21
0050b8dcc 	mov	x2, x20
0050b8dd0 	bl	#10372 ; -> 0x50bb654 EnemyBase::BlackOrb_BossAddDmg_Cal
0050b8dd4 	mov	x2, x0
0050b8dd8 	mov	x3, x1
0050b8ddc 	mov	x0, x19
0050b8de0 	mov	x1, x2
0050b8de4 	mov	x2, x3
0050b8de8 	bl	#10736 ; -> 0x50bb7d8 EnemyBase::ThemeDungeon_BossAddDmg_Cal
0050b8dec 	mov	x2, x0
0050b8df0 	mov	x3, x1
0050b8df4 	mov	x0, x19
0050b8df8 	mov	x1, x2
0050b8dfc 	mov	x2, x3
0050b8e00 	bl	#6660 ; -> 0x50ba804 EnemyBase::Beast_BossAddDmg_Cal
0050b8e04 	mov	x2, x0
0050b8e08 	mov	x3, x1
0050b8e0c 	mov	x0, x19
0050b8e10 	mov	x1, x2
0050b8e14 	mov	x2, x3
0050b8e18 	bl	#5040 ; -> 0x50ba1c8 EnemyBase::HighHpEnemyAddDmg_Cal
0050b8e1c 	mov	x2, x0
0050b8e20 	mov	x3, x1
0050b8e24 	mov	x0, x19
0050b8e28 	mov	x1, x2
0050b8e2c 	mov	x2, x3
0050b8e30 	bl	#5412 ; -> 0x50ba354 EnemyBase::LowHpDmg_Cal
0050b8e34 	ldrb	w8, [x19, #680]
0050b8e38 	mov	x20, x0
0050b8e3c 	mov	x21, x1
0050b8e40 	cbz	w8, #20 ; -> 0x50b8e54 
0050b8e44 	mov	x0, x19
0050b8e48 	mov	x1, x20
0050b8e4c 	mov	x2, x21
0050b8e50 	bl	#5940 ; -> 0x50ba584 EnemyBase::DmgStackEvent
0050b8e54 	mov	x0, x20
0050b8e58 	mov	x1, x21
0050b8e5c 	ldp	x20, x19, [sp, #48]
0050b8e60 	ldp	x22, x21, [sp, #32]
0050b8e64 	ldp	x24, x23, [sp, #16]
0050b8e68 	ldp	x30, x25, [sp], #64
0050b8e6c 	ret
0050b8e70 	bl	#-11698532 ; -> 0x4590d0c 
