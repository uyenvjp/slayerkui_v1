004d4ee18 	sub	sp, sp, #208
004d4ee1c 	stp	d11, d10, [sp, #144]
004d4ee20 	stp	d9, d8, [sp, #160]
004d4ee24 	stp	x30, x21, [sp, #176]
004d4ee28 	stp	x20, x19, [sp, #192]
004d4ee2c 	mov	x20, x0
004d4ee30 	mov	w0, #27324
004d4ee34 	mov	x1, xzr
004d4ee38 	mov	x19, x8
004d4ee3c 	bl	#-1079448 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4ee40 	tbz	w0, #0, #44 ; -> 0x4d4ee6c 
004d4ee44 	mov	w0, #27324
004d4ee48 	mov	x1, xzr
004d4ee4c 	bl	#-1079284 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4ee50 	cbz	x0, #236 ; -> 0x4d4ef3c 
004d4ee54 	add	x8, sp, #72
004d4ee58 	mov	x1, x20
004d4ee5c 	mov	x2, xzr
004d4ee60 	bl	#-1875616 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d4ee64 	add	x1, sp, #72
004d4ee68 	b	#176 ; -> 0x4d4ef18 
004d4ee6c 	mov	w8, #10872
004d4ee70 	mov	x1, xzr
004d4ee74 	add	x0, x20, x8
004d4ee78 	bl	#-2086788 ; -> 0x4b516f4 SilentFloat::get_Value
004d4ee7c 	mov	w8, #11016
004d4ee80 	mov	x1, xzr
004d4ee84 	fmov	s8, s0
004d4ee88 	add	x0, x20, x8
004d4ee8c 	bl	#-2086808 ; -> 0x4b516f4 SilentFloat::get_Value
004d4ee90 	mov	x0, xzr
004d4ee94 	fmov	s9, s0
004d4ee98 	bl	#6975300 ; -> 0x53f5ddc WishDataManager::get_Instance
004d4ee9c 	cbz	x0, #160 ; -> 0x4d4ef3c 
004d4eea0 	mov	w1, #6
004d4eea4 	mov	x2, xzr
004d4eea8 	bl	#6985088 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004d4eeac 	mov	x0, xzr
004d4eeb0 	fmov	s10, s0
004d4eeb4 	bl	#6975272 ; -> 0x53f5ddc WishDataManager::get_Instance
004d4eeb8 	cbz	x0, #132 ; -> 0x4d4ef3c 
004d4eebc 	mov	w1, #8
004d4eec0 	mov	x2, xzr
004d4eec4 	mov	w21, #11232
004d4eec8 	bl	#6985056 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004d4eecc 	mov	w8, #12024
004d4eed0 	fmov	s11, s0
004d4eed4 	mov	x0, sp
004d4eed8 	add	x8, x20, x8
004d4eedc 	mov	x1, xzr
004d4eee0 	ldp	q0, q1, [x8]
004d4eee4 	stp	q0, q1, [sp]
004d4eee8 	ldp	q0, q2, [x8, #32]
004d4eeec 	stp	q0, q2, [sp, #32]
004d4eef0 	bl	#-2082288 ; -> 0x4b52900 SilentLong::op_Implicit
004d4eef4 	fadd	s0, s8, s9
004d4eef8 	scvtf	s1, x0
004d4eefc 	add	x0, x20, x21
004d4ef00 	mov	x1, xzr
004d4ef04 	fadd	s0, s0, s10
004d4ef08 	fadd	s0, s0, s11
004d4ef0c 	fadd	s0, s0, s1
004d4ef10 	bl	#-2085720 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4ef14 	add	x1, x20, x21
004d4ef18 	mov	x0, x19
004d4ef1c 	mov	w2, #72
004d4ef20 	bl	#84003280 ; -> 0x9d6b8f0 
004d4ef24 	ldp	x20, x19, [sp, #192]
004d4ef28 	ldp	x30, x21, [sp, #176]
004d4ef2c 	ldp	d9, d8, [sp, #160]
004d4ef30 	ldp	d11, d10, [sp, #144]
004d4ef34 	add	sp, sp, #208
004d4ef38 	ret
004d4ef3c 	bl	#-8118832 ; -> 0x4590d0c 
