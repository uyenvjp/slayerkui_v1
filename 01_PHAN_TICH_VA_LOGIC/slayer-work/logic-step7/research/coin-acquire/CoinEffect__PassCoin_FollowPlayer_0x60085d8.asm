005019e0c 	stp	x30, x19, [sp, #-16]!
005019e10 	mov	x19, x0
005019e14 	mov	w0, #36545
005019e18 	mov	x1, xzr
005019e1c 	bl	#-4008056 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
005019e20 	tbz	w0, #0, #36 ; -> 0x5019e44 
005019e24 	mov	w0, #36545
005019e28 	mov	x1, xzr
005019e2c 	bl	#-4007892 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
005019e30 	cbz	x0, #44 ; -> 0x5019e5c 
005019e34 	mov	x1, x19
005019e38 	mov	x2, xzr
005019e3c 	ldp	x30, x19, [sp], #16
005019e40 	b	#-4831520 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
005019e44 	mov	x0, x19
005019e48 	bl	#1552 ; -> 0x501a458 CoinEffect::PassCoin_FollowPlayer_Coroutine
005019e4c 	mov	x1, x0
005019e50 	mov	x0, x19
005019e54 	ldp	x30, x19, [sp], #16
005019e58 	b	#1356 ; -> 0x501a3a4 CoinEffect::StopAndGoIE_FollowPlayer
005019e5c 	bl	#-11047248 ; -> 0x4590d0c 
