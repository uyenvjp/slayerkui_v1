004d4da60 	sub	sp, sp, #128
004d4da64 	str	x30, [sp, #80]
004d4da68 	stp	x22, x21, [sp, #96]
004d4da6c 	stp	x20, x19, [sp, #112]
004d4da70 	adrp	x22, #99119104 ; -> 0xabd4000
004d4da74 	mov	x19, x2
004d4da78 	mov	x20, x1
004d4da7c 	ldrb	w8, [x22, #2863]
004d4da80 	mov	x21, x0
004d4da84 	tbnz	w8, #0, #24 ; -> 0x4d4da9c
004d4da88 	adrp	x0, #90816512 ; -> 0xa3e9000
004d4da8c 	ldr	x0, [x0, #3552]
004d4da90 	bl	#-8114224 ; -> 0x4590a60
004d4da94 	mov	w8, #1
004d4da98 	strb	w8, [x22, #2863]
004d4da9c 	mov	w0, #27312
004d4daa0 	mov	x1, xzr
004d4daa4 	bl	#-1074432 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
004d4daa8 	tbz	w0, #0, #56 ; -> 0x4d4dae0
004d4daac 	mov	w0, #27312
004d4dab0 	mov	x1, xzr
004d4dab4 	bl	#-1074268 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
004d4dab8 	cbz	x0, #232 ; -> 0x4d4dba0
004d4dabc 	mov	x1, x21
004d4dac0 	mov	x2, x20
004d4dac4 	mov	x3, x19
004d4dac8 	ldp	x20, x19, [sp, #112]
004d4dacc 	ldr	x30, [sp, #80]
004d4dad0 	ldp	x22, x21, [sp, #96]
004d4dad4 	mov	x4, xzr
004d4dad8 	add	sp, sp, #128
004d4dadc 	b	#-1758456 ; -> 0x4ba05e4 [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_648]
004d4dae0 	adrp	x22, #90816512 ; -> 0xa3e9000
004d4dae4 	add	x8, sp, #8
004d4dae8 	mov	x0, x21
004d4daec 	ldr	x22, [x22, #3552]
004d4daf0 	bl	#-1164 ; -> 0x4d4d664 [DatabaseManager::get_ExpAdd]
004d4daf4 	add	x0, sp, #8
004d4daf8 	mov	x1, xzr
004d4dafc 	bl	#-2080212 ; -> 0x4b51d28 [SilentFloat::op_Implicit]
004d4db00 	fcvt	d0, s0
004d4db04 	adrp	x8, #-48381952 ; -> 0x1f29000
004d4db08 	ldr	x0, [x22]
004d4db0c 	ldr	d1, [x8]
004d4db10 	mov	x8, #9218868437227405312
004d4db14 	mov	x10, #-9223372036854775808
004d4db18 	fmul	d0, d0, d1
004d4db1c 	fmov	d1, x8
004d4db20 	ldr	w8, [x0, #228]
004d4db24 	fcvtzs	x9, d0
004d4db28 	fcmp	d0, d1
004d4db2c 	csel	x21, x10, x9, eq
004d4db30 	cbnz	w8, #8 ; -> 0x4d4db38
004d4db34 	bl	#-8114004 ; -> 0x4590be0
004d4db38 	mov	x0, x21
004d4db3c 	mov	x1, xzr
004d4db40 	bl	#71495132 ; -> 0x917c91c [System.Numerics.BigInteger::op_Implicit]
004d4db44 	mov	x2, x0
004d4db48 	mov	x3, x1
004d4db4c 	mov	x0, x20
004d4db50 	mov	x1, x19
004d4db54 	mov	x4, xzr
004d4db58 	bl	#71486700 ; -> 0x917a844 [System.Numerics.BigInteger::op_Multiply]
004d4db5c 	mov	x19, x0
004d4db60 	mov	w0, #34464
004d4db64 	mov	x20, x1
004d4db68 	movk	w0, #1, lsl #16
004d4db6c 	mov	x1, xzr
004d4db70 	bl	#71496756 ; -> 0x917cfa4 [System.Numerics.BigInteger::op_Implicit]
004d4db74 	mov	x2, x0
004d4db78 	mov	x3, x1
004d4db7c 	mov	x0, x19
004d4db80 	mov	x1, x20
004d4db84 	mov	x4, xzr
004d4db88 	bl	#71487152 ; -> 0x917aa38 [System.Numerics.BigInteger::op_Division]
004d4db8c 	ldp	x20, x19, [sp, #112]
004d4db90 	ldr	x30, [sp, #80]
004d4db94 	ldp	x22, x21, [sp, #96]
004d4db98 	add	sp, sp, #128
004d4db9c 	ret
004d4dba0 	bl	#-8113812 ; -> 0x4590d0c