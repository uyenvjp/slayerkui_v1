004d58f70 	sub	sp, sp, #96
004d58f74 	stp	x30, x25, [sp, #32]
004d58f78 	stp	x24, x23, [sp, #48]
004d58f7c 	stp	x22, x21, [sp, #64]
004d58f80 	stp	x20, x19, [sp, #80]
004d58f84 	adrp	x21, #99074048 ; -> 0xabd4000 
004d58f88 	mov	w19, w1
004d58f8c 	mov	x20, x0
004d58f90 	ldrb	w8, [x21, #2928]
004d58f94 	tbnz	w8, #0, #24 ; -> 0x4d58fac 
004d58f98 	adrp	x0, #91004928 ; -> 0xa422000 
004d58f9c 	ldr	x0, [x0, #3648]
004d58fa0 	bl	#-8160576 ; -> 0x4590a60 
004d58fa4 	mov	w8, #1
004d58fa8 	strb	w8, [x21, #2928]
004d58fac 	mov	w0, #6921
004d58fb0 	mov	x1, xzr
004d58fb4 	bl	#-1120784 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d58fb8 	tbz	w0, #0, #56 ; -> 0x4d58ff0 
004d58fbc 	mov	w0, #6921
004d58fc0 	mov	x1, xzr
004d58fc4 	bl	#-1120620 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d58fc8 	cbz	x0, #160 ; -> 0x4d59068 
004d58fcc 	mov	x1, x20
004d58fd0 	mov	w2, w19
004d58fd4 	mov	x3, xzr
004d58fd8 	ldp	x20, x19, [sp, #80]
004d58fdc 	ldp	x22, x21, [sp, #64]
004d58fe0 	ldp	x24, x23, [sp, #48]
004d58fe4 	ldp	x30, x25, [sp, #32]
004d58fe8 	add	sp, sp, #96
004d58fec 	b	#-1735316 ; -> 0x4bb1558 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1005
004d58ff0 	ldr	x24, [x20, #16376]
004d58ff4 	cbz	x24, #116 ; -> 0x4d59068 
004d58ff8 	adrp	x22, #91004928 ; -> 0xa422000 
004d58ffc 	mov	x21, xzr
004d59000 	mov	x23, #-1
004d59004 	ldr	x22, [x22, #3648]
004d59008 	ldrsw	x25, [x24, #24]
004d5900c 	cmp	x21, x25
004d59010 	b.ge	#92 ; -> 0x4d5906c 
004d59014 	ldr	x0, [x22]
004d59018 	add	x1, sp, #28
004d5901c 	str	w19, [sp, #28]
004d59020 	bl	#-8160312 ; -> 0x4590be8 
004d59024 	ldr	w8, [x24, #24]
004d59028 	cmp	x21, x8
004d5902c 	b.hs	#96 ; -> 0x4d5908c 
004d59030 	ldr	x8, [x22]
004d59034 	add	x9, x24, x21, lsl #2
004d59038 	mov	x1, x0
004d5903c 	mov	x0, sp
004d59040 	mov	x2, xzr
004d59044 	str	x23, [sp, #8]
004d59048 	str	x8, [sp]
004d5904c 	ldr	w8, [x9, #32]
004d59050 	str	w8, [sp, #16]
004d59054 	bl	#68512172 ; -> 0x8eafa00 System.Enum::Equals
004d59058 	tbnz	w0, #0, #20 ; -> 0x4d5906c 
004d5905c 	ldr	x24, [x20, #16376]
004d59060 	add	x21, x21, #1
004d59064 	cbnz	x24, #-92 ; -> 0x4d59008 
004d59068 	bl	#-8160092 ; -> 0x4590d0c 
004d5906c 	cmp	x21, x25
004d59070 	ldp	x20, x19, [sp, #80]
004d59074 	ldp	x22, x21, [sp, #64]
004d59078 	cset	w0, lt
004d5907c 	ldp	x24, x23, [sp, #48]
004d59080 	ldp	x30, x25, [sp, #32]
004d59084 	add	sp, sp, #96
004d59088 	ret
004d5908c 	bl	#-8160120 ; -> 0x4590d14 
