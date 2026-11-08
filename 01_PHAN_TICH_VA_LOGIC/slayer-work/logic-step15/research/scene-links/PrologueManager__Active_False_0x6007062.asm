004ea6bb0 	stp	x30, x19, [sp, #-16]!
004ea6bb4 	mov	x19, x0
004ea6bb8 	mov	w0, #32374
004ea6bbc 	mov	x1, xzr
004ea6bc0 	bl	#-2487836 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ea6bc4 	tbz	w0, #0, #36 ; -> 0x4ea6be8 
004ea6bc8 	mov	w0, #32374
004ea6bcc 	mov	x1, xzr
004ea6bd0 	bl	#-2487672 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ea6bd4 	cbz	x0, #52 ; -> 0x4ea6c08 
004ea6bd8 	mov	x1, x19
004ea6bdc 	mov	x2, xzr
004ea6be0 	ldp	x30, x19, [sp], #16
004ea6be4 	b	#-3311300 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ea6be8 	mov	x0, x19
004ea6bec 	mov	x1, xzr
004ea6bf0 	bl	#79010496 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ea6bf4 	cbz	x0, #20 ; -> 0x4ea6c08 
004ea6bf8 	mov	w1, wzr
004ea6bfc 	mov	x2, xzr
004ea6c00 	ldp	x30, x19, [sp], #16
004ea6c04 	b	#79024080 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ea6c08 	bl	#-9527036 ; -> 0x4590d0c 
