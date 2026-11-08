004d4046c 	stp	x30, x21, [sp, #-32]!
004d40470 	stp	x20, x19, [sp, #16]
004d40474 	adrp	x21, #99172352 ; -> 0xabd4000 
004d40478 	mov	x20, x1
004d4047c 	mov	x19, x0
004d40480 	ldrb	w8, [x21, #2765]
004d40484 	tbnz	w8, #0, #24 ; -> 0x4d4049c 
004d40488 	adrp	x0, #90869760 ; -> 0xa3e9000 
004d4048c 	ldr	x0, [x0, #3552]
004d40490 	bl	#-8059440 ; -> 0x4590a60 
004d40494 	mov	w8, #1
004d40498 	strb	w8, [x21, #2765]
004d4049c 	mov	w0, #8310
004d404a0 	mov	x1, xzr
004d404a4 	bl	#-1019648 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d404a8 	tbz	w0, #0, #44 ; -> 0x4d404d4 
004d404ac 	mov	w0, #8310
004d404b0 	mov	x1, xzr
004d404b4 	bl	#-1019484 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d404b8 	cbz	x0, #148 ; -> 0x4d4054c 
004d404bc 	mov	x1, x19
004d404c0 	mov	x2, x20
004d404c4 	mov	x3, xzr
004d404c8 	ldp	x20, x19, [sp, #16]
004d404cc 	ldp	x30, x21, [sp], #32
004d404d0 	b	#-1842364 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004d404d4 	cbz	x20, #120 ; -> 0x4d4054c 
004d404d8 	adrp	x8, #90869760 ; -> 0xa3e9000 
004d404dc 	ldr	x8, [x8, #3552]
004d404e0 	ldr	x21, [x20, #24]
004d404e4 	ldr	x0, [x8]
004d404e8 	ldr	w8, [x0, #228]
004d404ec 	cbnz	w8, #8 ; -> 0x4d404f4 
004d404f0 	bl	#-8059152 ; -> 0x4590be0 
004d404f4 	mov	x0, x21
004d404f8 	mov	x1, xzr
004d404fc 	bl	#71540572 ; -> 0x917a458 System.Numerics.BigInteger::Parse
004d40500 	mov	x2, x0
004d40504 	mov	x3, x1
004d40508 	add	x0, x19, #264
004d4050c 	mov	x1, x2
004d40510 	mov	x2, x3
004d40514 	mov	x3, xzr
004d40518 	bl	#-2029344 ; -> 0x4b50df8 SilentBigInt::set_Value
004d4051c 	ldr	x0, [x20, #32]
004d40520 	mov	x1, xzr
004d40524 	bl	#71540532 ; -> 0x917a458 System.Numerics.BigInteger::Parse
004d40528 	mov	x2, x0
004d4052c 	add	x0, x19, #304
004d40530 	mov	x3, x1
004d40534 	ldp	x20, x19, [sp, #16]
004d40538 	mov	x1, x2
004d4053c 	mov	x2, x3
004d40540 	mov	x3, xzr
004d40544 	ldp	x30, x21, [sp], #32
004d40548 	b	#-2029392 ; -> 0x4b50df8 SilentBigInt::set_Value
004d4054c 	bl	#-8058944 ; -> 0x4590d0c 
