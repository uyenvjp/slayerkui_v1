004ef5d74 	str	x30, [sp, #-48]!
004ef5d78 	stp	x22, x21, [sp, #16]
004ef5d7c 	stp	x20, x19, [sp, #32]
004ef5d80 	mov	x19, x0
004ef5d84 	mov	w0, #6895
004ef5d88 	mov	x1, xzr
004ef5d8c 	bl	#-2811880 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef5d90 	tbz	w0, #0, #44 ; -> 0x4ef5dbc 
004ef5d94 	mov	w0, #6895
004ef5d98 	mov	x1, xzr
004ef5d9c 	bl	#-2811716 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef5da0 	cbz	x0, #248 ; -> 0x4ef5e98 
004ef5da4 	mov	x1, x19
004ef5da8 	ldp	x20, x19, [sp, #32]
004ef5dac 	ldp	x22, x21, [sp, #16]
004ef5db0 	mov	x2, xzr
004ef5db4 	ldr	x30, [sp], #48
004ef5db8 	b	#-3635352 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ef5dbc 	mov	w0, wzr
004ef5dc0 	mov	w1, #3
004ef5dc4 	mov	x2, xzr
004ef5dc8 	bl	#78665784 ; -> 0x99fb600 UnityEngine.Random::Range
004ef5dcc 	ldr	w8, [x19, #2104]
004ef5dd0 	mov	w20, w0
004ef5dd4 	cmp	w8, w0
004ef5dd8 	b.ne	#56 ; -> 0x4ef5e10 
004ef5ddc 	cmp	w20, #1
004ef5de0 	b.eq	#20 ; -> 0x4ef5df4 
004ef5de4 	cbnz	w20, #24 ; -> 0x4ef5dfc 
004ef5de8 	mov	w0, #1
004ef5dec 	mov	w1, #3
004ef5df0 	b	#20 ; -> 0x4ef5e04 
004ef5df4 	mov	w20, wzr
004ef5df8 	b	#24 ; -> 0x4ef5e10 
004ef5dfc 	mov	w0, wzr
004ef5e00 	mov	w1, #2
004ef5e04 	mov	x2, xzr
004ef5e08 	bl	#78665720 ; -> 0x99fb600 UnityEngine.Random::Range
004ef5e0c 	mov	w20, w0
004ef5e10 	ldr	x8, [x19, #2096]
004ef5e14 	cbz	x8, #132 ; -> 0x4ef5e98 
004ef5e18 	ldr	w9, [x8, #24]
004ef5e1c 	cmp	w20, w9
004ef5e20 	b.hs	#124 ; -> 0x4ef5e9c 
004ef5e24 	add	x8, x8, w20, sxtw #2
004ef5e28 	ldr	x9, [x19]
004ef5e2c 	mov	x0, x19
004ef5e30 	ldr	w1, [x8, #32]
004ef5e34 	ldr	x8, [x9, #712]
004ef5e38 	ldr	x2, [x9, #720]
004ef5e3c 	blr	x8
004ef5e40 	adrp	x22, #97357824 ; -> 0xabce000 
004ef5e44 	ldr	x21, [x19, #328]
004ef5e48 	str	w20, [x19, #2104]
004ef5e4c 	ldrb	w8, [x22, #2296]
004ef5e50 	cbnz	w8, #24 ; -> 0x4ef5e68 
004ef5e54 	adrp	x0, #89075712 ; -> 0xa3e8000 
004ef5e58 	ldr	x0, [x0, #688]
004ef5e5c 	bl	#-9851900 ; -> 0x4590a60 
004ef5e60 	mov	w8, #1
004ef5e64 	strb	w8, [x22, #2296]
004ef5e68 	cbz	x21, #48 ; -> 0x4ef5e98 
004ef5e6c 	adrp	x8, #89075712 ; -> 0xa3e8000 
004ef5e70 	mov	x0, x21
004ef5e74 	mov	x1, xzr
004ef5e78 	ldr	x8, [x8, #688]
004ef5e7c 	ldp	x20, x19, [sp, #32]
004ef5e80 	ldp	x22, x21, [sp, #16]
004ef5e84 	ldr	x8, [x8]
004ef5e88 	ldr	x8, [x8, #184]
004ef5e8c 	ldp	s0, s1, [x8]
004ef5e90 	ldr	x30, [sp], #48
004ef5e94 	b	#79269660 ; -> 0x9a8edb0 UnityEngine.Rigidbody2D::set_linearVelocity
004ef5e98 	bl	#-9851276 ; -> 0x4590d0c 
004ef5e9c 	bl	#-9851272 ; -> 0x4590d14 
