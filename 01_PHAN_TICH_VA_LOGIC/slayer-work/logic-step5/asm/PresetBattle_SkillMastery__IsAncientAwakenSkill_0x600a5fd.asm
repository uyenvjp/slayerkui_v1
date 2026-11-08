0052602c8 	str	x30, [sp, #-32]!
0052602cc 	stp	x20, x19, [sp, #16]
0052602d0 	mov	w19, w1
0052602d4 	mov	x20, x0
0052602d8 	mov	w0, #6836
0052602dc 	mov	x1, xzr
0052602e0 	bl	#-6393148 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0052602e4 	tbz	w0, #0, #44 ; -> 0x5260310 
0052602e8 	mov	w0, #6836
0052602ec 	mov	x1, xzr
0052602f0 	bl	#-6392984 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0052602f4 	cbz	x0, #68 ; -> 0x5260338 
0052602f8 	mov	x1, x20
0052602fc 	mov	w2, w19
005260300 	mov	x3, xzr
005260304 	ldp	x20, x19, [sp, #16]
005260308 	ldr	x30, [sp], #32
00526030c 	b	#-7009944 ; -> 0x4bb0c74 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_995
005260310 	mov	w0, wzr
005260314 	cbz	w19, #24 ; -> 0x526032c 
005260318 	ldrb	w8, [x20, #185]
00526031c 	cbz	w8, #16 ; -> 0x526032c 
005260320 	ldr	w8, [x20, #180]
005260324 	cmp	w8, w19
005260328 	cset	w0, eq
00526032c 	ldp	x20, x19, [sp, #16]
005260330 	ldr	x30, [sp], #32
005260334 	ret
005260338 	bl	#-13432364 ; -> 0x4590d0c 
