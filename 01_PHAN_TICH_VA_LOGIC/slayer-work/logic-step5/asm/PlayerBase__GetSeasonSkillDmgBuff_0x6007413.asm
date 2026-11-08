004effd70 	sub	sp, sp, #400
004effd74 	stp	x29, x30, [sp, #368]
004effd78 	stp	x20, x19, [sp, #384]
004effd7c 	mov	w20, w1
004effd80 	mov	x19, x0
004effd84 	mov	w0, #31577
004effd88 	mov	x1, xzr
004effd8c 	bl	#-2852840 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004effd90 	tbz	w0, #0, #48 ; -> 0x4effdc0 
004effd94 	mov	w0, #31577
004effd98 	mov	x1, xzr
004effd9c 	bl	#-2852676 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004effda0 	cbz	x0, #272 ; -> 0x4effeb0 
004effda4 	mov	x1, x19
004effda8 	mov	w2, w20
004effdac 	mov	x3, xzr
004effdb0 	ldp	x20, x19, [sp, #384]
004effdb4 	ldp	x29, x30, [sp, #368]
004effdb8 	add	sp, sp, #400
004effdbc 	b	#-3263352 ; -> 0x4be3244 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1969
004effdc0 	movi	d0, #0000000000000000
004effdc4 	cmp	w20, #2
004effdc8 	b.gt	#64 ; -> 0x4effe08 
004effdcc 	cmp	w20, #1
004effdd0 	b.eq	#116 ; -> 0x4effe44 
004effdd4 	cmp	w20, #2
004effdd8 	b.ne	#200 ; -> 0x4effea0 
004effddc 	ldr	x0, [x19, #312]
004effde0 	cbz	x0, #208 ; -> 0x4effeb0 
004effde4 	add	x8, sp, #296
004effde8 	mov	x1, xzr
004effdec 	bl	#-1764936 ; -> 0x4d50fa4 DatabaseManager::get_SkillEffectwaterDmgBuff
004effdf0 	add	x0, sp, #152
004effdf4 	add	x1, sp, #296
004effdf8 	mov	w2, #72
004effdfc 	bl	#82230004 ; -> 0x9d6b8f0 
004effe00 	add	x0, sp, #152
004effe04 	b	#148 ; -> 0x4effe98 
004effe08 	cmp	w20, #3
004effe0c 	b.eq	#100 ; -> 0x4effe70 
004effe10 	cmp	w20, #4
004effe14 	b.ne	#140 ; -> 0x4effea0 
004effe18 	ldr	x0, [x19, #312]
004effe1c 	cbz	x0, #148 ; -> 0x4effeb0 
004effe20 	add	x8, sp, #296
004effe24 	mov	x1, xzr
004effe28 	bl	#-1764012 ; -> 0x4d5137c DatabaseManager::get_SkillEffectEarthDmgBuff
004effe2c 	add	x0, sp, #8
004effe30 	add	x1, sp, #296
004effe34 	mov	w2, #72
004effe38 	bl	#82229944 ; -> 0x9d6b8f0 
004effe3c 	add	x0, sp, #8
004effe40 	b	#88 ; -> 0x4effe98 
004effe44 	ldr	x0, [x19, #312]
004effe48 	cbz	x0, #104 ; -> 0x4effeb0 
004effe4c 	add	x8, sp, #296
004effe50 	mov	x1, xzr
004effe54 	bl	#-1765532 ; -> 0x4d50db8 DatabaseManager::get_SkillEffectFireDmgBuff
004effe58 	add	x0, sp, #224
004effe5c 	add	x1, sp, #296
004effe60 	mov	w2, #72
004effe64 	bl	#82229900 ; -> 0x9d6b8f0 
004effe68 	add	x0, sp, #224
004effe6c 	b	#44 ; -> 0x4effe98 
004effe70 	ldr	x0, [x19, #312]
004effe74 	cbz	x0, #60 ; -> 0x4effeb0 
004effe78 	add	x8, sp, #296
004effe7c 	mov	x1, xzr
004effe80 	bl	#-1764592 ; -> 0x4d51190 DatabaseManager::get_SkillEffectWindDmgBuff
004effe84 	add	x0, sp, #80
004effe88 	add	x1, sp, #296
004effe8c 	mov	w2, #72
004effe90 	bl	#82229856 ; -> 0x9d6b8f0 
004effe94 	add	x0, sp, #80
004effe98 	mov	x1, xzr
004effe9c 	bl	#-3858804 ; -> 0x4b51d28 SilentFloat::op_Implicit
004effea0 	ldp	x20, x19, [sp, #384]
004effea4 	ldp	x29, x30, [sp, #368]
004effea8 	add	sp, sp, #400
004effeac 	ret
004effeb0 	bl	#-9892260 ; -> 0x4590d0c 
