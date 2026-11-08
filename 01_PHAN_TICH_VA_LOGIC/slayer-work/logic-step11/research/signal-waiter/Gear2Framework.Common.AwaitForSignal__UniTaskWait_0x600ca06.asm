00474600c 	sub	sp, sp, #80
004746010 	stp	x30, x21, [sp, #48]
004746014 	stp	x20, x19, [sp, #64]
004746018 	adrp	x20, #105414656 ; -> 0xabce000 
00474601c 	mov	x19, x0
004746020 	ldrb	w8, [x20, #3444]
004746024 	tbnz	w8, #0, #24 ; -> 0x474603c 
004746028 	adrp	x0, #97144832 ; -> 0xa3eb000 
00474602c 	ldr	x0, [x0, #544]
004746030 	bl	#-1791440 ; -> 0x4590a60 
004746034 	mov	w8, #1
004746038 	strb	w8, [x20, #3444]
00474603c 	movi	v0.2d, #0000000000000000
004746040 	mov	w0, #2439
004746044 	mov	x1, xzr
004746048 	stp	q0, q0, [sp, #16]
00474604c 	str	q0, [sp]
004746050 	bl	#5248340 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004746054 	tbz	w0, #0, #44 ; -> 0x4746080 
004746058 	mov	w0, #2439
00474605c 	mov	x1, xzr
004746060 	bl	#5248504 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004746064 	cbz	x0, #132 ; -> 0x47460e8 
004746068 	mov	x1, x19
00474606c 	ldp	x20, x19, [sp, #64]
004746070 	ldp	x30, x21, [sp, #48]
004746074 	mov	x2, xzr
004746078 	add	sp, sp, #80
00474607c 	b	#4433720 ; -> 0x4b807b4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_47
004746080 	adrp	x21, #97144832 ; -> 0xa3eb000 
004746084 	mov	x20, sp
004746088 	mov	x1, xzr
00474608c 	ldr	x21, [x21, #544]
004746090 	orr	x0, x20, #0x8
004746094 	stp	xzr, xzr, [sp, #8]
004746098 	bl	#-1791636 ; -> 0x4590a04 
00474609c 	add	x0, x20, #24
0047460a0 	mov	x1, x19
0047460a4 	str	x19, [sp, #24]
0047460a8 	bl	#-1791652 ; -> 0x4590a04 
0047460ac 	ldr	x0, [x21]
0047460b0 	mov	w9, #-1
0047460b4 	str	w9, [sp]
0047460b8 	ldr	x8, [x0, #56]
0047460bc 	cbnz	x8, #8 ; -> 0x47460c4 
0047460c0 	bl	#-1560892 ; -> 0x45c8f84 
0047460c4 	mov	x0, sp
0047460c8 	bl	#44 ; -> 0x47460f4 Gear2Framework.Common.AwaitForSignal+<UniTaskWait>d__1::MoveNext
0047460cc 	orr	x0, x20, #0x8
0047460d0 	mov	x1, xzr
0047460d4 	bl	#-234204 ; -> 0x470cdf8 
0047460d8 	ldp	x20, x19, [sp, #64]
0047460dc 	ldp	x30, x21, [sp, #48]
0047460e0 	add	sp, sp, #80
0047460e4 	ret
0047460e8 	bl	#-1790940 ; -> 0x4590d0c 
