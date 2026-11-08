004ef7d64 	stp	x30, x23, [sp, #-48]!
004ef7d68 	stp	x22, x21, [sp, #16]
004ef7d6c 	stp	x20, x19, [sp, #32]
004ef7d70 	adrp	x22, #97378304 ; -> 0xabd5000 
004ef7d74 	mov	x20, x2
004ef7d78 	mov	x21, x1
004ef7d7c 	ldrb	w8, [x22, #1487]
004ef7d80 	mov	x19, x0
004ef7d84 	tbnz	w8, #0, #24 ; -> 0x4ef7d9c 
004ef7d88 	adrp	x0, #89071616 ; -> 0xa3e9000 
004ef7d8c 	ldr	x0, [x0, #3552]
004ef7d90 	bl	#-9859888 ; -> 0x4590a60 
004ef7d94 	mov	w8, #1
004ef7d98 	strb	w8, [x22, #1487]
004ef7d9c 	mov	w0, #32928
004ef7da0 	mov	x1, xzr
004ef7da4 	bl	#-2820096 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef7da8 	tbz	w0, #0, #52 ; -> 0x4ef7ddc 
004ef7dac 	mov	w0, #32928
004ef7db0 	mov	x1, xzr
004ef7db4 	bl	#-2819932 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef7db8 	cbz	x0, #340 ; -> 0x4ef7f0c 
004ef7dbc 	mov	x1, x19
004ef7dc0 	mov	x2, x21
004ef7dc4 	mov	x3, x20
004ef7dc8 	ldp	x20, x19, [sp, #32]
004ef7dcc 	mov	x4, xzr
004ef7dd0 	ldp	x22, x21, [sp, #16]
004ef7dd4 	ldp	x30, x23, [sp], #48
004ef7dd8 	b	#-3575448 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
004ef7ddc 	ldr	w8, [x19, #36]
004ef7de0 	cmp	w8, #3
004ef7de4 	b.eq	#260 ; -> 0x4ef7ee8 
004ef7de8 	ldrb	w8, [x19, #448]
004ef7dec 	cbz	w8, #252 ; -> 0x4ef7ee8 
004ef7df0 	mov	x0, x19
004ef7df4 	mov	x1, xzr
004ef7df8 	bl	#1173576 ; -> 0x5016640 Character::get_Hp_cur
004ef7dfc 	adrp	x8, #89071616 ; -> 0xa3e9000 
004ef7e00 	mov	x22, x0
004ef7e04 	mov	x23, x1
004ef7e08 	ldr	x8, [x8, #3552]
004ef7e0c 	ldr	x0, [x8]
004ef7e10 	ldr	w8, [x0, #228]
004ef7e14 	cbnz	w8, #8 ; -> 0x4ef7e1c 
004ef7e18 	bl	#-9859640 ; -> 0x4590be0 
004ef7e1c 	mov	x0, x22
004ef7e20 	mov	x1, x23
004ef7e24 	mov	x2, x21
004ef7e28 	mov	x3, x20
004ef7e2c 	mov	x4, xzr
004ef7e30 	bl	#69749976 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004ef7e34 	mov	x2, x0
004ef7e38 	mov	x3, x1
004ef7e3c 	mov	x0, x19
004ef7e40 	mov	x1, x2
004ef7e44 	mov	x2, x3
004ef7e48 	mov	x3, xzr
004ef7e4c 	bl	#1173568 ; -> 0x501668c Character::set_Hp_cur
004ef7e50 	ldr	x8, [x19, #1840]
004ef7e54 	cbz	x8, #184 ; -> 0x4ef7f0c 
004ef7e58 	ldr	x9, [x8, #24]
004ef7e5c 	ldr	x0, [x8, #64]
004ef7e60 	ldr	x1, [x8, #40]
004ef7e64 	blr	x9
004ef7e68 	ldr	x8, [x19]
004ef7e6c 	mov	x0, x19
004ef7e70 	ldr	x9, [x8, #648]
004ef7e74 	ldr	x1, [x8, #656]
004ef7e78 	blr	x9
004ef7e7c 	ldr	x0, [x19, #168]
004ef7e80 	cbz	x0, #140 ; -> 0x4ef7f0c 
004ef7e84 	mov	x1, xzr
004ef7e88 	bl	#78754468 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef7e8c 	ldr	x8, [x19]
004ef7e90 	mov	x0, x19
004ef7e94 	mov	x1, x21
004ef7e98 	mov	x2, x20
004ef7e9c 	mov	w3, #1
004ef7ea0 	ldr	x9, [x8, #680]
004ef7ea4 	ldr	x4, [x8, #688]
004ef7ea8 	blr	x9
004ef7eac 	mov	x0, x19
004ef7eb0 	mov	x1, xzr
004ef7eb4 	bl	#1173388 ; -> 0x5016640 Character::get_Hp_cur
004ef7eb8 	mov	x2, xzr
004ef7ebc 	mov	x3, xzr
004ef7ec0 	bl	#69757556 ; -> 0x917e934 System.Numerics.BigInteger::op_LessThanOrEqual
004ef7ec4 	tbz	w0, #0, #36 ; -> 0x4ef7ee8 
004ef7ec8 	ldrb	w8, [x19, #2360]
004ef7ecc 	cbz	w8, #44 ; -> 0x4ef7ef8 
004ef7ed0 	mov	x0, x19
004ef7ed4 	ldp	x20, x19, [sp, #32]
004ef7ed8 	ldp	x22, x21, [sp, #16]
004ef7edc 	mov	w1, #1
004ef7ee0 	ldp	x30, x23, [sp], #48
004ef7ee4 	b	#-1384 ; -> 0x4ef797c PlayerBase::FakeDeath
004ef7ee8 	ldp	x20, x19, [sp, #32]
004ef7eec 	ldp	x22, x21, [sp, #16]
004ef7ef0 	ldp	x30, x23, [sp], #48
004ef7ef4 	ret
004ef7ef8 	mov	x0, x19
004ef7efc 	ldp	x20, x19, [sp, #32]
004ef7f00 	ldp	x22, x21, [sp, #16]
004ef7f04 	ldp	x30, x23, [sp], #48
004ef7f08 	b	#-984 ; -> 0x4ef7b30 PlayerBase::Death
004ef7f0c 	bl	#-9859584 ; -> 0x4590d0c 
