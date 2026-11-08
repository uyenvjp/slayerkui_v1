004e4f480 	stp	x30, x19, [sp, #-16]!
004e4f484 	mov	x19, x0
004e4f488 	mov	w0, #30926
004e4f48c 	mov	x1, xzr
004e4f490 	bl	#-2129644 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4f494 	tbz	w0, #0, #36 ; -> 0x4e4f4b8 
004e4f498 	mov	w0, #30926
004e4f49c 	mov	x1, xzr
004e4f4a0 	bl	#-2129480 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4f4a4 	cbz	x0, #128 ; -> 0x4e4f524 
004e4f4a8 	mov	x1, x19
004e4f4ac 	mov	x2, xzr
004e4f4b0 	ldp	x30, x19, [sp], #16
004e4f4b4 	b	#-2953108 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e4f4b8 	ldr	x0, [x19, #448]
004e4f4bc 	cbz	x0, #104 ; -> 0x4e4f524 
004e4f4c0 	mov	w1, wzr
004e4f4c4 	mov	x2, xzr
004e4f4c8 	bl	#79382284 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e4f4cc 	ldr	x0, [x19, #608]
004e4f4d0 	cbz	x0, #84 ; -> 0x4e4f524 
004e4f4d4 	mov	x1, xzr
004e4f4d8 	bl	#79368664 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004e4f4dc 	cbz	x0, #72 ; -> 0x4e4f524 
004e4f4e0 	mov	w1, wzr
004e4f4e4 	mov	x2, xzr
004e4f4e8 	bl	#79382252 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e4f4ec 	ldr	x0, [x19, #456]
004e4f4f0 	cbz	x0, #52 ; -> 0x4e4f524 
004e4f4f4 	mov	w1, wzr
004e4f4f8 	mov	x2, xzr
004e4f4fc 	bl	#79382232 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e4f500 	ldr	x0, [x19, #464]
004e4f504 	cbz	x0, #32 ; -> 0x4e4f524 
004e4f508 	mov	w1, wzr
004e4f50c 	mov	x2, xzr
004e4f510 	bl	#79382212 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e4f514 	mov	x0, x19
004e4f518 	mov	x1, xzr
004e4f51c 	ldp	x30, x19, [sp], #16
004e4f520 	b	#79391820 ; -> 0x9a0616c UnityEngine.MonoBehaviour::StopAllCoroutines
004e4f524 	bl	#-9168920 ; -> 0x4590d0c 
