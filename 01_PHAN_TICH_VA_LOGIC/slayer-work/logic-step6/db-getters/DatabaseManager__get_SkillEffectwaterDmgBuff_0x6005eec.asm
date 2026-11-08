004d50fa4 	sub	sp, sp, #176
004d50fa8 	stp	x30, x23, [sp, #128]
004d50fac 	stp	x22, x21, [sp, #144]
004d50fb0 	stp	x20, x19, [sp, #160]
004d50fb4 	adrp	x21, #99106816 ; -> 0xabd4000 
004d50fb8 	mov	x20, x0
004d50fbc 	mov	x19, x8
004d50fc0 	ldrb	w9, [x21, #2881]
004d50fc4 	tbnz	w9, #0, #84 ; -> 0x4d51018 
004d50fc8 	adrp	x0, #90804224 ; -> 0xa3e9000 
004d50fcc 	ldr	x0, [x0, #1384]
004d50fd0 	bl	#-8127856 ; -> 0x4590a60 
004d50fd4 	adrp	x0, #91037696 ; -> 0xa422000 
004d50fd8 	ldr	x0, [x0, #2408]
004d50fdc 	bl	#-8127868 ; -> 0x4590a60 
004d50fe0 	adrp	x0, #91037696 ; -> 0xa422000 
004d50fe4 	ldr	x0, [x0, #2416]
004d50fe8 	bl	#-8127880 ; -> 0x4590a60 
004d50fec 	adrp	x0, #91037696 ; -> 0xa422000 
004d50ff0 	ldr	x0, [x0, #2424]
004d50ff4 	bl	#-8127892 ; -> 0x4590a60 
004d50ff8 	adrp	x0, #91037696 ; -> 0xa422000 
004d50ffc 	ldr	x0, [x0, #2432]
004d51000 	bl	#-8127904 ; -> 0x4590a60 
004d51004 	adrp	x0, #91033600 ; -> 0xa422000 
004d51008 	ldr	x0, [x0, #2440]
004d5100c 	bl	#-8127916 ; -> 0x4590a60 
004d51010 	mov	w8, #1
004d51014 	strb	w8, [x21, #2881]
004d51018 	movi	v0.2d, #0000000000000000
004d5101c 	mov	w0, #27328
004d51020 	mov	x1, xzr
004d51024 	str	xzr, [sp, #112]
004d51028 	stp	q0, q0, [sp, #80]
004d5102c 	bl	#-1088136 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d51030 	tbz	w0, #0, #44 ; -> 0x4d5105c 
004d51034 	mov	w0, #27328
004d51038 	mov	x1, xzr
004d5103c 	bl	#-1087972 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d51040 	cbz	x0, #236 ; -> 0x4d5112c 
004d51044 	add	x8, sp, #8
004d51048 	mov	x1, x20
004d5104c 	mov	x2, xzr
004d51050 	bl	#-1884304 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d51054 	add	x1, sp, #8
004d51058 	b	#180 ; -> 0x4d5110c 
004d5105c 	movi	d0, #0000000000000000
004d51060 	adrp	x21, #90800128 ; -> 0xa3e9000 
004d51064 	mov	w22, #13376
004d51068 	ldr	x21, [x21, #1384]
004d5106c 	add	x0, x20, x22
004d51070 	mov	x1, xzr
004d51074 	bl	#-2094268 ; -> 0x4b51bb8 SilentFloat::set_Value
004d51078 	ldr	x0, [x21]
004d5107c 	ldr	w8, [x0, #228]
004d51080 	cbnz	w8, #12 ; -> 0x4d5108c 
004d51084 	bl	#-8127652 ; -> 0x4590be0 
004d51088 	ldr	x0, [x21]
004d5108c 	ldr	x8, [x0, #184]
004d51090 	ldr	x0, [x8, #176]
004d51094 	cbz	x0, #152 ; -> 0x4d5112c 
004d51098 	adrp	x8, #91033600 ; -> 0xa422000 
004d5109c 	add	x23, sp, #80
004d510a0 	ldr	x8, [x8, #2408]
004d510a4 	ldr	x1, [x8]
004d510a8 	add	x8, sp, #80
004d510ac 	bl	#55235824 ; -> 0x81fe59c 
004d510b0 	adrp	x21, #91033600 ; -> 0xa422000 
004d510b4 	ldr	x21, [x21, #2424]
004d510b8 	stp	xzr, x23, [sp, #8]
004d510bc 	ldr	x1, [x21]
004d510c0 	add	x0, sp, #80
004d510c4 	bl	#24221760 ; -> 0x646a904 
004d510c8 	tbz	w0, #0, #44 ; -> 0x4d510f4 
004d510cc 	ldr	x23, [sp, #104]
004d510d0 	add	x0, x20, x22
004d510d4 	mov	x1, xzr
004d510d8 	bl	#-2095588 ; -> 0x4b516f4 SilentFloat::get_Value
004d510dc 	fmov	s1, w23
004d510e0 	fadd	s0, s0, s1
004d510e4 	add	x0, x20, x22
004d510e8 	mov	x1, xzr
004d510ec 	bl	#-2094388 ; -> 0x4b51bb8 SilentFloat::set_Value
004d510f0 	b	#-52 ; -> 0x4d510bc 
004d510f4 	adrp	x8, #91033600 ; -> 0xa422000 
004d510f8 	add	x0, sp, #80
004d510fc 	ldr	x8, [x8, #2416]
004d51100 	ldr	x1, [x8]
004d51104 	bl	#24221996 ; -> 0x646aa30 
004d51108 	add	x1, x20, x22
004d5110c 	mov	x0, x19
004d51110 	mov	w2, #72
004d51114 	bl	#83994588 ; -> 0x9d6b8f0 
004d51118 	ldp	x20, x19, [sp, #160]
004d5111c 	ldp	x22, x21, [sp, #144]
004d51120 	ldp	x30, x23, [sp, #128]
004d51124 	add	sp, sp, #176
004d51128 	ret
004d5112c 	bl	#-8127520 ; -> 0x4590d0c 
004d51130 	b	#8 ; -> 0x4d51138 
004d51134 	b	#4 ; -> 0x4d51138 
004d51138 	mov	x21, x0
004d5113c 	cmp	w1, #1
004d51140 	b.ne	#60 ; -> 0x4d5117c 
004d51144 	mov	x0, x21
004d51148 	bl	#83994424 ; -> 0x9d6b880 
004d5114c 	ldr	x21, [x0]
004d51150 	str	x21, [sp, #8]
004d51154 	bl	#83994428 ; -> 0x9d6b890 
004d51158 	adrp	x8, #91033600 ; -> 0xa422000 
004d5115c 	ldr	x8, [x8, #2416]
004d51160 	ldr	x0, [sp, #16]
004d51164 	ldr	x1, [x8]
004d51168 	bl	#24221896 ; -> 0x646aa30 
004d5116c 	cbz	x21, #-100 ; -> 0x4d51108 
004d51170 	mov	x0, x21
004d51174 	bl	#-8127600 ; -> 0x4590d04 
004d51178 	mov	x21, x0
004d5117c 	add	x0, sp, #8
004d51180 	bl	#-12762760 ; -> 0x41252f8 
004d51184 	mov	x0, x21
004d51188 	bl	#-6943084 ; -> 0x46b201c 
004d5118c 	bl	#-12798252 ; -> 0x411c860 
