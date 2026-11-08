004d0981c 	stp	x30, x21, [sp, #-32]!
004d09820 	stp	x20, x19, [sp, #16]
004d09824 	mov	x20, x1
004d09828 	mov	x19, x0
004d0982c 	mov	w0, #26698
004d09830 	mov	x1, xzr
004d09834 	mov	w21, w2
004d09838 	bl	#-795284 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d0983c 	tbz	w0, #0, #48 ; -> 0x4d0986c 
004d09840 	mov	w0, #26698
004d09844 	mov	x1, xzr
004d09848 	bl	#-795120 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d0984c 	cbz	x0, #72 ; -> 0x4d09894 
004d09850 	mov	x1, x19
004d09854 	mov	x2, x20
004d09858 	and	w3, w21, #0x1
004d0985c 	ldp	x20, x19, [sp, #16]
004d09860 	mov	x4, xzr
004d09864 	ldp	x30, x21, [sp], #32
004d09868 	b	#-1570412 ; -> 0x4b8a1fc IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_225
004d0986c 	and	w2, w21, #0x1
004d09870 	mov	x0, x19
004d09874 	mov	x1, x20
004d09878 	bl	#32 ; -> 0x4d09898 EffectManager::SceneChange_Coroutine
004d0987c 	mov	x1, x0
004d09880 	mov	x0, x19
004d09884 	mov	x2, xzr
004d09888 	ldp	x20, x19, [sp, #16]
004d0988c 	ldp	x30, x21, [sp], #32
004d09890 	b	#80724844 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004d09894 	bl	#-7834504 ; -> 0x4590d0c 
