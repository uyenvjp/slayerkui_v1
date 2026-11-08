004eeeaf8 	stp	d13, d12, [sp, #-96]!
004eeeafc 	stp	d11, d10, [sp, #16]
004eeeb00 	stp	d9, d8, [sp, #32]
004eeeb04 	stp	x29, x30, [sp, #48]
004eeeb08 	stp	x22, x21, [sp, #64]
004eeeb0c 	stp	x20, x19, [sp, #80]
004eeeb10 	sub	sp, sp, #640
004eeeb14 	mov	x19, x0
004eeeb18 	mov	w0, #32838
004eeeb1c 	mov	x1, xzr
004eeeb20 	bl	#-2782588 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004eeeb24 	tbz	w0, #0, #60 ; -> 0x4eeeb60 
004eeeb28 	mov	w0, #32838
004eeeb2c 	mov	x1, xzr
004eeeb30 	bl	#-2782424 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004eeeb34 	cbz	x0, #604 ; -> 0x4eeed90 
004eeeb38 	mov	x1, x19
004eeeb3c 	mov	x2, xzr
004eeeb40 	add	sp, sp, #640
004eeeb44 	ldp	x20, x19, [sp, #80]
004eeeb48 	ldp	x22, x21, [sp, #64]
004eeeb4c 	ldp	x29, x30, [sp, #48]
004eeeb50 	ldp	d9, d8, [sp, #32]
004eeeb54 	ldp	d11, d10, [sp, #16]
004eeeb58 	ldp	d13, d12, [sp], #96
004eeeb5c 	b	#-3602216 ; -> 0x4b7f434 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_19
004eeeb60 	mov	x0, x19
004eeeb64 	bl	#-4376 ; -> 0x4eeda4c PlayerBase::GetPresetBattleStat
004eeeb68 	cbz	x0, #12 ; -> 0x4eeeb74 
004eeeb6c 	ldr	s0, [x0, #108]
004eeeb70 	b	#508 ; -> 0x4eeed6c 
004eeeb74 	ldr	x8, [x19, #312]
004eeeb78 	cbz	x8, #536 ; -> 0x4eeed90 
004eeeb7c 	mov	w9, #4864
004eeeb80 	add	x0, sp, #568
004eeeb84 	mov	w2, #72
004eeeb88 	add	x1, x8, x9
004eeeb8c 	bl	#82300260 ; -> 0x9d6b8f0 
004eeeb90 	add	x0, sp, #568
004eeeb94 	mov	x1, xzr
004eeeb98 	bl	#-3788400 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeeb9c 	ldr	x8, [x19, #312]
004eeeba0 	cbz	x8, #496 ; -> 0x4eeed90 
004eeeba4 	mov	w9, #10240
004eeeba8 	add	x0, sp, #496
004eeebac 	mov	w2, #72
004eeebb0 	add	x1, x8, x9
004eeebb4 	fmov	s8, s0
004eeebb8 	bl	#82300216 ; -> 0x9d6b8f0 
004eeebbc 	add	x0, sp, #496
004eeebc0 	mov	x1, xzr
004eeebc4 	bl	#-3788444 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeebc8 	ldr	x8, [x19, #312]
004eeebcc 	cbz	x8, #452 ; -> 0x4eeed90 
004eeebd0 	mov	w9, #9544
004eeebd4 	fmov	s9, s0
004eeebd8 	add	x21, sp, #224
004eeebdc 	add	x8, x8, x9
004eeebe0 	add	x0, sp, #432
004eeebe4 	mov	x1, xzr
004eeebe8 	ldp	q0, q1, [x8]
004eeebec 	stp	q0, q1, [x21, #208]
004eeebf0 	ldp	q0, q2, [x8, #32]
004eeebf4 	stp	q0, q2, [x21, #240]
004eeebf8 	bl	#-3786920 ; -> 0x4b52350 SilentInt::op_Implicit
004eeebfc 	ldr	x8, [x19, #312]
004eeec00 	cbz	x8, #400 ; -> 0x4eeed90 
004eeec04 	mov	w9, #8816
004eeec08 	mov	w20, w0
004eeec0c 	add	x0, sp, #360
004eeec10 	add	x1, x8, x9
004eeec14 	mov	w2, #72
004eeec18 	bl	#82300120 ; -> 0x9d6b8f0 
004eeec1c 	add	x0, sp, #360
004eeec20 	mov	x1, xzr
004eeec24 	bl	#-3788540 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeec28 	ldr	x8, [x19, #312]
004eeec2c 	cbz	x8, #356 ; -> 0x4eeed90 
004eeec30 	mov	w9, #5864
004eeec34 	add	x0, sp, #288
004eeec38 	mov	w2, #72
004eeec3c 	add	x1, x8, x9
004eeec40 	fmov	s10, s0
004eeec44 	bl	#82300076 ; -> 0x9d6b8f0 
004eeec48 	add	x0, sp, #288
004eeec4c 	mov	x1, xzr
004eeec50 	bl	#-3788584 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeec54 	ldr	x8, [x19, #312]
004eeec58 	cbz	x8, #312 ; -> 0x4eeed90 
004eeec5c 	add	x8, x8, #1704
004eeec60 	fmov	s11, s0
004eeec64 	add	x0, sp, #224
004eeec68 	ldp	q0, q1, [x8]
004eeec6c 	mov	x1, xzr
004eeec70 	stp	q0, q1, [x21]
004eeec74 	ldp	q0, q2, [x8, #32]
004eeec78 	stp	q0, q2, [x21, #32]
004eeec7c 	bl	#-3787052 ; -> 0x4b52350 SilentInt::op_Implicit
004eeec80 	ldr	x8, [x19, #312]
004eeec84 	cbz	x8, #268 ; -> 0x4eeed90 
004eeec88 	mov	w9, #20176
004eeec8c 	mov	w21, w0
004eeec90 	add	x0, sp, #152
004eeec94 	add	x1, x8, x9
004eeec98 	mov	w2, #72
004eeec9c 	bl	#82299988 ; -> 0x9d6b8f0 
004eeeca0 	add	x0, sp, #152
004eeeca4 	mov	x1, xzr
004eeeca8 	bl	#-3788672 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeecac 	mov	x0, xzr
004eeecb0 	fmov	s12, s0
004eeecb4 	bl	#4342460 ; -> 0x5312f70 SkillGrindingDataManager::get_Instance
004eeecb8 	cbz	x0, #216 ; -> 0x4eeed90 
004eeecbc 	mov	x8, x0
004eeecc0 	add	x0, sp, #80
004eeecc4 	mov	w2, #72
004eeecc8 	add	x1, x8, #352
004eeeccc 	bl	#82299940 ; -> 0x9d6b8f0 
004eeecd0 	add	x0, sp, #80
004eeecd4 	mov	x1, xzr
004eeecd8 	bl	#-3788720 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeecdc 	fmov	s13, s0
004eeece0 	adrp	x22, #97390592 ; -> 0xabcf000 
004eeece4 	ldrb	w8, [x22, #636]
004eeece8 	cbnz	w8, #24 ; -> 0x4eeed00 
004eeecec 	adrp	x0, #89133056 ; -> 0xa3ef000 
004eeecf0 	ldr	x0, [x0, #3328]
004eeecf4 	bl	#-9822868 ; -> 0x4590a60 
004eeecf8 	mov	w8, #1
004eeecfc 	strb	w8, [x22, #636]
004eeed00 	adrp	x8, #89133056 ; -> 0xa3ef000 
004eeed04 	ldr	x8, [x8, #3328]
004eeed08 	ldr	x8, [x8]
004eeed0c 	ldr	x8, [x8, #184]
004eeed10 	ldr	x8, [x8]
004eeed14 	cbz	x8, #124 ; -> 0x4eeed90 
004eeed18 	ldr	x8, [x8, #104]
004eeed1c 	cbz	x8, #116 ; -> 0x4eeed90 
004eeed20 	add	x0, sp, #8
004eeed24 	add	x1, x8, #640
004eeed28 	mov	w2, #72
004eeed2c 	bl	#82299844 ; -> 0x9d6b8f0 
004eeed30 	add	x0, sp, #8
004eeed34 	mov	x1, xzr
004eeed38 	bl	#-3788816 ; -> 0x4b51d28 SilentFloat::op_Implicit
004eeed3c 	fmov	s1, #10.00000000
004eeed40 	scvtf	s2, w20
004eeed44 	fadd	s1, s8, s1
004eeed48 	fadd	s1, s1, s9
004eeed4c 	fadd	s1, s1, s2
004eeed50 	scvtf	s2, w21
004eeed54 	fadd	s1, s1, s10
004eeed58 	fadd	s1, s1, s11
004eeed5c 	fadd	s1, s1, s2
004eeed60 	fadd	s1, s1, s12
004eeed64 	fadd	s1, s1, s13
004eeed68 	fadd	s0, s1, s0
004eeed6c 	str	s0, [x19, #188]
004eeed70 	add	sp, sp, #640
004eeed74 	ldp	x20, x19, [sp, #80]
004eeed78 	ldp	x22, x21, [sp, #64]
004eeed7c 	ldp	x29, x30, [sp, #48]
004eeed80 	ldp	d9, d8, [sp, #32]
004eeed84 	ldp	d11, d10, [sp, #16]
004eeed88 	ldp	d13, d12, [sp], #96
004eeed8c 	ret
004eeed90 	bl	#-9822340 ; -> 0x4590d0c 
