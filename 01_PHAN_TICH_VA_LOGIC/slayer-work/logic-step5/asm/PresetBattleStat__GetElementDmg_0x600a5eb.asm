00525f3b8 	str	x30, [sp, #-32]!
00525f3bc 	stp	x20, x19, [sp, #16]
00525f3c0 	mov	w20, w1
00525f3c4 	mov	x19, x0
00525f3c8 	mov	w0, #31576
00525f3cc 	mov	x1, xzr
00525f3d0 	bl	#-6389292 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00525f3d4 	tbz	w0, #0, #44 ; -> 0x525f400 
00525f3d8 	mov	w0, #31576
00525f3dc 	mov	x1, xzr
00525f3e0 	bl	#-6389128 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00525f3e4 	cbz	x0, #112 ; -> 0x525f454 
00525f3e8 	mov	x1, x19
00525f3ec 	mov	w2, w20
00525f3f0 	mov	x3, xzr
00525f3f4 	ldp	x20, x19, [sp, #16]
00525f3f8 	ldr	x30, [sp], #32
00525f3fc 	b	#-6799800 ; -> 0x4be3244 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1969
00525f400 	movi	d0, #0000000000000000
00525f404 	cmp	w20, #2
00525f408 	b.gt	#28 ; -> 0x525f424 
00525f40c 	cmp	w20, #1
00525f410 	b.eq	#44 ; -> 0x525f43c 
00525f414 	cmp	w20, #2
00525f418 	b.ne	#48 ; -> 0x525f448 
00525f41c 	ldr	s0, [x19, #116]
00525f420 	b	#40 ; -> 0x525f448 
00525f424 	cmp	w20, #3
00525f428 	b.eq	#28 ; -> 0x525f444 
00525f42c 	cmp	w20, #4
00525f430 	b.ne	#24 ; -> 0x525f448 
00525f434 	ldr	s0, [x19, #124]
00525f438 	b	#16 ; -> 0x525f448 
00525f43c 	ldr	s0, [x19, #112]
00525f440 	b	#8 ; -> 0x525f448 
00525f444 	ldr	s0, [x19, #120]
00525f448 	ldp	x20, x19, [sp, #16]
00525f44c 	ldr	x30, [sp], #32
00525f450 	ret
00525f454 	bl	#-13428552 ; -> 0x4590d0c 
