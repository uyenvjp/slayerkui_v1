0050bbe68 	str	x30, [sp, #-32]!
0050bbe6c 	stp	x20, x19, [sp, #16]
0050bbe70 	adrp	x20, #95531008 ; -> 0xabd6000 
0050bbe74 	mov	x19, x0
0050bbe78 	ldrb	w8, [x20, #729]
0050bbe7c 	tbnz	w8, #0, #24 ; -> 0x50bbe94 
0050bbe80 	adrp	x0, #87420928 ; -> 0xa41a000 
0050bbe84 	ldr	x0, [x0, #3856]
0050bbe88 	bl	#-11711528 ; -> 0x4590a60 
0050bbe8c 	mov	w8, #1
0050bbe90 	strb	w8, [x20, #729]
0050bbe94 	mov	w0, #34992
0050bbe98 	mov	x1, xzr
0050bbe9c 	bl	#-4671736 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bbea0 	tbz	w0, #0, #40 ; -> 0x50bbec8 
0050bbea4 	mov	w0, #34992
0050bbea8 	mov	x1, xzr
0050bbeac 	bl	#-4671572 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bbeb0 	cbz	x0, #108 ; -> 0x50bbf1c 
0050bbeb4 	mov	x1, x19
0050bbeb8 	ldp	x20, x19, [sp, #16]
0050bbebc 	mov	x2, xzr
0050bbec0 	ldr	x30, [sp], #32
0050bbec4 	b	#-5495204 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050bbec8 	adrp	x19, #87420928 ; -> 0xa41a000 
0050bbecc 	ldr	x19, [x19, #3856]
0050bbed0 	ldr	x0, [x19]
0050bbed4 	ldr	w8, [x0, #228]
0050bbed8 	cbnz	w8, #12 ; -> 0x50bbee4 
0050bbedc 	bl	#-11711228 ; -> 0x4590be0 
0050bbee0 	ldr	x0, [x19]
0050bbee4 	ldr	x8, [x0, #184]
0050bbee8 	ldr	x8, [x8]
0050bbeec 	cbz	x8, #48 ; -> 0x50bbf1c 
0050bbef0 	ldr	x8, [x8, #2040]
0050bbef4 	cbz	x8, #28 ; -> 0x50bbf10 
0050bbef8 	ldp	x20, x19, [sp, #16]
0050bbefc 	ldr	x0, [x8, #64]
0050bbf00 	ldr	x1, [x8, #40]
0050bbf04 	ldr	x2, [x8, #24]
0050bbf08 	ldr	x30, [sp], #32
0050bbf0c 	br	x2
0050bbf10 	ldp	x20, x19, [sp, #16]
0050bbf14 	ldr	x30, [sp], #32
0050bbf18 	ret
0050bbf1c 	bl	#-11710992 ; -> 0x4590d0c 
