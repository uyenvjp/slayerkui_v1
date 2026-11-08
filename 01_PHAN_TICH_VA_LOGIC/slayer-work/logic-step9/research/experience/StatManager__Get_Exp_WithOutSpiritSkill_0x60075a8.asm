004f17d8c 	str	x30, [sp, #-64]!
004f17d90 	stp	x24, x23, [sp, #16]
004f17d94 	stp	x22, x21, [sp, #32]
004f17d98 	stp	x20, x19, [sp, #48]
004f17d9c 	adrp	x22, #97247232 ; -> 0xabd5000 
004f17da0 	mov	x20, x2
004f17da4 	mov	x21, x1
004f17da8 	ldrb	w8, [x22, #1725]
004f17dac 	mov	x19, x0
004f17db0 	tbnz	w8, #0, #24 ; -> 0x4f17dc8 
004f17db4 	adrp	x0, #88940544 ; -> 0xa3e9000 
004f17db8 	ldr	x0, [x0, #3552]
004f17dbc 	bl	#-9991004 ; -> 0x4590a60 
004f17dc0 	mov	w8, #1
004f17dc4 	strb	w8, [x22, #1725]
004f17dc8 	mov	w0, #33206
004f17dcc 	mov	x1, xzr
004f17dd0 	bl	#-2951212 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f17dd4 	tbz	w0, #0, #56 ; -> 0x4f17e0c 
004f17dd8 	mov	w0, #33206
004f17ddc 	mov	x1, xzr
004f17de0 	bl	#-2951048 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f17de4 	cbz	x0, #256 ; -> 0x4f17ee4 
004f17de8 	mov	x1, x19
004f17dec 	mov	x2, x21
004f17df0 	mov	x3, x20
004f17df4 	ldp	x20, x19, [sp, #48]
004f17df8 	mov	x4, xzr
004f17dfc 	ldp	x22, x21, [sp, #32]
004f17e00 	ldp	x24, x23, [sp, #16]
004f17e04 	ldr	x30, [sp], #64
004f17e08 	b	#-3706568 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
004f17e0c 	mov	x0, x19
004f17e10 	mov	x1, x21
004f17e14 	mov	x2, x20
004f17e18 	bl	#-1964 ; -> 0x4f1766c StatManager::AddBuffs
004f17e1c 	ldr	x24, [x19, #144]
004f17e20 	cbz	x24, #196 ; -> 0x4f17ee4 
004f17e24 	mov	x20, x0
004f17e28 	mov	x21, x1
004f17e2c 	add	x0, x24, #264
004f17e30 	mov	x1, xzr
004f17e34 	bl	#-3961824 ; -> 0x4b50a54 SilentBigInt::get_Value
004f17e38 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f17e3c 	mov	x22, x0
004f17e40 	mov	x23, x1
004f17e44 	ldr	x8, [x8, #3552]
004f17e48 	ldr	x0, [x8]
004f17e4c 	ldr	w8, [x0, #228]
004f17e50 	cbnz	w8, #8 ; -> 0x4f17e58 
004f17e54 	bl	#-9990772 ; -> 0x4590be0 
004f17e58 	mov	x0, x22
004f17e5c 	mov	x1, x23
004f17e60 	mov	x2, x20
004f17e64 	mov	x3, x21
004f17e68 	mov	x4, xzr
004f17e6c 	bl	#69609644 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004f17e70 	mov	x2, x0
004f17e74 	mov	x3, x1
004f17e78 	add	x0, x24, #264
004f17e7c 	mov	x1, x2
004f17e80 	mov	x2, x3
004f17e84 	mov	x3, xzr
004f17e88 	bl	#-3960976 ; -> 0x4b50df8 SilentBigInt::set_Value
004f17e8c 	ldr	x22, [x19, #144]
004f17e90 	cbz	x22, #84 ; -> 0x4f17ee4 
004f17e94 	add	x0, x22, #304
004f17e98 	mov	x1, xzr
004f17e9c 	bl	#-3961928 ; -> 0x4b50a54 SilentBigInt::get_Value
004f17ea0 	mov	x2, x20
004f17ea4 	mov	x3, x21
004f17ea8 	mov	x4, xzr
004f17eac 	bl	#69609580 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004f17eb0 	mov	x2, x0
004f17eb4 	mov	x3, x1
004f17eb8 	add	x0, x22, #304
004f17ebc 	mov	x1, x2
004f17ec0 	mov	x2, x3
004f17ec4 	mov	x3, xzr
004f17ec8 	bl	#-3961040 ; -> 0x4b50df8 SilentBigInt::set_Value
004f17ecc 	mov	x0, x19
004f17ed0 	ldp	x20, x19, [sp, #48]
004f17ed4 	ldp	x22, x21, [sp, #32]
004f17ed8 	ldp	x24, x23, [sp, #16]
004f17edc 	ldr	x30, [sp], #64
004f17ee0 	b	#-4692 ; -> 0x4f16c8c StatManager::Fill_Update
004f17ee4 	bl	#-9990616 ; -> 0x4590d0c 
