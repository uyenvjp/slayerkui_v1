00506f2bc 	stp	x30, x19, [sp, #-16]!
00506f2c0 	mov	x19, x0
00506f2c4 	mov	w0, #37470
00506f2c8 	mov	x1, xzr
00506f2cc 	bl	#-4357416 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00506f2d0 	tbz	w0, #0, #36 ; -> 0x506f2f4 
00506f2d4 	mov	w0, #37470
00506f2d8 	mov	x1, xzr
00506f2dc 	bl	#-4357252 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00506f2e0 	cbz	x0, #44 ; -> 0x506f30c 
00506f2e4 	mov	x1, x19
00506f2e8 	mov	x2, xzr
00506f2ec 	ldp	x30, x19, [sp], #16
00506f2f0 	b	#-5180880 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00506f2f4 	mov	x0, x19
00506f2f8 	bl	#7940 ; -> 0x50711fc DropObject::PassItem_FollowPlayer_Coroutine
00506f2fc 	mov	x1, x0
00506f300 	mov	x0, x19
00506f304 	ldp	x30, x19, [sp], #16
00506f308 	b	#7744 ; -> 0x5071148 DropObject::StopAndGoIE_FollowPlayer
00506f30c 	bl	#-11396608 ; -> 0x4590d0c 
