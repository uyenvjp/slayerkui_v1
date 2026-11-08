0050e5d54 	str	x30, [sp, #-48]!
0050e5d58 	stp	x22, x21, [sp, #16]
0050e5d5c 	stp	x20, x19, [sp, #32]
0050e5d60 	adrp	x21, #95358976 ; -> 0xabd6000 
0050e5d64 	mov	x19, x1
0050e5d68 	mov	x20, x0
0050e5d6c 	ldrb	w8, [x21, #1129]
0050e5d70 	tbnz	w8, #0, #72 ; -> 0x50e5db8 
0050e5d74 	adrp	x0, #87359488 ; -> 0xa435000 
0050e5d78 	ldr	x0, [x0, #2296]
0050e5d7c 	bl	#-11883292 ; -> 0x4590a60 
0050e5d80 	adrp	x0, #87068672 ; -> 0xa3ee000 
0050e5d84 	ldr	x0, [x0, #3648]
0050e5d88 	bl	#-11883304 ; -> 0x4590a60 
0050e5d8c 	adrp	x0, #87359488 ; -> 0xa435000 
0050e5d90 	ldr	x0, [x0, #2304]
0050e5d94 	bl	#-11883316 ; -> 0x4590a60 
0050e5d98 	adrp	x0, #87359488 ; -> 0xa435000 
0050e5d9c 	ldr	x0, [x0, #2312]
0050e5da0 	bl	#-11883328 ; -> 0x4590a60 
0050e5da4 	adrp	x0, #87359488 ; -> 0xa435000 
0050e5da8 	ldr	x0, [x0, #2320]
0050e5dac 	bl	#-11883340 ; -> 0x4590a60 
0050e5db0 	mov	w8, #1
0050e5db4 	strb	w8, [x21, #1129]
0050e5db8 	mov	w0, #5620
0050e5dbc 	mov	x1, xzr
0050e5dc0 	bl	#-4843548 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050e5dc4 	tbz	w0, #0, #48 ; -> 0x50e5df4 
0050e5dc8 	mov	w0, #5620
0050e5dcc 	mov	x1, xzr
0050e5dd0 	bl	#-4843384 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050e5dd4 	cbz	x0, #204 ; -> 0x50e5ea0 
0050e5dd8 	mov	x1, x20
0050e5ddc 	mov	x2, x19
0050e5de0 	mov	x3, xzr
0050e5de4 	ldp	x20, x19, [sp, #32]
0050e5de8 	ldp	x22, x21, [sp, #16]
0050e5dec 	ldr	x30, [sp], #48
0050e5df0 	b	#-5666268 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
0050e5df4 	adrp	x8, #87359488 ; -> 0xa435000 
0050e5df8 	ldr	x8, [x8, #2320]
0050e5dfc 	ldr	x0, [x8]
0050e5e00 	bl	#-11882756 ; -> 0x4590cfc 
0050e5e04 	mov	x1, xzr
0050e5e08 	mov	x22, x0
0050e5e0c 	bl	#-10299860 ; -> 0x4713438 APIManager+<>c__DisplayClass372_0::.ctor
0050e5e10 	cbz	x22, #144 ; -> 0x50e5ea0 
0050e5e14 	mov	x21, x22
0050e5e18 	mov	x1, x20
0050e5e1c 	str	x20, [x21, #16]!
0050e5e20 	mov	x0, x21
0050e5e24 	bl	#-11883552 ; -> 0x4590a04 
0050e5e28 	adrp	x8, #87359488 ; -> 0xa435000 
0050e5e2c 	ldr	x8, [x8, #2304]
0050e5e30 	ldr	x0, [x8]
0050e5e34 	bl	#-11882808 ; -> 0x4590cfc 
0050e5e38 	adrp	x8, #87359488 ; -> 0xa435000 
0050e5e3c 	mov	x1, x22
0050e5e40 	mov	x3, xzr
0050e5e44 	ldr	x8, [x8, #2312]
0050e5e48 	mov	x20, x0
0050e5e4c 	ldr	x2, [x8]
0050e5e50 	bl	#23380084 ; -> 0x6731ec4 
0050e5e54 	adrp	x8, #87068672 ; -> 0xa3ee000 
0050e5e58 	ldr	x8, [x8, #3648]
0050e5e5c 	ldr	x0, [x8]
0050e5e60 	ldr	w8, [x0, #228]
0050e5e64 	cbnz	w8, #8 ; -> 0x50e5e6c 
0050e5e68 	bl	#-11883144 ; -> 0x4590be0 
0050e5e6c 	adrp	x8, #87359488 ; -> 0xa435000 
0050e5e70 	mov	x0, x20
0050e5e74 	mov	x1, x19
0050e5e78 	ldr	x8, [x8, #2296]
0050e5e7c 	ldr	x2, [x8]
0050e5e80 	bl	#17657484 ; -> 0x61bcd0c 
0050e5e84 	ldr	x2, [x21]
0050e5e88 	ldp	x20, x19, [sp, #32]
0050e5e8c 	ldp	x22, x21, [sp, #16]
0050e5e90 	mov	x1, x0
0050e5e94 	mov	w0, #368
0050e5e98 	ldr	x30, [sp], #48
0050e5e9c 	b	#-148568 ; -> 0x50c1a44 APIManager::AddRequest
0050e5ea0 	bl	#-11882900 ; -> 0x4590d0c 
