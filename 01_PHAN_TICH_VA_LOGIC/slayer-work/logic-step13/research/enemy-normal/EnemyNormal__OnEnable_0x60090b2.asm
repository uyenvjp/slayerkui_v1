0050f91a0 	stp	x30, x19, [sp, #-16]!
0050f91a4 	mov	x19, x0
0050f91a8 	mov	w0, #38658
0050f91ac 	mov	x1, xzr
0050f91b0 	bl	#-4922380 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050f91b4 	tbz	w0, #0, #36 ; -> 0x50f91d8 
0050f91b8 	mov	w0, #38658
0050f91bc 	mov	x1, xzr
0050f91c0 	bl	#-4922216 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050f91c4 	cbz	x0, #36 ; -> 0x50f91e8 
0050f91c8 	mov	x1, x19
0050f91cc 	mov	x2, xzr
0050f91d0 	ldp	x30, x19, [sp], #16
0050f91d4 	b	#-5745844 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050f91d8 	mov	x0, x19
0050f91dc 	mov	x1, xzr
0050f91e0 	ldp	x30, x19, [sp], #16
0050f91e4 	b	#-279260 ; -> 0x50b4f08 EnemyBase::OnEnable
0050f91e8 	bl	#-11961564 ; -> 0x4590d0c 
