004f1802c 	str	x30, [sp, #-32]!
004f18030 	stp	x20, x19, [sp, #16]
004f18034 	adrp	x19, #97243136 ; -> 0xabd5000 
004f18038 	ldrb	w8, [x19, #1728]
004f1803c 	tbnz	w8, #0, #36 ; -> 0x4f18060 
004f18040 	adrp	x0, #88956928 ; -> 0xa3ee000 
004f18044 	ldr	x0, [x0, #2104]
004f18048 	bl	#-9991656 ; -> 0x4590a60 
004f1804c 	adrp	x0, #89149440 ; -> 0xa41d000 
004f18050 	ldr	x0, [x0, #1912]
004f18054 	bl	#-9991668 ; -> 0x4590a60 
004f18058 	mov	w8, #1
004f1805c 	strb	w8, [x19, #1728]
004f18060 	mov	w0, #7605
004f18064 	mov	x1, xzr
004f18068 	bl	#-2951876 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f1806c 	tbz	w0, #0, #36 ; -> 0x4f18090 
004f18070 	mov	w0, #7605
004f18074 	mov	x1, xzr
004f18078 	bl	#-2951712 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f1807c 	cbz	x0, #144 ; -> 0x4f1810c 
004f18080 	ldp	x20, x19, [sp, #16]
004f18084 	mov	x1, xzr
004f18088 	ldr	x30, [sp], #32
004f1808c 	b	#-3768588 ; -> 0x4b7ff80 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_36
004f18090 	adrp	x19, #88956928 ; -> 0xa3ee000 
004f18094 	ldr	x19, [x19, #2104]
004f18098 	ldr	x0, [x19]
004f1809c 	ldr	w8, [x0, #228]
004f180a0 	cbnz	w8, #8 ; -> 0x4f180a8 
004f180a4 	bl	#-9991364 ; -> 0x4590be0 
004f180a8 	adrp	x20, #97218560 ; -> 0xabcf000 
004f180ac 	ldrb	w8, [x20, #360]
004f180b0 	cbnz	w8, #24 ; -> 0x4f180c8 
004f180b4 	adrp	x0, #88956928 ; -> 0xa3ee000 
004f180b8 	ldr	x0, [x0, #2104]
004f180bc 	bl	#-9991772 ; -> 0x4590a60 
004f180c0 	mov	w8, #1
004f180c4 	strb	w8, [x20, #360]
004f180c8 	ldr	x0, [x19]
004f180cc 	ldr	w8, [x0, #228]
004f180d0 	cbnz	w8, #12 ; -> 0x4f180dc 
004f180d4 	bl	#-9991412 ; -> 0x4590be0 
004f180d8 	ldr	x0, [x19]
004f180dc 	ldr	x8, [x0, #184]
004f180e0 	ldr	x8, [x8]
004f180e4 	cbz	x8, #40 ; -> 0x4f1810c 
004f180e8 	ldr	x0, [x8, #32]
004f180ec 	cbz	x0, #32 ; -> 0x4f1810c 
004f180f0 	adrp	x8, #89149440 ; -> 0xa41d000 
004f180f4 	mov	w1, #5
004f180f8 	ldr	x8, [x8, #1912]
004f180fc 	ldp	x20, x19, [sp, #16]
004f18100 	ldr	x2, [x8]
004f18104 	ldr	x30, [sp], #32
004f18108 	b	#51926704 ; -> 0x809d7b8 
004f1810c 	bl	#-9991168 ; -> 0x4590d0c 
