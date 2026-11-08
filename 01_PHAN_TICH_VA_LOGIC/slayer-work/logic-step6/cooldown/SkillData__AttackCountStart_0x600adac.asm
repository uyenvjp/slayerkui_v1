005309668 	stp	x30, x19, [sp, #-16]!
00530966c 	mov	x19, x0
005309670 	mov	w0, #32958
005309674 	mov	x1, xzr
005309678 	bl	#-7086292 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00530967c 	tbz	w0, #0, #36 ; -> 0x53096a0 
005309680 	mov	w0, #32958
005309684 	mov	x1, xzr
005309688 	bl	#-7086128 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00530968c 	cbz	x0, #72 ; -> 0x53096d4 
005309690 	mov	x1, x19
005309694 	mov	x2, xzr
005309698 	ldp	x30, x19, [sp], #16
00530969c 	b	#-7909756 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0053096a0 	ldr	x8, [x19, #40]
0053096a4 	cbz	x8, #48 ; -> 0x53096d4 
0053096a8 	ldr	x0, [x8, #104]
0053096ac 	cbz	x0, #40 ; -> 0x53096d4 
0053096b0 	mov	w1, #1
0053096b4 	mov	x2, xzr
0053096b8 	bl	#74425628 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
0053096bc 	ldr	x8, [x19]
0053096c0 	mov	x0, x19
0053096c4 	ldr	x1, [x8, #544]
0053096c8 	ldr	x2, [x8, #536]
0053096cc 	ldp	x30, x19, [sp], #16
0053096d0 	br	x2
0053096d4 	bl	#-14125512 ; -> 0x4590d0c 
