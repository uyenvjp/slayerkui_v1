004e513b4 	str	x30, [sp, #-48]!
004e513b8 	stp	x22, x21, [sp, #16]
004e513bc 	stp	x20, x19, [sp, #32]
004e513c0 	adrp	x20, #98058240 ; -> 0xabd5000 
004e513c4 	mov	x19, x0
004e513c8 	ldrb	w8, [x20, #334]
004e513cc 	tbnz	w8, #0, #24 ; -> 0x4e513e4 
004e513d0 	adrp	x0, #89751552 ; -> 0xa3e9000 
004e513d4 	ldr	x0, [x0, #3552]
004e513d8 	bl	#-9177464 ; -> 0x4590a60 
004e513dc 	mov	w8, #1
004e513e0 	strb	w8, [x20, #334]
004e513e4 	mov	w0, #30934
004e513e8 	mov	x1, xzr
004e513ec 	bl	#-2137672 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e513f0 	tbz	w0, #0, #36 ; -> 0x4e51414 
004e513f4 	mov	w0, #30934
004e513f8 	mov	x1, xzr
004e513fc 	bl	#-2137508 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e51400 	cbz	x0, #212 ; -> 0x4e514d4 
004e51404 	mov	x1, x19
004e51408 	mov	x2, xzr
004e5140c 	bl	#-2932444 ; -> 0x4b85530 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_138
004e51410 	b	#180 ; -> 0x4e514c4 
004e51414 	adrp	x22, #89751552 ; -> 0xa3e9000 
004e51418 	add	x0, x19, #1240
004e5141c 	mov	x1, xzr
004e51420 	ldr	x22, [x22, #3552]
004e51424 	bl	#-3148240 ; -> 0x4b50a54 SilentBigInt::get_Value
004e51428 	mov	x20, x0
004e5142c 	mov	x21, x1
004e51430 	mov	w0, #90
004e51434 	mov	w1, #111
004e51438 	mov	x2, xzr
004e5143c 	bl	#79339972 ; -> 0x99fb600 UnityEngine.Random::Range
004e51440 	ldr	x8, [x22]
004e51444 	mov	w22, w0
004e51448 	ldr	w9, [x8, #228]
004e5144c 	cbnz	w9, #12 ; -> 0x4e51458 
004e51450 	mov	x0, x8
004e51454 	bl	#-9177204 ; -> 0x4590be0 
004e51458 	mov	w0, w22
004e5145c 	mov	x1, xzr
004e51460 	bl	#70433604 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004e51464 	mov	x2, x0
004e51468 	mov	x3, x1
004e5146c 	mov	x0, x20
004e51470 	mov	x1, x21
004e51474 	mov	x4, xzr
004e51478 	bl	#70423500 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
004e5147c 	mov	x20, x0
004e51480 	mov	x21, x1
004e51484 	mov	w0, #100
004e51488 	mov	x1, xzr
004e5148c 	bl	#70433560 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004e51490 	mov	x2, x0
004e51494 	mov	x3, x1
004e51498 	mov	x0, x20
004e5149c 	mov	x1, x21
004e514a0 	mov	x4, xzr
004e514a4 	bl	#70423956 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
004e514a8 	str	x0, [x19, #1320]
004e514ac 	add	x0, x19, #1328
004e514b0 	str	x1, [x19, #1328]
004e514b4 	mov	x1, xzr
004e514b8 	bl	#-9177780 ; -> 0x4590a04 
004e514bc 	ldr	x0, [x19, #1320]
004e514c0 	ldr	x1, [x19, #1328]
004e514c4 	ldp	x20, x19, [sp, #32]
004e514c8 	ldp	x22, x21, [sp, #16]
004e514cc 	ldr	x30, [sp], #48
004e514d0 	ret
004e514d4 	bl	#-9177032 ; -> 0x4590d0c 
