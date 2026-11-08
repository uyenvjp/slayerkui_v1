00530b140 	sub	sp, sp, #192
00530b144 	stp	x30, x19, [sp, #176]
00530b148 	movi	v0.2d, #0000000000000000
00530b14c 	mov	x19, x0
00530b150 	mov	w0, #37906
00530b154 	mov	x1, xzr
00530b158 	str	xzr, [sp, #160]
00530b15c 	stp	q0, q0, [sp, #96]
00530b160 	stp	q0, q0, [sp, #128]
00530b164 	bl	#-7093184 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530b168 	tbz	w0, #0, #40 ; -> 0x530b190 
00530b16c 	mov	w0, #37906
00530b170 	mov	x1, xzr
00530b174 	bl	#-7093020 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530b178 	cbz	x0, #188 ; -> 0x530b234 
00530b17c 	mov	x1, x19
00530b180 	ldp	x30, x19, [sp, #176]
00530b184 	mov	x2, xzr
00530b188 	add	sp, sp, #192
00530b18c 	b	#-7916652 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00530b190 	ldrb	w8, [x19, #56]
00530b194 	cbnz	w8, #148 ; -> 0x530b228 
00530b198 	ldp	q0, q1, [x19, #656]
00530b19c 	add	x0, sp, #48
00530b1a0 	ldr	q2, [x19, #688]
00530b1a4 	mov	x1, xzr
00530b1a8 	stp	q0, q1, [sp, #48]
00530b1ac 	str	q2, [sp, #80]
00530b1b0 	bl	#-12745892 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530b1b4 	fcmp	s0, #0.0
00530b1b8 	b.le	#88 ; -> 0x530b210 
00530b1bc 	add	x8, sp, #96
00530b1c0 	mov	x0, x19
00530b1c4 	bl	#-20444 ; -> 0x53061e8 SkillData::get_MaxAttackCountResult
00530b1c8 	add	x0, sp, #96
00530b1cc 	mov	x1, xzr
00530b1d0 	bl	#-8100572 ; -> 0x4b516f4 SilentFloat::get_Value
00530b1d4 	mov	x8, sp
00530b1d8 	mov	x0, xzr
00530b1dc 	bl	#-12776004 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530b1e0 	ldp	q0, q1, [sp]
00530b1e4 	add	x0, x19, #656
00530b1e8 	ldr	q2, [sp, #32]
00530b1ec 	mov	x1, xzr
00530b1f0 	stp	q0, q1, [x19, #656]
00530b1f4 	str	q2, [x19, #688]
00530b1f8 	bl	#-14133236 ; -> 0x4590a04 
00530b1fc 	ldr	x8, [x19]
00530b200 	mov	x0, x19
00530b204 	ldr	x9, [x8, #536]
00530b208 	ldr	x1, [x8, #544]
00530b20c 	blr	x9
00530b210 	ldr	s0, [x19, #316]
00530b214 	fcmp	s0, #0.0
00530b218 	b.le	#16 ; -> 0x530b228 
00530b21c 	mov	x0, x19
00530b220 	bl	#-21424 ; -> 0x5305e70 SkillData::get_MaxCooltimePlus
00530b224 	str	s0, [x19, #316]
00530b228 	ldp	x30, x19, [sp, #176]
00530b22c 	add	sp, sp, #192
00530b230 	ret
00530b234 	bl	#-14132520 ; -> 0x4590d0c 
