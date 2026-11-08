004d46f04 	str	x30, [sp, #-64]!
004d46f08 	stp	x24, x23, [sp, #16]
004d46f0c 	stp	x22, x21, [sp, #32]
004d46f10 	stp	x20, x19, [sp, #48]
004d46f14 	adrp	x22, #99147776 ; -> 0xabd4000 
004d46f18 	mov	x20, x2
004d46f1c 	mov	x21, x1
004d46f20 	ldrb	w8, [x22, #2827]
004d46f24 	mov	x19, x0
004d46f28 	tbnz	w8, #0, #36 ; -> 0x4d46f4c 
004d46f2c 	adrp	x0, #90845184 ; -> 0xa3e9000 
004d46f30 	ldr	x0, [x0, #3552]
004d46f34 	bl	#-8086740 ; -> 0x4590a60 
004d46f38 	adrp	x0, #90869760 ; -> 0xa3ef000 
004d46f3c 	ldr	x0, [x0, #3632]
004d46f40 	bl	#-8086752 ; -> 0x4590a60 
004d46f44 	mov	w8, #1
004d46f48 	strb	w8, [x22, #2827]
004d46f4c 	mov	w0, #4610
004d46f50 	mov	x1, xzr
004d46f54 	bl	#-1046960 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d46f58 	tbz	w0, #0, #56 ; -> 0x4d46f90 
004d46f5c 	mov	w0, #4610
004d46f60 	mov	x1, xzr
004d46f64 	bl	#-1046796 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d46f68 	cbz	x0, #272 ; -> 0x4d47078 
004d46f6c 	mov	x1, x19
004d46f70 	mov	x2, x21
004d46f74 	mov	x3, x20
004d46f78 	ldp	x20, x19, [sp, #48]
004d46f7c 	mov	x4, xzr
004d46f80 	ldp	x22, x21, [sp, #32]
004d46f84 	ldp	x24, x23, [sp, #16]
004d46f88 	ldr	x30, [sp], #64
004d46f8c 	b	#-1802316 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
004d46f90 	adrp	x8, #90845184 ; -> 0xa3e9000 
004d46f94 	adrp	x24, #90869760 ; -> 0xa3ef000 
004d46f98 	ldr	x8, [x8, #3552]
004d46f9c 	ldr	x0, [x8]
004d46fa0 	ldr	x24, [x24, #3632]
004d46fa4 	ldp	x22, x23, [x19, #352]
004d46fa8 	ldr	w8, [x0, #228]
004d46fac 	cbnz	w8, #8 ; -> 0x4d46fb4 
004d46fb0 	bl	#-8086480 ; -> 0x4590be0 
004d46fb4 	mov	x0, x22
004d46fb8 	mov	x1, x23
004d46fbc 	mov	x2, x21
004d46fc0 	mov	x3, x20
004d46fc4 	mov	x4, xzr
004d46fc8 	bl	#71513936 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004d46fcc 	stp	x0, x1, [x19, #352]
004d46fd0 	add	x0, x19, #360
004d46fd4 	mov	x1, xzr
004d46fd8 	bl	#-8086996 ; -> 0x4590a04 
004d46fdc 	ldp	x0, x1, [x19, #400]
004d46fe0 	mov	x2, x21
004d46fe4 	mov	x3, x20
004d46fe8 	mov	x4, xzr
004d46fec 	bl	#71513900 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004d46ff0 	stp	x0, x1, [x19, #400]
004d46ff4 	add	x0, x19, #408
004d46ff8 	mov	x1, xzr
004d46ffc 	bl	#-8087032 ; -> 0x4590a04 
004d47000 	ldp	x0, x1, [x19, #416]
004d47004 	mov	x2, x21
004d47008 	mov	x3, x20
004d4700c 	mov	x4, xzr
004d47010 	bl	#71523064 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004d47014 	stp	x0, x1, [x19, #416]
004d47018 	add	x0, x19, #424
004d4701c 	mov	x1, xzr
004d47020 	bl	#-8087068 ; -> 0x4590a04 
004d47024 	ldp	x0, x1, [x19, #368]
004d47028 	mov	x2, x21
004d4702c 	mov	x3, x20
004d47030 	mov	x4, xzr
004d47034 	bl	#71513828 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004d47038 	stp	x0, x1, [x19, #368]
004d4703c 	add	x0, x19, #376
004d47040 	mov	x1, xzr
004d47044 	bl	#-8087104 ; -> 0x4590a04 
004d47048 	mov	x0, x19
004d4704c 	bl	#48 ; -> 0x4d4707c DatabaseManager::GoldSafeCheck
004d47050 	ldr	x8, [x24]
004d47054 	ldr	x8, [x8, #184]
004d47058 	ldr	x0, [x8]
004d4705c 	cbz	x0, #28 ; -> 0x4d47078 
004d47060 	ldp	x20, x19, [sp, #48]
004d47064 	mov	x1, xzr
004d47068 	ldp	x22, x21, [sp, #32]
004d4706c 	ldp	x24, x23, [sp, #16]
004d47070 	ldr	x30, [sp], #64
004d47074 	b	#1430180 ; -> 0x4ea4318 GoodsDisplayManager::GoldUpdate
004d47078 	bl	#-8086380 ; -> 0x4590d0c 
