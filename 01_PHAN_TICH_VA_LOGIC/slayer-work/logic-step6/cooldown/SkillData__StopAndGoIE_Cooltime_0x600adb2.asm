005309c00 	str	x30, [sp, #-32]!
005309c04 	stp	x20, x19, [sp, #16]
005309c08 	mov	x20, x1
005309c0c 	mov	x19, x0
005309c10 	mov	w0, #32947
005309c14 	mov	x1, xzr
005309c18 	bl	#-7087732 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005309c1c 	tbz	w0, #0, #44 ; -> 0x5309c48 
005309c20 	mov	w0, #32947
005309c24 	mov	x1, xzr
005309c28 	bl	#-7087568 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005309c2c 	cbz	x0, #88 ; -> 0x5309c84 
005309c30 	mov	x1, x19
005309c34 	mov	x2, x20
005309c38 	mov	x3, xzr
005309c3c 	ldp	x20, x19, [sp, #16]
005309c40 	ldr	x30, [sp], #32
005309c44 	b	#-7910448 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
005309c48 	ldr	x1, [x19, #968]
005309c4c 	cbz	x1, #16 ; -> 0x5309c5c 
005309c50 	mov	x0, x19
005309c54 	mov	x2, xzr
005309c58 	bl	#74432724 ; -> 0x9a05d2c UnityEngine.MonoBehaviour::StopCoroutine
005309c5c 	add	x0, x19, #968
005309c60 	mov	x1, x20
005309c64 	str	x20, [x19, #968]
005309c68 	bl	#-14127716 ; -> 0x4590a04 
005309c6c 	ldr	x1, [x19, #968]
005309c70 	mov	x0, x19
005309c74 	mov	x2, xzr
005309c78 	ldp	x20, x19, [sp, #16]
005309c7c 	ldr	x30, [sp], #32
005309c80 	b	#74432380 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
005309c84 	bl	#-14126968 ; -> 0x4590d0c 
