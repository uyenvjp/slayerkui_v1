0050b6568 	str	x30, [sp, #-48]!
0050b656c 	stp	x22, x21, [sp, #16]
0050b6570 	stp	x20, x19, [sp, #32]
0050b6574 	adrp	x20, #95551488 ; -> 0xabd6000 
0050b6578 	mov	x19, x0
0050b657c 	ldrb	w8, [x20, #690]
0050b6580 	tbnz	w8, #0, #24 ; -> 0x50b6598 
0050b6584 	adrp	x0, #87441408 ; -> 0xa41a000 
0050b6588 	ldr	x0, [x0, #3856]
0050b658c 	bl	#-11688748 ; -> 0x4590a60 
0050b6590 	mov	w8, #1
0050b6594 	strb	w8, [x20, #690]
0050b6598 	mov	w0, #38485
0050b659c 	mov	x1, xzr
0050b65a0 	bl	#-4648956 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b65a4 	tbz	w0, #0, #44 ; -> 0x50b65d0 
0050b65a8 	mov	w0, #38485
0050b65ac 	mov	x1, xzr
0050b65b0 	bl	#-4648792 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b65b4 	cbz	x0, #132 ; -> 0x50b6638 
0050b65b8 	mov	x1, x19
0050b65bc 	ldp	x20, x19, [sp, #32]
0050b65c0 	ldp	x22, x21, [sp, #16]
0050b65c4 	mov	x2, xzr
0050b65c8 	ldr	x30, [sp], #48
0050b65cc 	b	#-5472428 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050b65d0 	adrp	x20, #87441408 ; -> 0xa41a000 
0050b65d4 	ldr	x20, [x20, #3856]
0050b65d8 	ldr	x0, [x20]
0050b65dc 	ldr	w8, [x0, #228]
0050b65e0 	cbnz	w8, #12 ; -> 0x50b65ec 
0050b65e4 	bl	#-11688452 ; -> 0x4590be0 
0050b65e8 	ldr	x0, [x20]
0050b65ec 	ldr	x8, [x0, #184]
0050b65f0 	ldr	x9, [x19]
0050b65f4 	mov	x0, x19
0050b65f8 	ldp	x21, x22, [x19, #368]
0050b65fc 	ldr	x20, [x8]
0050b6600 	ldp	x8, x1, [x9, #504]
0050b6604 	blr	x8
0050b6608 	cbz	x20, #48 ; -> 0x50b6638 
0050b660c 	mov	x0, x20
0050b6610 	mov	x1, x21
0050b6614 	mov	x2, x22
0050b6618 	ldp	x20, x19, [sp, #32]
0050b661c 	mov	w3, wzr
0050b6620 	ldp	x22, x21, [sp, #16]
0050b6624 	mov	x4, xzr
0050b6628 	mov	w5, wzr
0050b662c 	mov	x6, xzr
0050b6630 	ldr	x30, [sp], #48
0050b6634 	b	#-1834352 ; -> 0x4ef68c4 PlayerBase::GetDmg
0050b6638 	bl	#-11688236 ; -> 0x4590d0c 
