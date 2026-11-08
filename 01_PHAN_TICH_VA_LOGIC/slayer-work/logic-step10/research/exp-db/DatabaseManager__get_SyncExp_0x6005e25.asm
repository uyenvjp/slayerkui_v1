004d403d0 	str	x30, [sp, #-32]!
004d403d4 	stp	x20, x19, [sp, #16]
004d403d8 	mov	x19, x0
004d403dc 	mov	w0, #3790
004d403e0 	mov	x1, xzr
004d403e4 	bl	#-1019456 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d403e8 	tbz	w0, #0, #40 ; -> 0x4d40410 
004d403ec 	mov	w0, #3790
004d403f0 	mov	x1, xzr
004d403f4 	bl	#-1019292 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d403f8 	cbz	x0, #112 ; -> 0x4d40468 
004d403fc 	mov	x1, x19
004d40400 	ldp	x20, x19, [sp, #16]
004d40404 	mov	x2, xzr
004d40408 	ldr	x30, [sp], #32
004d4040c 	b	#-1721396 ; -> 0x4b9bfd8 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_566
004d40410 	ldr	x20, [x19, #344]
004d40414 	add	x0, x19, #264
004d40418 	mov	x1, xzr
004d4041c 	bl	#-2028704 ; -> 0x4b50f7c SilentBigInt::ToString
004d40420 	cbz	x20, #72 ; -> 0x4d40468 
004d40424 	mov	x1, x0
004d40428 	mov	x0, x20
004d4042c 	mov	x2, xzr
004d40430 	bl	#63317556 ; -> 0x89a2a64 GrowSlayer.UserExp::set_Value
004d40434 	ldr	x20, [x19, #344]
004d40438 	add	x0, x19, #304
004d4043c 	mov	x1, xzr
004d40440 	bl	#-2028740 ; -> 0x4b50f7c SilentBigInt::ToString
004d40444 	cbz	x20, #36 ; -> 0x4d40468 
004d40448 	mov	x1, x0
004d4044c 	mov	x0, x20
004d40450 	mov	x2, xzr
004d40454 	bl	#63317652 ; -> 0x89a2ae8 GrowSlayer.UserExp::set_TotalValue
004d40458 	ldr	x0, [x19, #344]
004d4045c 	ldp	x20, x19, [sp, #16]
004d40460 	ldr	x30, [sp], #32
004d40464 	ret
004d40468 	bl	#-8058716 ; -> 0x4590d0c 
