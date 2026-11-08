005309588 	sub	sp, sp, #144
00530958c 	stp	x30, x19, [sp, #128]
005309590 	movi	v0.2d, #0000000000000000
005309594 	mov	x19, x0
005309598 	mov	w0, #37541
00530959c 	mov	x1, xzr
0053095a0 	str	xzr, [sp, #112]
0053095a4 	stp	q0, q0, [sp, #48]
0053095a8 	stp	q0, q0, [sp, #80]
0053095ac 	bl	#-7086088 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0053095b0 	tbz	w0, #0, #40 ; -> 0x53095d8 
0053095b4 	mov	w0, #37541
0053095b8 	mov	x1, xzr
0053095bc 	bl	#-7085924 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0053095c0 	cbz	x0, #164 ; -> 0x5309664 
0053095c4 	mov	x1, x19
0053095c8 	ldp	x30, x19, [sp, #128]
0053095cc 	mov	x2, xzr
0053095d0 	add	sp, sp, #144
0053095d4 	b	#-7909556 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0053095d8 	ldr	x0, [x19, #40]
0053095dc 	strb	wzr, [x19, #56]
0053095e0 	cbz	x0, #132 ; -> 0x5309664 
0053095e4 	bl	#-10672 ; -> 0x5306c34 SkillEquipSlot::SkillUsingCheck
0053095e8 	add	x8, sp, #48
0053095ec 	mov	x0, x19
0053095f0 	bl	#-13320 ; -> 0x53061e8 SkillData::get_MaxAttackCountResult
0053095f4 	add	x0, sp, #48
0053095f8 	mov	x1, xzr
0053095fc 	bl	#-8093448 ; -> 0x4b516f4 SilentFloat::get_Value
005309600 	mov	x8, sp
005309604 	mov	x0, xzr
005309608 	bl	#-12768880 ; -> 0x46dbf98 Liapp.SecureVariable.LiappSecureFloat::op_Implicit
00530960c 	ldp	q0, q1, [sp]
005309610 	add	x0, x19, #656
005309614 	ldr	q2, [sp, #32]
005309618 	mov	x1, xzr
00530961c 	stp	q0, q1, [x19, #656]
005309620 	str	q2, [x19, #688]
005309624 	bl	#-14126112 ; -> 0x4590a04 
005309628 	ldr	x8, [x19, #40]
00530962c 	cbz	x8, #56 ; -> 0x5309664 
005309630 	ldr	x0, [x8, #104]
005309634 	cbz	x0, #48 ; -> 0x5309664 
005309638 	mov	w1, #1
00530963c 	mov	x2, xzr
005309640 	bl	#74425748 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
005309644 	ldr	x8, [x19]
005309648 	mov	x0, x19
00530964c 	ldr	x9, [x8, #536]
005309650 	ldr	x1, [x8, #544]
005309654 	blr	x9
005309658 	ldp	x30, x19, [sp, #128]
00530965c 	add	sp, sp, #144
005309660 	ret
005309664 	bl	#-14125400 ; -> 0x4590d0c 
