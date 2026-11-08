0053096d8 	sub	sp, sp, #112
0053096dc 	stp	x30, x19, [sp, #96]
0053096e0 	mov	x19, x0
0053096e4 	mov	w0, #6740
0053096e8 	mov	x1, xzr
0053096ec 	bl	#-7086408 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0053096f0 	tbz	w0, #0, #40 ; -> 0x5309718 
0053096f4 	mov	w0, #6740
0053096f8 	mov	x1, xzr
0053096fc 	bl	#-7086244 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005309700 	cbz	x0, #136 ; -> 0x5309788 
005309704 	mov	x1, x19
005309708 	ldp	x30, x19, [sp, #96]
00530970c 	mov	x2, xzr
005309710 	add	sp, sp, #112
005309714 	b	#-7909876 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
005309718 	ldrb	w8, [x19, #56]
00530971c 	cbnz	w8, #96 ; -> 0x530977c 
005309720 	mov	x0, x19
005309724 	bl	#-16276 ; -> 0x5305790 SkillData::get_SkillBanCheck
005309728 	tbnz	w0, #0, #84 ; -> 0x530977c 
00530972c 	ldp	q0, q1, [x19, #656]
005309730 	add	x8, sp, #48
005309734 	ldr	q2, [x19, #688]
005309738 	mov	x0, sp
00530973c 	mov	x1, xzr
005309740 	stp	q0, q1, [sp]
005309744 	str	q2, [sp, #32]
005309748 	bl	#-12739176 ; -> 0x46e34e0 Liapp.SecureVariable.LiappSecureFloat::op_Decrement
00530974c 	ldp	q0, q1, [sp, #48]
005309750 	add	x0, x19, #656
005309754 	ldr	q2, [sp, #80]
005309758 	mov	x1, xzr
00530975c 	stp	q0, q1, [x19, #656]
005309760 	str	q2, [x19, #688]
005309764 	bl	#-14126432 ; -> 0x4590a04 
005309768 	ldr	x8, [x19]
00530976c 	mov	x0, x19
005309770 	ldr	x9, [x8, #536]
005309774 	ldr	x1, [x8, #544]
005309778 	blr	x9
00530977c 	ldp	x30, x19, [sp, #96]
005309780 	add	sp, sp, #112
005309784 	ret
005309788 	bl	#-14125692 ; -> 0x4590d0c 
