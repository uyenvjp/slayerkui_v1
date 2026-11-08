004d40850 	sub	sp, sp, #80
004d40854 	stp	x30, x21, [sp, #48]
004d40858 	stp	x20, x19, [sp, #64]
004d4085c 	adrp	x21, #99172352 ; -> 0xabd4000 
004d40860 	mov	x20, x0
004d40864 	mov	x19, x8
004d40868 	ldrb	w9, [x21, #2770]
004d4086c 	tbnz	w9, #0, #24 ; -> 0x4d40884 
004d40870 	adrp	x0, #90894336 ; -> 0xa3ef000 
004d40874 	ldr	x0, [x0, #624]
004d40878 	bl	#-8060440 ; -> 0x4590a60 
004d4087c 	mov	w8, #1
004d40880 	strb	w8, [x21, #2770]
004d40884 	mov	w0, #1877
004d40888 	mov	x1, xzr
004d4088c 	bl	#-1020648 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d40890 	tbz	w0, #0, #40 ; -> 0x4d408b8 
004d40894 	mov	w0, #1877
004d40898 	mov	x1, xzr
004d4089c 	bl	#-1020484 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d408a0 	cbz	x0, #108 ; -> 0x4d4090c 
004d408a4 	mov	x8, sp
004d408a8 	mov	x1, x20
004d408ac 	mov	x2, xzr
004d408b0 	bl	#-1788216 ; -> 0x4b8bf78 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_261
004d408b4 	b	#56 ; -> 0x4d408ec 
004d408b8 	adrp	x8, #90894336 ; -> 0xa3ef000 
004d408bc 	ldr	x8, [x8, #624]
004d408c0 	ldr	x0, [x8]
004d408c4 	ldr	w8, [x0, #228]
004d408c8 	cbnz	w8, #8 ; -> 0x4d408d0 
004d408cc 	bl	#-8060140 ; -> 0x4590be0 
004d408d0 	mov	w0, #6
004d408d4 	mov	x1, xzr
004d408d8 	bl	#2994584 ; -> 0x501ba70 CurrencyData::Get
004d408dc 	cbz	x0, #48 ; -> 0x4d4090c 
004d408e0 	mov	x8, sp
004d408e4 	mov	x1, xzr
004d408e8 	bl	#2992256 ; -> 0x501b168 CurrencyData::get_Amount
004d408ec 	ldp	q0, q1, [sp]
004d408f0 	ldr	q2, [sp, #32]
004d408f4 	ldp	x30, x21, [sp, #48]
004d408f8 	str	q2, [x19, #32]
004d408fc 	stp	q0, q1, [x19]
004d40900 	ldp	x20, x19, [sp, #64]
004d40904 	add	sp, sp, #80
004d40908 	ret
004d4090c 	bl	#-8059904 ; -> 0x4590d0c 
