004e47d28 	stp	x30, x19, [sp, #-16]!
004e47d2c 	mov	x19, x0
004e47d30 	mov	w0, #30227
004e47d34 	mov	x1, xzr
004e47d38 	bl	#-2099092 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e47d3c 	tbz	w0, #0, #36 ; -> 0x4e47d60 
004e47d40 	mov	w0, #30227
004e47d44 	mov	x1, xzr
004e47d48 	bl	#-2098928 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e47d4c 	cbz	x0, #48 ; -> 0x4e47d7c 
004e47d50 	mov	x1, x19
004e47d54 	mov	x2, xzr
004e47d58 	ldp	x30, x19, [sp], #16
004e47d5c 	b	#-2922556 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e47d60 	mov	x0, x19
004e47d64 	bl	#35996 ; -> 0x4e50a00 GameManager::StageFill_Coroutine
004e47d68 	mov	x1, x0
004e47d6c 	mov	x0, x19
004e47d70 	mov	x2, xzr
004e47d74 	ldp	x30, x19, [sp], #16
004e47d78 	b	#79421060 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004e47d7c 	bl	#-9138288 ; -> 0x4590d0c 
