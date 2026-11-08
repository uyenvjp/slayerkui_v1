005309868 	str	d8, [sp, #-48]!
00530986c 	stp	x29, x30, [sp, #16]
005309870 	stp	x20, x19, [sp, #32]
005309874 	sub	sp, sp, #544
005309878 	movi	v0.2d, #0000000000000000
00530987c 	mov	x19, x0
005309880 	mov	w0, #6742
005309884 	mov	x1, xzr
005309888 	str	xzr, [sp, #528]
00530988c 	str	wzr, [sp, #556]
005309890 	stp	q0, q0, [sp, #464]
005309894 	stp	q0, q0, [sp, #496]
005309898 	bl	#-7086836 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530989c 	tbz	w0, #0, #48 ; -> 0x53098cc 
0053098a0 	mov	w0, #6742
0053098a4 	mov	x1, xzr
0053098a8 	bl	#-7086672 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0053098ac 	cbz	x0, #556 ; -> 0x5309ad8 
0053098b0 	mov	x1, x19
0053098b4 	mov	x2, xzr
0053098b8 	add	sp, sp, #544
0053098bc 	ldp	x20, x19, [sp, #32]
0053098c0 	ldp	x29, x30, [sp, #16]
0053098c4 	ldr	d8, [sp], #48
0053098c8 	b	#-7910312 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0053098cc 	add	x8, sp, #392
0053098d0 	mov	x0, x19
0053098d4 	bl	#-14060 ; -> 0x53061e8 SkillData::get_MaxAttackCountResult
0053098d8 	add	x0, sp, #392
0053098dc 	mov	x1, xzr
0053098e0 	bl	#-8092600 ; -> 0x4b51d28 SilentFloat::op_Implicit
0053098e4 	fmov	s8, s0
0053098e8 	ldp	q0, q1, [x19, #656]
0053098ec 	ldr	q2, [x19, #688]
0053098f0 	add	x0, sp, #336
0053098f4 	mov	x1, xzr
0053098f8 	stp	q0, q1, [sp, #336]
0053098fc 	str	q2, [sp, #368]
005309900 	bl	#-12739572 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
005309904 	mov	w8, #2139095040
005309908 	fcvtzs	w9, s8
00530990c 	fcvtzs	w10, s0
005309910 	fmov	s1, w8
005309914 	mov	w8, #-2147483648
005309918 	fcmp	s8, s1
00530991c 	csel	w9, w8, w9, eq
005309920 	fcmp	s0, s1
005309924 	csel	w8, w8, w10, eq
005309928 	cmp	w9, w8
00530992c 	b.pl	#68 ; -> 0x5309970 
005309930 	add	x8, sp, #464
005309934 	mov	x0, x19
005309938 	bl	#-14160 ; -> 0x53061e8 SkillData::get_MaxAttackCountResult
00530993c 	add	x0, sp, #464
005309940 	mov	x1, xzr
005309944 	bl	#-8094288 ; -> 0x4b516f4 SilentFloat::get_Value
005309948 	add	x8, sp, #288
00530994c 	mov	x0, xzr
005309950 	bl	#-12769720 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
005309954 	ldp	q0, q1, [sp, #288]
005309958 	add	x0, x19, #656
00530995c 	ldr	q2, [sp, #320]
005309960 	mov	x1, xzr
005309964 	stp	q0, q1, [x19, #656]
005309968 	str	q2, [x19, #688]
00530996c 	bl	#-14126952 ; -> 0x4590a04 
005309970 	ldr	x8, [x19, #40]
005309974 	cbz	x8, #356 ; -> 0x5309ad8 
005309978 	ldp	q0, q1, [x19, #656]
00530997c 	add	x0, sp, #240
005309980 	ldr	q2, [x19, #688]
005309984 	ldr	x20, [x8, #112]
005309988 	mov	x1, xzr
00530998c 	stp	q0, q1, [sp, #240]
005309990 	str	q2, [sp, #272]
005309994 	bl	#-12739720 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
005309998 	add	x8, sp, #168
00530999c 	mov	x0, x19
0053099a0 	fmov	s8, s0
0053099a4 	bl	#-14268 ; -> 0x53061e8 SkillData::get_MaxAttackCountResult
0053099a8 	add	x0, sp, #168
0053099ac 	mov	x1, xzr
0053099b0 	bl	#-8092808 ; -> 0x4b51d28 SilentFloat::op_Implicit
0053099b4 	cbz	x20, #292 ; -> 0x5309ad8 
0053099b8 	fdiv	s0, s8, s0
0053099bc 	fmov	s1, #1.00000000
0053099c0 	mov	x0, x20
0053099c4 	mov	x1, xzr
0053099c8 	fsub	s0, s1, s0
0053099cc 	bl	#75609552 ; -> 0x9b24f9c UnityEngine.UI.Image::set_fillAmount
0053099d0 	ldr	x8, [x19, #40]
0053099d4 	cbz	x8, #260 ; -> 0x5309ad8 
0053099d8 	ldr	x20, [x8, #120]
0053099dc 	add	x8, sp, #96
0053099e0 	mov	x0, x19
0053099e4 	bl	#-14332 ; -> 0x53061e8 SkillData::get_MaxAttackCountResult
0053099e8 	add	x0, sp, #96
0053099ec 	mov	x1, xzr
0053099f0 	bl	#-8092872 ; -> 0x4b51d28 SilentFloat::op_Implicit
0053099f4 	fmov	s8, s0
0053099f8 	ldp	q0, q1, [x19, #656]
0053099fc 	ldr	q2, [x19, #688]
005309a00 	add	x0, sp, #48
005309a04 	mov	x1, xzr
005309a08 	stp	q0, q1, [sp, #48]
005309a0c 	str	q2, [sp, #80]
005309a10 	bl	#-12739844 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
005309a14 	mov	w8, #2139095040
005309a18 	fcvtzs	w9, s8
005309a1c 	fcvtzs	w10, s0
005309a20 	fmov	s1, w8
005309a24 	mov	w8, #-2147483648
005309a28 	add	x0, sp, #556
005309a2c 	mov	x1, xzr
005309a30 	fcmp	s8, s1
005309a34 	csel	w9, w8, w9, eq
005309a38 	fcmp	s0, s1
005309a3c 	csel	w8, w8, w10, eq
005309a40 	sub	w8, w9, w8
005309a44 	str	w8, [sp, #556]
005309a48 	bl	#62303388 ; -> 0x8e746e4 System.Int32::ToString
005309a4c 	cbz	x20, #140 ; -> 0x5309ad8 
005309a50 	ldr	x8, [x20]
005309a54 	mov	x1, x0
005309a58 	mov	x0, x20
005309a5c 	ldr	x9, [x8, #1512]
005309a60 	ldr	x2, [x8, #1520]
005309a64 	blr	x9
005309a68 	ldp	q0, q1, [x19, #656]
005309a6c 	mov	x0, sp
005309a70 	ldr	q2, [x19, #688]
005309a74 	mov	x1, xzr
005309a78 	stp	q0, q1, [sp]
005309a7c 	str	q2, [sp, #32]
005309a80 	bl	#-12739956 ; -> 0x46e350c Liapp.SecureVariable.LiappSecureFloat::op_Implicit
005309a84 	fcmp	s0, #0.0
005309a88 	b.hi	#60 ; -> 0x5309ac4 
005309a8c 	ldrb	w8, [x19, #56]
005309a90 	cbnz	w8, #52 ; -> 0x5309ac4 
005309a94 	ldr	x8, [x19, #40]
005309a98 	cbz	x8, #64 ; -> 0x5309ad8 
005309a9c 	ldr	x0, [x8, #104]
005309aa0 	cbz	x0, #56 ; -> 0x5309ad8 
005309aa4 	mov	w1, wzr
005309aa8 	mov	x2, xzr
005309aac 	bl	#74424616 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
005309ab0 	ldr	x0, [x19, #40]
005309ab4 	mov	w8, #1
005309ab8 	strb	w8, [x19, #56]
005309abc 	cbz	x0, #28 ; -> 0x5309ad8 
005309ac0 	bl	#-11916 ; -> 0x5306c34 SkillEquipSlot::SkillUsingCheck
005309ac4 	add	sp, sp, #544
005309ac8 	ldp	x20, x19, [sp, #32]
005309acc 	ldp	x29, x30, [sp, #16]
005309ad0 	ldr	d8, [sp], #48
005309ad4 	ret
005309ad8 	bl	#-14126540 ; -> 0x4590d0c 
