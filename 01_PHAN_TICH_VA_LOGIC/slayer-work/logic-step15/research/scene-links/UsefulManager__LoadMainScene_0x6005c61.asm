004d23514 	stp	x30, x21, [sp, #-32]!
004d23518 	stp	x20, x19, [sp, #16]
004d2351c 	adrp	x21, #99291136 ; -> 0xabd4000 
004d23520 	mov	x20, x1
004d23524 	mov	x19, x0
004d23528 	ldrb	w8, [x21, #2549]
004d2352c 	tbnz	w8, #0, #36 ; -> 0x4d23550 
004d23530 	adrp	x0, #90988544 ; -> 0xa3e9000 
004d23534 	ldr	x0, [x0, #1384]
004d23538 	bl	#-7940824 ; -> 0x4590a60 
004d2353c 	adrp	x0, #90984448 ; -> 0xa3e8000 
004d23540 	ldr	x0, [x0, #2680]
004d23544 	bl	#-7940836 ; -> 0x4590a60 
004d23548 	mov	w8, #1
004d2354c 	strb	w8, [x21, #2549]
004d23550 	mov	w0, #26983
004d23554 	mov	x1, xzr
004d23558 	bl	#-901044 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d2355c 	tbz	w0, #0, #44 ; -> 0x4d23588 
004d23560 	mov	w0, #26983
004d23564 	mov	x1, xzr
004d23568 	bl	#-900880 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d2356c 	cbz	x0, #144 ; -> 0x4d235fc 
004d23570 	mov	x1, x19
004d23574 	mov	x2, x20
004d23578 	mov	x3, xzr
004d2357c 	ldp	x20, x19, [sp, #16]
004d23580 	ldp	x30, x21, [sp], #32
004d23584 	b	#-1723760 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004d23588 	adrp	x8, #90984448 ; -> 0xa3e8000 
004d2358c 	adrp	x21, #90988544 ; -> 0xa3e9000 
004d23590 	ldr	x8, [x8, #2680]
004d23594 	ldr	x0, [x8]
004d23598 	ldr	w8, [x0, #228]
004d2359c 	ldr	x21, [x21, #1384]
004d235a0 	cbnz	w8, #8 ; -> 0x4d235a8 
004d235a4 	bl	#-7940548 ; -> 0x4590be0 
004d235a8 	mov	x0, x20
004d235ac 	mov	x1, xzr
004d235b0 	bl	#80710252 ; -> 0x9a1c01c UnityEngine.SceneManagement.SceneManager::LoadScene
004d235b4 	mov	x0, x19
004d235b8 	mov	x1, x20
004d235bc 	bl	#-728 ; -> 0x4d232e4 UsefulManager::DelayBGM
004d235c0 	mov	x1, x0
004d235c4 	mov	x0, x19
004d235c8 	mov	x2, xzr
004d235cc 	bl	#80619056 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004d235d0 	ldr	x0, [x21]
004d235d4 	ldr	w8, [x0, #228]
004d235d8 	cbnz	w8, #12 ; -> 0x4d235e4 
004d235dc 	bl	#-7940604 ; -> 0x4590be0 
004d235e0 	ldr	x0, [x21]
004d235e4 	ldr	x8, [x0, #184]
004d235e8 	ldp	x20, x19, [sp, #16]
004d235ec 	mov	w9, #1
004d235f0 	strb	w9, [x8, #104]
004d235f4 	ldp	x30, x21, [sp], #32
004d235f8 	ret
004d235fc 	bl	#-7940336 ; -> 0x4590d0c 
