0050b8b60 	str	x30, [sp, #-64]!
0050b8b64 	stp	x24, x23, [sp, #16]
0050b8b68 	stp	x22, x21, [sp, #32]
0050b8b6c 	stp	x20, x19, [sp, #48]
0050b8b70 	mov	x21, x1
0050b8b74 	mov	x19, x0
0050b8b78 	mov	w0, #31606
0050b8b7c 	mov	x1, xzr
0050b8b80 	mov	w23, w5
0050b8b84 	mov	w22, w4
0050b8b88 	mov	w24, w3
0050b8b8c 	mov	x20, x2
0050b8b90 	bl	#-4658668 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b8b94 	tbz	w0, #0, #68 ; -> 0x50b8bd8 
0050b8b98 	mov	w0, #31606
0050b8b9c 	mov	x1, xzr
0050b8ba0 	bl	#-4658504 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b8ba4 	cbz	x0, #276 ; -> 0x50b8cb8 
0050b8ba8 	and	w6, w23, #0x1
0050b8bac 	mov	x1, x19
0050b8bb0 	mov	x2, x21
0050b8bb4 	mov	x3, x20
0050b8bb8 	mov	w4, w24
0050b8bbc 	mov	w5, w22
0050b8bc0 	ldp	x20, x19, [sp, #48]
0050b8bc4 	mov	x7, xzr
0050b8bc8 	ldp	x22, x21, [sp, #32]
0050b8bcc 	ldp	x24, x23, [sp, #16]
0050b8bd0 	ldr	x30, [sp], #64
0050b8bd4 	b	#-5067324 ; -> 0x4be3998 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1976
0050b8bd8 	mov	x0, x19
0050b8bdc 	bl	#4660 ; -> 0x50b9e10 EnemyBase::NormalEnemyHpDecrease
0050b8be0 	tbz	w23, #0, #68 ; -> 0x50b8c24 
0050b8be4 	ldr	x8, [x19]
0050b8be8 	mov	x0, x19
0050b8bec 	mov	x1, x21
0050b8bf0 	mov	x2, x20
0050b8bf4 	mov	w3, w22
0050b8bf8 	ldr	x9, [x8, #920]
0050b8bfc 	ldr	x4, [x8, #928]
0050b8c00 	blr	x9
0050b8c04 	mov	x2, x0
0050b8c08 	mov	x3, x1
0050b8c0c 	mov	x0, x19
0050b8c10 	mov	x1, x2
0050b8c14 	mov	x2, x3
0050b8c18 	bl	#5180 ; -> 0x50ba054 EnemyBase::NormalEnemyAddDmg_Cal
0050b8c1c 	mov	x21, x0
0050b8c20 	mov	x20, x1
0050b8c24 	mov	x0, x19
0050b8c28 	mov	x1, x21
0050b8c2c 	mov	x2, x20
0050b8c30 	bl	#10012 ; -> 0x50bb34c EnemyBase::BlackOrb_NormalEnemyAddDmg_Cal
0050b8c34 	mov	x2, x0
0050b8c38 	mov	x3, x1
0050b8c3c 	mov	x0, x19
0050b8c40 	mov	x1, x2
0050b8c44 	mov	x2, x3
0050b8c48 	bl	#10376 ; -> 0x50bb4d0 EnemyBase::ThemeDungeon_NormalEnemyAddDmg_Cal
0050b8c4c 	mov	x2, x0
0050b8c50 	mov	x3, x1
0050b8c54 	mov	x0, x19
0050b8c58 	mov	x1, x2
0050b8c5c 	mov	x2, x3
0050b8c60 	bl	#5480 ; -> 0x50ba1c8 EnemyBase::HighHpEnemyAddDmg_Cal
0050b8c64 	mov	x2, x0
0050b8c68 	mov	x3, x1
0050b8c6c 	mov	x0, x19
0050b8c70 	mov	x1, x2
0050b8c74 	mov	x2, x3
0050b8c78 	bl	#5852 ; -> 0x50ba354 EnemyBase::LowHpDmg_Cal
0050b8c7c 	ldrb	w8, [x19, #680]
0050b8c80 	mov	x20, x0
0050b8c84 	mov	x21, x1
0050b8c88 	cbz	w8, #20 ; -> 0x50b8c9c 
0050b8c8c 	mov	x0, x19
0050b8c90 	mov	x1, x20
0050b8c94 	mov	x2, x21
0050b8c98 	bl	#6380 ; -> 0x50ba584 EnemyBase::DmgStackEvent
0050b8c9c 	mov	x0, x20
0050b8ca0 	mov	x1, x21
0050b8ca4 	ldp	x20, x19, [sp, #48]
0050b8ca8 	ldp	x22, x21, [sp, #32]
0050b8cac 	ldp	x24, x23, [sp, #16]
0050b8cb0 	ldr	x30, [sp], #64
0050b8cb4 	ret
0050b8cb8 	bl	#-11698092 ; -> 0x4590d0c 
