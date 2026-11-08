0053f2534 	stp	x30, x19, [sp, #-16]!
0053f2538 	adrp	x19, #92164096 ; -> 0xabd7000
0053f253c 	ldrb	w8, [x19, #2669]
0053f2540 	tbnz	w8, #0, #24 ; -> 0x53f2558
0053f2544 	adrp	x0, #83841024 ; -> 0xa3e7000
0053f2548 	ldr	x0, [x0, #2168]
0053f254c 	bl	#-15080172 ; -> 0x4590a60
0053f2550 	mov	w8, #1
0053f2554 	strb	w8, [x19, #2669]
0053f2558 	mov	w0, #45298
0053f255c 	mov	x1, xzr
0053f2560 	bl	#-8040380 ; -> 0x4c475a4 [WrappersManagerImpl::IsPatched]
0053f2564 	tbz	w0, #0, #32 ; -> 0x53f2584
0053f2568 	mov	w0, #45298
0053f256c 	mov	x1, xzr
0053f2570 	bl	#-8040216 ; -> 0x4c47658 [WrappersManagerImpl::GetPatch]
0053f2574 	cbz	x0, #68 ; -> 0x53f25b8
0053f2578 	mov	x1, xzr
0053f257c 	ldp	x30, x19, [sp], #16
0053f2580 	b	#-8239412 ; -> 0x4c16c4c [ILFixDynamicMethodWrapper::__Gen_Wrap_2981]
0053f2584 	adrp	x19, #83841024 ; -> 0xa3e7000
0053f2588 	ldr	x19, [x19, #2168]
0053f258c 	bl	#-876 ; -> 0x53f2220 [JsonCryptoCompressor::GetKeyBase64]
0053f2590 	ldr	x8, [x19]
0053f2594 	mov	x19, x0
0053f2598 	ldr	w9, [x8, #228]
0053f259c 	cbnz	w9, #12 ; -> 0x53f25a8
0053f25a0 	mov	x0, x8
0053f25a4 	bl	#-15079876 ; -> 0x4590be0
0053f25a8 	mov	x0, x19
0053f25ac 	mov	x1, xzr
0053f25b0 	ldp	x30, x19, [sp], #16
0053f25b4 	b	#60740780 ; -> 0x8ddfa60
0053f25b8 	bl	#-15079596 ; -> 0x4590d0c
