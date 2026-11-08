004d4ecf0 	sub	sp, sp, #208
004d4ecf4 	stp	d11, d10, [sp, #144]
004d4ecf8 	stp	d9, d8, [sp, #160]
004d4ecfc 	stp	x30, x21, [sp, #176]
004d4ed00 	stp	x20, x19, [sp, #192]
004d4ed04 	mov	x20, x0
004d4ed08 	mov	w0, #27323
004d4ed0c 	mov	x1, xzr
004d4ed10 	mov	x19, x8
004d4ed14 	bl	#-1079152 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4ed18 	tbz	w0, #0, #44 ; -> 0x4d4ed44 
004d4ed1c 	mov	w0, #27323
004d4ed20 	mov	x1, xzr
004d4ed24 	bl	#-1078988 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4ed28 	cbz	x0, #236 ; -> 0x4d4ee14 
004d4ed2c 	add	x8, sp, #72
004d4ed30 	mov	x1, x20
004d4ed34 	mov	x2, xzr
004d4ed38 	bl	#-1875320 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d4ed3c 	add	x1, sp, #72
004d4ed40 	b	#176 ; -> 0x4d4edf0 
004d4ed44 	mov	w8, #10800
004d4ed48 	mov	x1, xzr
004d4ed4c 	add	x0, x20, x8
004d4ed50 	bl	#-2086492 ; -> 0x4b516f4 SilentFloat::get_Value
004d4ed54 	mov	w8, #11016
004d4ed58 	mov	x1, xzr
004d4ed5c 	fmov	s8, s0
004d4ed60 	add	x0, x20, x8
004d4ed64 	bl	#-2086512 ; -> 0x4b516f4 SilentFloat::get_Value
004d4ed68 	mov	x0, xzr
004d4ed6c 	fmov	s9, s0
004d4ed70 	bl	#6975596 ; -> 0x53f5ddc WishDataManager::get_Instance
004d4ed74 	cbz	x0, #160 ; -> 0x4d4ee14 
004d4ed78 	mov	w1, #4
004d4ed7c 	mov	x2, xzr
004d4ed80 	bl	#6985384 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004d4ed84 	mov	x0, xzr
004d4ed88 	fmov	s10, s0
004d4ed8c 	bl	#6975568 ; -> 0x53f5ddc WishDataManager::get_Instance
004d4ed90 	cbz	x0, #132 ; -> 0x4d4ee14 
004d4ed94 	mov	w1, #8
004d4ed98 	mov	x2, xzr
004d4ed9c 	mov	w21, #11160
004d4eda0 	bl	#6985352 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004d4eda4 	mov	w8, #12024
004d4eda8 	fmov	s11, s0
004d4edac 	mov	x0, sp
004d4edb0 	add	x8, x20, x8
004d4edb4 	mov	x1, xzr
004d4edb8 	ldp	q0, q1, [x8]
004d4edbc 	stp	q0, q1, [sp]
004d4edc0 	ldp	q0, q2, [x8, #32]
004d4edc4 	stp	q0, q2, [sp, #32]
004d4edc8 	bl	#-2081992 ; -> 0x4b52900 SilentLong::op_Implicit
004d4edcc 	fadd	s0, s8, s9
004d4edd0 	scvtf	s1, x0
004d4edd4 	add	x0, x20, x21
004d4edd8 	mov	x1, xzr
004d4eddc 	fadd	s0, s0, s10
004d4ede0 	fadd	s0, s0, s11
004d4ede4 	fadd	s0, s0, s1
004d4ede8 	bl	#-2085424 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4edec 	add	x1, x20, x21
004d4edf0 	mov	x0, x19
004d4edf4 	mov	w2, #72
004d4edf8 	bl	#84003576 ; -> 0x9d6b8f0 
004d4edfc 	ldp	x20, x19, [sp, #192]
004d4ee00 	ldp	x30, x21, [sp, #176]
004d4ee04 	ldp	d9, d8, [sp, #160]
004d4ee08 	ldp	d11, d10, [sp, #144]
004d4ee0c 	add	sp, sp, #208
004d4ee10 	ret
004d4ee14 	bl	#-8118536 ; -> 0x4590d0c 
