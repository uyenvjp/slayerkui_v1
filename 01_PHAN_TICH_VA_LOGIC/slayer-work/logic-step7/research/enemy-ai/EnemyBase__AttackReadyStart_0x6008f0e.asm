0050b5fe0 	stp	x30, x19, [sp, #-16]!
0050b5fe4 	mov	x19, x0
0050b5fe8 	mov	w0, #30978
0050b5fec 	mov	x1, xzr
0050b5ff0 	bl	#-4647500 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b5ff4 	tbz	w0, #0, #36 ; -> 0x50b6018 
0050b5ff8 	mov	w0, #30978
0050b5ffc 	mov	x1, xzr
0050b6000 	bl	#-4647336 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b6004 	cbz	x0, #72 ; -> 0x50b604c 
0050b6008 	mov	x1, x19
0050b600c 	mov	x2, xzr
0050b6010 	ldp	x30, x19, [sp], #16
0050b6014 	b	#-5470964 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050b6018 	ldr	x1, [x19, #424]
0050b601c 	cbz	x1, #16 ; -> 0x50b602c 
0050b6020 	mov	x0, x19
0050b6024 	mov	x2, xzr
0050b6028 	bl	#76872964 ; -> 0x9a05d2c UnityEngine.MonoBehaviour::StopCoroutine
0050b602c 	ldr	x1, [x19, #432]
0050b6030 	cbz	x1, #16 ; -> 0x50b6040 
0050b6034 	mov	x0, x19
0050b6038 	mov	x2, xzr
0050b603c 	bl	#76872944 ; -> 0x9a05d2c UnityEngine.MonoBehaviour::StopCoroutine
0050b6040 	mov	x0, x19
0050b6044 	ldp	x30, x19, [sp], #16
0050b6048 	b	#8 ; -> 0x50b6050 EnemyBase::AppearAction
0050b604c 	bl	#-11686720 ; -> 0x4590d0c 
