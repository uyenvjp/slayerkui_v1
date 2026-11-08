0050c1248 	str	x30, [sp, #-32]!
0050c124c 	stp	x20, x19, [sp, #16]
0050c1250 	adrp	x20, #95506432 ; -> 0xabd6000 
0050c1254 	mov	w19, w0
0050c1258 	ldrb	w8, [x20, #782]
0050c125c 	tbnz	w8, #0, #24 ; -> 0x50c1274 
0050c1260 	adrp	x0, #87216128 ; -> 0xa3ee000 
0050c1264 	ldr	x0, [x0, #3648]
0050c1268 	bl	#-11733000 ; -> 0x4590a60 
0050c126c 	mov	w8, #1
0050c1270 	strb	w8, [x20, #782]
0050c1274 	mov	w0, #942
0050c1278 	mov	x1, xzr
0050c127c 	bl	#-4693208 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c1280 	tbz	w0, #0, #40 ; -> 0x50c12a8 
0050c1284 	mov	w0, #942
0050c1288 	mov	x1, xzr
0050c128c 	bl	#-4693044 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c1290 	cbz	x0, #76 ; -> 0x50c12dc 
0050c1294 	and	w1, w19, #0x1
0050c1298 	ldp	x20, x19, [sp, #16]
0050c129c 	mov	x2, xzr
0050c12a0 	ldr	x30, [sp], #32
0050c12a4 	b	#-5510548 ; -> 0x4b7fd10 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_32
0050c12a8 	adrp	x20, #87216128 ; -> 0xa3ee000 
0050c12ac 	and	w19, w19, #0x1
0050c12b0 	ldr	x20, [x20, #3648]
0050c12b4 	ldr	x0, [x20]
0050c12b8 	ldr	w8, [x0, #228]
0050c12bc 	cbnz	w8, #12 ; -> 0x50c12c8 
0050c12c0 	bl	#-11732704 ; -> 0x4590be0 
0050c12c4 	ldr	x0, [x20]
0050c12c8 	ldr	x8, [x0, #184]
0050c12cc 	strb	w19, [x8]
0050c12d0 	ldp	x20, x19, [sp, #16]
0050c12d4 	ldr	x30, [sp], #32
0050c12d8 	ret
0050c12dc 	bl	#-11732432 ; -> 0x4590d0c 
