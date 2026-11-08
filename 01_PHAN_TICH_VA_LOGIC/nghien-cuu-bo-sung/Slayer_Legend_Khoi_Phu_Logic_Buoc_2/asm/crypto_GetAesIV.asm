0053f25bc 	stp	x30, x19, [sp, #-16]!
0053f25c0 	adrp	x19, #92164096 ; -> 0xabd7000
0053f25c4 	ldrb	w8, [x19, #2670]
0053f25c8 	tbnz	w8, #0, #24 ; -> 0x53f25e0
0053f25cc 	adrp	x0, #83841024 ; -> 0xa3e7000
0053f25d0 	ldr	x0, [x0, #2168]
0053f25d4 	bl	#-15080308 ; -> 0x4590a60
0053f25d8 	mov	w8, #1
0053f25dc 	strb	w8, [x19, #2670]
0053f25e0 	mov	w0, #45299
0053f25e4 	mov	x1, xzr
0053f25e8 	bl	#-8040516 ; -> 0x4c475a4 [WrappersManagerImpl::IsPatched]
0053f25ec 	tbz	w0, #0, #32 ; -> 0x53f260c
0053f25f0 	mov	w0, #45299
0053f25f4 	mov	x1, xzr
0053f25f8 	bl	#-8040352 ; -> 0x4c47658 [WrappersManagerImpl::GetPatch]
0053f25fc 	cbz	x0, #68 ; -> 0x53f2640
0053f2600 	mov	x1, xzr
0053f2604 	ldp	x30, x19, [sp], #16
0053f2608 	b	#-8239548 ; -> 0x4c16c4c [ILFixDynamicMethodWrapper::__Gen_Wrap_2981]
0053f260c 	adrp	x19, #83841024 ; -> 0xa3e7000
0053f2610 	ldr	x19, [x19, #2168]
0053f2614 	bl	#-540 ; -> 0x53f23f8 [JsonCryptoCompressor::GetIVBase64]
0053f2618 	ldr	x8, [x19]
0053f261c 	mov	x19, x0
0053f2620 	ldr	w9, [x8, #228]
0053f2624 	cbnz	w9, #12 ; -> 0x53f2630
0053f2628 	mov	x0, x8
0053f262c 	bl	#-15080012 ; -> 0x4590be0
0053f2630 	mov	x0, x19
0053f2634 	mov	x1, xzr
0053f2638 	ldp	x30, x19, [sp], #16
0053f263c 	b	#60740644 ; -> 0x8ddfa60
0053f2640 	bl	#-15079732 ; -> 0x4590d0c
