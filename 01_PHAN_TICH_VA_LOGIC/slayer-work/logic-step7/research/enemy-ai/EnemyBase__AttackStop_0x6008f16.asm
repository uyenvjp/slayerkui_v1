0050b63b8 	stp	x30, x19, [sp, #-16]!
0050b63bc 	mov	x19, x0
0050b63c0 	mov	w0, #38484
0050b63c4 	mov	x1, xzr
0050b63c8 	bl	#-4648484 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b63cc 	tbz	w0, #0, #36 ; -> 0x50b63f0 
0050b63d0 	mov	w0, #38484
0050b63d4 	mov	x1, xzr
0050b63d8 	bl	#-4648320 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b63dc 	cbz	x0, #52 ; -> 0x50b6410 
0050b63e0 	mov	x1, x19
0050b63e4 	mov	x2, xzr
0050b63e8 	ldp	x30, x19, [sp], #16
0050b63ec 	b	#-5471948 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050b63f0 	ldr	x1, [x19, #432]
0050b63f4 	cbz	x1, #20 ; -> 0x50b6408 
0050b63f8 	mov	x0, x19
0050b63fc 	mov	x2, xzr
0050b6400 	ldp	x30, x19, [sp], #16
0050b6404 	b	#76871976 ; -> 0x9a05d2c UnityEngine.MonoBehaviour::StopCoroutine
0050b6408 	ldp	x30, x19, [sp], #16
0050b640c 	ret
0050b6410 	bl	#-11687684 ; -> 0x4590d0c 
