004f17ee8 	str	x30, [sp, #-64]!
004f17eec 	stp	x24, x23, [sp, #16]
004f17ef0 	stp	x22, x21, [sp, #32]
004f17ef4 	stp	x20, x19, [sp, #48]
004f17ef8 	adrp	x22, #97247232 ; -> 0xabd5000 
004f17efc 	mov	x20, x2
004f17f00 	mov	x21, x1
004f17f04 	ldrb	w8, [x22, #1726]
004f17f08 	mov	x19, x0
004f17f0c 	tbnz	w8, #0, #24 ; -> 0x4f17f24 
004f17f10 	adrp	x0, #88940544 ; -> 0xa3e9000 
004f17f14 	ldr	x0, [x0, #3552]
004f17f18 	bl	#-9991352 ; -> 0x4590a60 
004f17f1c 	mov	w8, #1
004f17f20 	strb	w8, [x22, #1726]
004f17f24 	mov	w0, #7809
004f17f28 	mov	x1, xzr
004f17f2c 	bl	#-2951560 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f17f30 	tbz	w0, #0, #56 ; -> 0x4f17f68 
004f17f34 	mov	w0, #7809
004f17f38 	mov	x1, xzr
004f17f3c 	bl	#-2951396 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f17f40 	cbz	x0, #232 ; -> 0x4f18028 
004f17f44 	mov	x1, x19
004f17f48 	mov	x2, x21
004f17f4c 	mov	x3, x20
004f17f50 	ldp	x20, x19, [sp, #48]
004f17f54 	mov	x4, xzr
004f17f58 	ldp	x22, x21, [sp, #32]
004f17f5c 	ldp	x24, x23, [sp, #16]
004f17f60 	ldr	x30, [sp], #64
004f17f64 	b	#-3706916 ; -> 0x4b8ef40 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_320
004f17f68 	ldr	x24, [x19, #144]
004f17f6c 	cbz	x24, #188 ; -> 0x4f18028 
004f17f70 	add	x0, x24, #264
004f17f74 	mov	x1, xzr
004f17f78 	bl	#-3962148 ; -> 0x4b50a54 SilentBigInt::get_Value
004f17f7c 	adrp	x8, #88940544 ; -> 0xa3e9000 
004f17f80 	mov	x22, x0
004f17f84 	mov	x23, x1
004f17f88 	ldr	x8, [x8, #3552]
004f17f8c 	ldr	x0, [x8]
004f17f90 	ldr	w8, [x0, #228]
004f17f94 	cbnz	w8, #8 ; -> 0x4f17f9c 
004f17f98 	bl	#-9991096 ; -> 0x4590be0 
004f17f9c 	mov	x0, x22
004f17fa0 	mov	x1, x23
004f17fa4 	mov	x2, x21
004f17fa8 	mov	x3, x20
004f17fac 	mov	x4, xzr
004f17fb0 	bl	#69609320 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004f17fb4 	mov	x2, x0
004f17fb8 	mov	x3, x1
004f17fbc 	add	x0, x24, #264
004f17fc0 	mov	x1, x2
004f17fc4 	mov	x2, x3
004f17fc8 	mov	x3, xzr
004f17fcc 	bl	#-3961300 ; -> 0x4b50df8 SilentBigInt::set_Value
004f17fd0 	ldr	x22, [x19, #144]
004f17fd4 	cbz	x22, #84 ; -> 0x4f18028 
004f17fd8 	add	x0, x22, #304
004f17fdc 	mov	x1, xzr
004f17fe0 	bl	#-3962252 ; -> 0x4b50a54 SilentBigInt::get_Value
004f17fe4 	mov	x2, x21
004f17fe8 	mov	x3, x20
004f17fec 	mov	x4, xzr
004f17ff0 	bl	#69609256 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004f17ff4 	mov	x2, x0
004f17ff8 	mov	x3, x1
004f17ffc 	add	x0, x22, #304
004f18000 	mov	x1, x2
004f18004 	mov	x2, x3
004f18008 	mov	x3, xzr
004f1800c 	bl	#-3961364 ; -> 0x4b50df8 SilentBigInt::set_Value
004f18010 	mov	x0, x19
004f18014 	ldp	x20, x19, [sp, #48]
004f18018 	ldp	x22, x21, [sp, #32]
004f1801c 	ldp	x24, x23, [sp, #16]
004f18020 	ldr	x30, [sp], #64
004f18024 	b	#-5016 ; -> 0x4f16c8c StatManager::Fill_Update
004f18028 	bl	#-9990940 ; -> 0x4590d0c 
