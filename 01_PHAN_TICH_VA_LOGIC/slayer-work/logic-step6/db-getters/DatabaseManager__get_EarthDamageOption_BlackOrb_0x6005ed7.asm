004d4ef40 	sub	sp, sp, #208
004d4ef44 	stp	d11, d10, [sp, #144]
004d4ef48 	stp	d9, d8, [sp, #160]
004d4ef4c 	stp	x30, x21, [sp, #176]
004d4ef50 	stp	x20, x19, [sp, #192]
004d4ef54 	mov	x20, x0
004d4ef58 	mov	w0, #27325
004d4ef5c 	mov	x1, xzr
004d4ef60 	mov	x19, x8
004d4ef64 	bl	#-1079744 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d4ef68 	tbz	w0, #0, #44 ; -> 0x4d4ef94 
004d4ef6c 	mov	w0, #27325
004d4ef70 	mov	x1, xzr
004d4ef74 	bl	#-1079580 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d4ef78 	cbz	x0, #236 ; -> 0x4d4f064 
004d4ef7c 	add	x8, sp, #72
004d4ef80 	mov	x1, x20
004d4ef84 	mov	x2, xzr
004d4ef88 	bl	#-1875912 ; -> 0x4b84fc0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_133
004d4ef8c 	add	x1, sp, #72
004d4ef90 	b	#176 ; -> 0x4d4f040 
004d4ef94 	mov	w8, #10944
004d4ef98 	mov	x1, xzr
004d4ef9c 	add	x0, x20, x8
004d4efa0 	bl	#-2087084 ; -> 0x4b516f4 SilentFloat::get_Value
004d4efa4 	mov	w8, #11016
004d4efa8 	mov	x1, xzr
004d4efac 	fmov	s8, s0
004d4efb0 	add	x0, x20, x8
004d4efb4 	bl	#-2087104 ; -> 0x4b516f4 SilentFloat::get_Value
004d4efb8 	mov	x0, xzr
004d4efbc 	fmov	s9, s0
004d4efc0 	bl	#6975004 ; -> 0x53f5ddc WishDataManager::get_Instance
004d4efc4 	cbz	x0, #160 ; -> 0x4d4f064 
004d4efc8 	mov	w1, #7
004d4efcc 	mov	x2, xzr
004d4efd0 	bl	#6984792 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004d4efd4 	mov	x0, xzr
004d4efd8 	fmov	s10, s0
004d4efdc 	bl	#6974976 ; -> 0x53f5ddc WishDataManager::get_Instance
004d4efe0 	cbz	x0, #132 ; -> 0x4d4f064 
004d4efe4 	mov	w1, #8
004d4efe8 	mov	x2, xzr
004d4efec 	mov	w21, #11304
004d4eff0 	bl	#6984760 ; -> 0x53f8428 WishDataManager::TryGetOptionValue
004d4eff4 	mov	w8, #12024
004d4eff8 	fmov	s11, s0
004d4effc 	mov	x0, sp
004d4f000 	add	x8, x20, x8
004d4f004 	mov	x1, xzr
004d4f008 	ldp	q0, q1, [x8]
004d4f00c 	stp	q0, q1, [sp]
004d4f010 	ldp	q0, q2, [x8, #32]
004d4f014 	stp	q0, q2, [sp, #32]
004d4f018 	bl	#-2082584 ; -> 0x4b52900 SilentLong::op_Implicit
004d4f01c 	fadd	s0, s8, s9
004d4f020 	scvtf	s1, x0
004d4f024 	add	x0, x20, x21
004d4f028 	mov	x1, xzr
004d4f02c 	fadd	s0, s0, s10
004d4f030 	fadd	s0, s0, s11
004d4f034 	fadd	s0, s0, s1
004d4f038 	bl	#-2086016 ; -> 0x4b51bb8 SilentFloat::set_Value
004d4f03c 	add	x1, x20, x21
004d4f040 	mov	x0, x19
004d4f044 	mov	w2, #72
004d4f048 	bl	#84002984 ; -> 0x9d6b8f0 
004d4f04c 	ldp	x20, x19, [sp, #192]
004d4f050 	ldp	x30, x21, [sp, #176]
004d4f054 	ldp	d9, d8, [sp, #160]
004d4f058 	ldp	d11, d10, [sp, #144]
004d4f05c 	add	sp, sp, #208
004d4f060 	ret
004d4f064 	bl	#-8119128 ; -> 0x4590d0c 
