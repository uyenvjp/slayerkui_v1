004ef54e0 	str	x30, [sp, #-32]!
004ef54e4 	stp	x20, x19, [sp, #16]
004ef54e8 	adrp	x20, #97386496 ; -> 0xabd5000 
004ef54ec 	mov	x19, x0
004ef54f0 	ldrb	w8, [x20, #1476]
004ef54f4 	tbnz	w8, #0, #24 ; -> 0x4ef550c 
004ef54f8 	adrp	x0, #89280512 ; -> 0xa41a000 
004ef54fc 	ldr	x0, [x0, #3856]
004ef5500 	bl	#-9849504 ; -> 0x4590a60 
004ef5504 	mov	w8, #1
004ef5508 	strb	w8, [x20, #1476]
004ef550c 	mov	w0, #32814
004ef5510 	mov	x1, xzr
004ef5514 	bl	#-2809712 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef5518 	tbz	w0, #0, #40 ; -> 0x4ef5540 
004ef551c 	mov	w0, #32814
004ef5520 	mov	x1, xzr
004ef5524 	bl	#-2809548 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef5528 	cbz	x0, #80 ; -> 0x4ef5578 
004ef552c 	mov	x1, x19
004ef5530 	ldp	x20, x19, [sp, #16]
004ef5534 	mov	x2, xzr
004ef5538 	ldr	x30, [sp], #32
004ef553c 	b	#-3633180 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ef5540 	adrp	x19, #89280512 ; -> 0xa41a000 
004ef5544 	ldr	x19, [x19, #3856]
004ef5548 	ldr	x0, [x19]
004ef554c 	ldr	w8, [x0, #228]
004ef5550 	cbnz	w8, #12 ; -> 0x4ef555c 
004ef5554 	bl	#-9849204 ; -> 0x4590be0 
004ef5558 	ldr	x0, [x19]
004ef555c 	ldr	x8, [x0, #184]
004ef5560 	ldp	x20, x19, [sp, #16]
004ef5564 	ldr	w9, [x8, #32]
004ef5568 	add	w9, w9, #1
004ef556c 	str	w9, [x8, #32]
004ef5570 	ldr	x30, [sp], #32
004ef5574 	ret
004ef5578 	bl	#-9848940 ; -> 0x4590d0c 
