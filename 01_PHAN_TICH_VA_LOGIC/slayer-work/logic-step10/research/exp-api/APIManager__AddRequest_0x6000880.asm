0050c1a44 	str	x30, [sp, #-48]!
0050c1a48 	stp	x22, x21, [sp, #16]
0050c1a4c 	stp	x20, x19, [sp, #32]
0050c1a50 	adrp	x22, #95506432 ; -> 0xabd6000 
0050c1a54 	mov	x19, x2
0050c1a58 	mov	x20, x1
0050c1a5c 	ldrb	w8, [x22, #796]
0050c1a60 	mov	w21, w0
0050c1a64 	tbnz	w8, #0, #48 ; -> 0x50c1a94 
0050c1a68 	adrp	x0, #87216128 ; -> 0xa3ee000 
0050c1a6c 	ldr	x0, [x0, #3648]
0050c1a70 	bl	#-11735056 ; -> 0x4590a60 
0050c1a74 	adrp	x0, #87498752 ; -> 0xa433000 
0050c1a78 	ldr	x0, [x0, #1824]
0050c1a7c 	bl	#-11735068 ; -> 0x4590a60 
0050c1a80 	adrp	x0, #87228416 ; -> 0xa3f1000 
0050c1a84 	ldr	x0, [x0, #3456]
0050c1a88 	bl	#-11735080 ; -> 0x4590a60 
0050c1a8c 	mov	w8, #1
0050c1a90 	strb	w8, [x22, #796]
0050c1a94 	mov	w0, #974
0050c1a98 	mov	x1, xzr
0050c1a9c 	bl	#-4695288 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c1aa0 	tbz	w0, #0, #52 ; -> 0x50c1ad4 
0050c1aa4 	mov	w0, #974
0050c1aa8 	mov	x1, xzr
0050c1aac 	bl	#-4695124 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c1ab0 	cbz	x0, #204 ; -> 0x50c1b7c 
0050c1ab4 	mov	w1, w21
0050c1ab8 	mov	x2, x20
0050c1abc 	mov	x3, x19
0050c1ac0 	ldp	x20, x19, [sp, #32]
0050c1ac4 	mov	x4, xzr
0050c1ac8 	ldp	x22, x21, [sp, #16]
0050c1acc 	ldr	x30, [sp], #48
0050c1ad0 	b	#-5498596 ; -> 0x4b833ec IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_102
0050c1ad4 	adrp	x22, #87228416 ; -> 0xa3f1000 
0050c1ad8 	cmp	w21, #115
0050c1adc 	ldr	x22, [x22, #3456]
0050c1ae0 	b.eq	#32 ; -> 0x50c1b00 
0050c1ae4 	adrp	x8, #87216128 ; -> 0xa3ee000 
0050c1ae8 	ldr	x8, [x8, #3648]
0050c1aec 	ldr	x0, [x8]
0050c1af0 	ldr	w8, [x0, #228]
0050c1af4 	cbnz	w8, #8 ; -> 0x50c1afc 
0050c1af8 	bl	#-11734808 ; -> 0x4590be0 
0050c1afc 	bl	#132 ; -> 0x50c1b80 APIManager::AcquireItems
0050c1b00 	ldr	x0, [x22]
0050c1b04 	ldr	w8, [x0, #228]
0050c1b08 	cbnz	w8, #8 ; -> 0x50c1b10 
0050c1b0c 	bl	#-11734828 ; -> 0x4590be0 
0050c1b10 	mov	w0, w21
0050c1b14 	mov	x1, x20
0050c1b18 	mov	x2, xzr
0050c1b1c 	bl	#-9057880 ; -> 0x481e4c4 RequestData::Create
0050c1b20 	cbz	x0, #92 ; -> 0x50c1b7c 
0050c1b24 	mov	x1, x19
0050c1b28 	mov	x20, x0
0050c1b2c 	str	x19, [x0, #32]!
0050c1b30 	bl	#-11735340 ; -> 0x4590a04 
0050c1b34 	adrp	x19, #87216128 ; -> 0xa3ee000 
0050c1b38 	ldr	x19, [x19, #3648]
0050c1b3c 	ldr	x0, [x19]
0050c1b40 	ldr	w8, [x0, #228]
0050c1b44 	cbnz	w8, #12 ; -> 0x50c1b50 
0050c1b48 	bl	#-11734888 ; -> 0x4590be0 
0050c1b4c 	ldr	x0, [x19]
0050c1b50 	ldr	x8, [x0, #184]
0050c1b54 	ldr	x0, [x8, #32]
0050c1b58 	cbz	x0, #36 ; -> 0x50c1b7c 
0050c1b5c 	adrp	x8, #87498752 ; -> 0xa433000 
0050c1b60 	mov	x1, x20
0050c1b64 	ldr	x8, [x8, #1824]
0050c1b68 	ldp	x20, x19, [sp, #32]
0050c1b6c 	ldp	x22, x21, [sp, #16]
0050c1b70 	ldr	x2, [x8]
0050c1b74 	ldr	x30, [sp], #48
0050c1b78 	b	#34109728 ; -> 0x7149498 
0050c1b7c 	bl	#-11734640 ; -> 0x4590d0c 
