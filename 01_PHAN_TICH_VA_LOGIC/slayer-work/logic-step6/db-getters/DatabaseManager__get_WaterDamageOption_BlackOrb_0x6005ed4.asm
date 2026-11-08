004d4ebb0 	sub	sp, sp, #288
004d4ebb4 	stp	d11, d10, [sp, #208]
004d4ebb8 	stp	d9, d8, [sp, #224]
004d4ebbc 	str	x29, [sp, #240]
004d4ebc0 	stp	x30, x21, [sp, #256]
004d4ebc4 	stp	x20, x19, [sp, #272]
004d4ebc8 	mov	x20, x0
004d4ebcc 	mov	w0, #27322
004d4ebd0 	mov	x1, xzr
004d4ebd4 	mov	x19, x8
004d4ebd8 	bl	#-1078836 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4ebdc 	tbz	w0, #0, #44 ; -> 0x4d4ec08 
004d4ebe0 	mov	w0, #27322
004d4ebe4 	mov	x1, xzr
004d4ebe8 	bl	#-1078672 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4ebec 	cbz	x0, #256 ; -> 0x4d4ecec 
004d4ebf0 	add	x8, sp, #136
004d4ebf4 	mov	x1, x20
004d4ebf8 	mov	x2, xzr
004d4ebfc 	bl	#-1875004 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d4ec00 	add	x1, sp, #136
004d4ec04 	b	#192 ; -> 0x4d4ecc4 
004d4ec08 	mov	w8, #10728
004d4ec0c 	mov	x1, xzr
004d4ec10 	add	x0, x20, x8
004d4ec14 	bl	#-2086176 ; -> 0x4b516f4 SilentFloat::get_Value
004d4ec18 	mov	w8, #11016
004d4ec1c 	add	x0, sp, #64
004d4ec20 	mov	w2, #72
004d4ec24 	add	x1, x20, x8
004d4ec28 	fmov	s8, s0
004d4ec2c 	bl	#84004036 ; -> 0x9d6b8f0 
004d4ec30 	add	x0, sp, #64
004d4ec34 	mov	x1, xzr
004d4ec38 	bl	#-2084624 ; -> 0x4b51d28 SilentFloat::op_Implicit
004d4ec3c 	mov	x0, xzr
004d4ec40 	fmov	s9, s0
004d4ec44 	bl	#6975896 ; -> 0x53f5ddc WishDataManager::get_Instance
004d4ec48 	cbz	x0, #164 ; -> 0x4d4ecec 
004d4ec4c 	mov	w1, #5
004d4ec50 	mov	x2, xzr
004d4ec54 	bl	#6985684 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004d4ec58 	mov	x0, xzr
004d4ec5c 	fmov	s10, s0
004d4ec60 	bl	#6975868 ; -> 0x53f5ddc WishDataManager::get_Instance
004d4ec64 	cbz	x0, #136 ; -> 0x4d4ecec 
004d4ec68 	mov	w1, #8
004d4ec6c 	mov	x2, xzr
004d4ec70 	mov	w21, #11088
004d4ec74 	bl	#6985652 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004d4ec78 	mov	w8, #12024
004d4ec7c 	fmov	s11, s0
004d4ec80 	mov	x0, sp
004d4ec84 	add	x8, x20, x8
004d4ec88 	mov	x1, xzr
004d4ec8c 	ldp	q0, q1, [x8]
004d4ec90 	stp	q0, q1, [sp]
004d4ec94 	ldp	q0, q2, [x8, #32]
004d4ec98 	stp	q0, q2, [sp, #32]
004d4ec9c 	bl	#-2081692 ; -> 0x4b52900 SilentLong::op_Implicit
004d4eca0 	fadd	s0, s8, s9
004d4eca4 	scvtf	s1, x0
004d4eca8 	add	x0, x20, x21
004d4ecac 	mov	x1, xzr
004d4ecb0 	fadd	s0, s0, s10
004d4ecb4 	fadd	s0, s0, s11
004d4ecb8 	fadd	s0, s0, s1
004d4ecbc 	bl	#-2085124 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4ecc0 	add	x1, x20, x21
004d4ecc4 	mov	x0, x19
004d4ecc8 	mov	w2, #72
004d4eccc 	bl	#84003876 ; -> 0x9d6b8f0 
004d4ecd0 	ldp	x20, x19, [sp, #272]
004d4ecd4 	ldr	x29, [sp, #240]
004d4ecd8 	ldp	x30, x21, [sp, #256]
004d4ecdc 	ldp	d9, d8, [sp, #224]
004d4ece0 	ldp	d11, d10, [sp, #208]
004d4ece4 	add	sp, sp, #288
004d4ece8 	ret
004d4ecec 	bl	#-8118240 ; -> 0x4590d0c 
