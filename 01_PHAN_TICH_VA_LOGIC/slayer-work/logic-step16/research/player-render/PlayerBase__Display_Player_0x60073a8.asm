004ef4744 	str	x30, [sp, #-32]!
004ef4748 	stp	x20, x19, [sp, #16]
004ef474c 	mov	w19, w1
004ef4750 	mov	x20, x0
004ef4754 	mov	w0, #8122
004ef4758 	mov	x1, xzr
004ef475c 	bl	#-2806200 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef4760 	tbz	w0, #0, #44 ; -> 0x4ef478c 
004ef4764 	mov	w0, #8122
004ef4768 	mov	x1, xzr
004ef476c 	bl	#-2806036 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef4770 	cbz	x0, #192 ; -> 0x4ef4830 
004ef4774 	and	w2, w19, #0x1
004ef4778 	mov	x1, x20
004ef477c 	mov	x3, xzr
004ef4780 	ldp	x20, x19, [sp, #16]
004ef4784 	ldr	x30, [sp], #32
004ef4788 	b	#-3624592 ; -> 0x4b7f8f8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_26
004ef478c 	ldr	x0, [x20, #120]
004ef4790 	cbz	x0, #160 ; -> 0x4ef4830 
004ef4794 	mov	x1, xzr
004ef4798 	bl	#78692120 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ef479c 	cbz	x0, #148 ; -> 0x4ef4830 
004ef47a0 	and	w1, w19, #0x1
004ef47a4 	mov	x2, xzr
004ef47a8 	bl	#78705708 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ef47ac 	ldr	x0, [x20, #368]
004ef47b0 	cbz	x0, #128 ; -> 0x4ef4830 
004ef47b4 	and	w1, w19, #0x1
004ef47b8 	mov	x2, xzr
004ef47bc 	bl	#78705688 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ef47c0 	ldr	x0, [x20, #344]
004ef47c4 	cbz	x0, #108 ; -> 0x4ef4830 
004ef47c8 	mov	x1, xzr
004ef47cc 	bl	#78692068 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ef47d0 	cbz	x0, #96 ; -> 0x4ef4830 
004ef47d4 	and	w1, w19, #0x1
004ef47d8 	mov	x2, xzr
004ef47dc 	bl	#78705656 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ef47e0 	ldr	x0, [x20, #2472]
004ef47e4 	cbz	x0, #76 ; -> 0x4ef4830 
004ef47e8 	mov	x1, xzr
004ef47ec 	bl	#78708912 ; -> 0x9a0489c UnityEngine.GameObject::get_gameObject
004ef47f0 	cbz	x0, #64 ; -> 0x4ef4830 
004ef47f4 	and	w1, w19, #0x1
004ef47f8 	mov	x2, xzr
004ef47fc 	bl	#78705624 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ef4800 	ldrb	w8, [x20, #3008]
004ef4804 	cbz	w8, #32 ; -> 0x4ef4824 
004ef4808 	ldr	x0, [x20, #2976]
004ef480c 	cbz	x0, #36 ; -> 0x4ef4830 
004ef4810 	and	w1, w19, #0x1
004ef4814 	ldp	x20, x19, [sp, #16]
004ef4818 	mov	x2, xzr
004ef481c 	ldr	x30, [sp], #32
004ef4820 	b	#1004340 ; -> 0x4fe9b54 RidingObject::Display_RidingObject
004ef4824 	ldp	x20, x19, [sp, #16]
004ef4828 	ldr	x30, [sp], #32
004ef482c 	ret
004ef4830 	bl	#-9845540 ; -> 0x4590d0c 
