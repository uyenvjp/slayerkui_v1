004d50db8 	sub	sp, sp, #176
004d50dbc 	stp	x30, x23, [sp, #128]
004d50dc0 	stp	x22, x21, [sp, #144]
004d50dc4 	stp	x20, x19, [sp, #160]
004d50dc8 	adrp	x21, #99106816 ; -> 0xabd4000 
004d50dcc 	mov	x20, x0
004d50dd0 	mov	x19, x8
004d50dd4 	ldrb	w9, [x21, #2880]
004d50dd8 	tbnz	w9, #0, #84 ; -> 0x4d50e2c 
004d50ddc 	adrp	x0, #90804224 ; -> 0xa3e9000 
004d50de0 	ldr	x0, [x0, #1384]
004d50de4 	bl	#-8127364 ; -> 0x4590a60 
004d50de8 	adrp	x0, #91037696 ; -> 0xa422000 
004d50dec 	ldr	x0, [x0, #2408]
004d50df0 	bl	#-8127376 ; -> 0x4590a60 
004d50df4 	adrp	x0, #91037696 ; -> 0xa422000 
004d50df8 	ldr	x0, [x0, #2416]
004d50dfc 	bl	#-8127388 ; -> 0x4590a60 
004d50e00 	adrp	x0, #91037696 ; -> 0xa422000 
004d50e04 	ldr	x0, [x0, #2424]
004d50e08 	bl	#-8127400 ; -> 0x4590a60 
004d50e0c 	adrp	x0, #91037696 ; -> 0xa422000 
004d50e10 	ldr	x0, [x0, #2432]
004d50e14 	bl	#-8127412 ; -> 0x4590a60 
004d50e18 	adrp	x0, #91037696 ; -> 0xa422000 
004d50e1c 	ldr	x0, [x0, #2440]
004d50e20 	bl	#-8127424 ; -> 0x4590a60 
004d50e24 	mov	w8, #1
004d50e28 	strb	w8, [x21, #2880]
004d50e2c 	movi	v0.2d, #0000000000000000
004d50e30 	mov	w0, #27327
004d50e34 	mov	x1, xzr
004d50e38 	str	xzr, [sp, #112]
004d50e3c 	stp	q0, q0, [sp, #80]
004d50e40 	bl	#-1087644 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d50e44 	tbz	w0, #0, #44 ; -> 0x4d50e70 
004d50e48 	mov	w0, #27327
004d50e4c 	mov	x1, xzr
004d50e50 	bl	#-1087480 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d50e54 	cbz	x0, #236 ; -> 0x4d50f40 
004d50e58 	add	x8, sp, #8
004d50e5c 	mov	x1, x20
004d50e60 	mov	x2, xzr
004d50e64 	bl	#-1883812 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d50e68 	add	x1, sp, #8
004d50e6c 	b	#180 ; -> 0x4d50f20 
004d50e70 	movi	d0, #0000000000000000
004d50e74 	adrp	x21, #90804224 ; -> 0xa3e9000 
004d50e78 	mov	w22, #13304
004d50e7c 	ldr	x21, [x21, #1384]
004d50e80 	add	x0, x20, x22
004d50e84 	mov	x1, xzr
004d50e88 	bl	#-2093776 ; -> 0x4b51bb8 SilentFloat::set_Value
004d50e8c 	ldr	x0, [x21]
004d50e90 	ldr	w8, [x0, #228]
004d50e94 	cbnz	w8, #12 ; -> 0x4d50ea0 
004d50e98 	bl	#-8127160 ; -> 0x4590be0 
004d50e9c 	ldr	x0, [x21]
004d50ea0 	ldr	x8, [x0, #184]
004d50ea4 	ldr	x0, [x8, #168]
004d50ea8 	cbz	x0, #152 ; -> 0x4d50f40 
004d50eac 	adrp	x8, #91037696 ; -> 0xa422000 
004d50eb0 	add	x23, sp, #80
004d50eb4 	ldr	x8, [x8, #2408]
004d50eb8 	ldr	x1, [x8]
004d50ebc 	add	x8, sp, #80
004d50ec0 	bl	#55236316 ; -> 0x81fe59c 
004d50ec4 	adrp	x21, #91037696 ; -> 0xa422000 
004d50ec8 	ldr	x21, [x21, #2424]
004d50ecc 	stp	xzr, x23, [sp, #8]
004d50ed0 	ldr	x1, [x21]
004d50ed4 	add	x0, sp, #80
004d50ed8 	bl	#24222252 ; -> 0x646a904 
004d50edc 	tbz	w0, #0, #44 ; -> 0x4d50f08 
004d50ee0 	ldr	x23, [sp, #104]
004d50ee4 	add	x0, x20, x22
004d50ee8 	mov	x1, xzr
004d50eec 	bl	#-2095096 ; -> 0x4b516f4 SilentFloat::get_Value
004d50ef0 	fmov	s1, w23
004d50ef4 	fadd	s0, s0, s1
004d50ef8 	add	x0, x20, x22
004d50efc 	mov	x1, xzr
004d50f00 	bl	#-2093896 ; -> 0x4b51bb8 SilentFloat::set_Value
004d50f04 	b	#-52 ; -> 0x4d50ed0 
004d50f08 	adrp	x8, #91037696 ; -> 0xa422000 
004d50f0c 	add	x0, sp, #80
004d50f10 	ldr	x8, [x8, #2416]
004d50f14 	ldr	x1, [x8]
004d50f18 	bl	#24222488 ; -> 0x646aa30 
004d50f1c 	add	x1, x20, x22
004d50f20 	mov	x0, x19
004d50f24 	mov	w2, #72
004d50f28 	bl	#83995080 ; -> 0x9d6b8f0 
004d50f2c 	ldp	x20, x19, [sp, #160]
004d50f30 	ldp	x22, x21, [sp, #144]
004d50f34 	ldp	x30, x23, [sp, #128]
004d50f38 	add	sp, sp, #176
004d50f3c 	ret
004d50f40 	bl	#-8127028 ; -> 0x4590d0c 
004d50f44 	b	#8 ; -> 0x4d50f4c 
004d50f48 	b	#4 ; -> 0x4d50f4c 
004d50f4c 	mov	x21, x0
004d50f50 	cmp	w1, #1
004d50f54 	b.ne	#60 ; -> 0x4d50f90 
004d50f58 	mov	x0, x21
004d50f5c 	bl	#83994916 ; -> 0x9d6b880 
004d50f60 	ldr	x21, [x0]
004d50f64 	str	x21, [sp, #8]
004d50f68 	bl	#83994920 ; -> 0x9d6b890 
004d50f6c 	adrp	x8, #91037696 ; -> 0xa422000 
004d50f70 	ldr	x8, [x8, #2416]
004d50f74 	ldr	x0, [sp, #16]
004d50f78 	ldr	x1, [x8]
004d50f7c 	bl	#24222388 ; -> 0x646aa30 
004d50f80 	cbz	x21, #-100 ; -> 0x4d50f1c 
004d50f84 	mov	x0, x21
004d50f88 	bl	#-8127108 ; -> 0x4590d04 
004d50f8c 	mov	x21, x0
004d50f90 	add	x0, sp, #8
004d50f94 	bl	#-12762268 ; -> 0x41252f8 
004d50f98 	mov	x0, x21
004d50f9c 	bl	#-6942592 ; -> 0x46b201c 
004d50fa0 	bl	#-12797760 ; -> 0x411c860 
