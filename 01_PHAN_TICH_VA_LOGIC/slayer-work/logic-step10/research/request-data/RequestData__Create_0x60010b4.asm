00481e4c4 	stp	x30, x23, [sp, #-48]!
00481e4c8 	stp	x22, x21, [sp, #16]
00481e4cc 	stp	x20, x19, [sp, #32]
00481e4d0 	adrp	x21, #104534016 ; -> 0xabcf000 
00481e4d4 	mov	x20, x1
00481e4d8 	mov	w19, w0
00481e4dc 	ldrb	w8, [x21, #1123]
00481e4e0 	tbnz	w8, #0, #36 ; -> 0x481e504 
00481e4e4 	adrp	x0, #96284672 ; -> 0xa3f1000 
00481e4e8 	ldr	x0, [x0, #3448]
00481e4ec 	bl	#-2677388 ; -> 0x4590a60 
00481e4f0 	adrp	x0, #96284672 ; -> 0xa3f1000 
00481e4f4 	ldr	x0, [x0, #3456]
00481e4f8 	bl	#-2677400 ; -> 0x4590a60 
00481e4fc 	mov	w8, #1
00481e500 	strb	w8, [x21, #1123]
00481e504 	mov	w0, #980
00481e508 	mov	x1, xzr
00481e50c 	bl	#4362392 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00481e510 	tbz	w0, #0, #48 ; -> 0x481e540 
00481e514 	mov	w0, #980
00481e518 	mov	x1, xzr
00481e51c 	bl	#4362556 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00481e520 	cbz	x0, #172 ; -> 0x481e5cc 
00481e524 	mov	w1, w19
00481e528 	mov	x2, x20
00481e52c 	mov	x3, xzr
00481e530 	ldp	x20, x19, [sp, #32]
00481e534 	ldp	x22, x21, [sp, #16]
00481e538 	ldp	x30, x23, [sp], #48
00481e53c 	b	#3558860 ; -> 0x4b83308 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_101
00481e540 	adrp	x23, #96284672 ; -> 0xa3f1000 
00481e544 	ldr	x23, [x23, #3456]
00481e548 	ldr	x0, [x23]
00481e54c 	bl	#-2676816 ; -> 0x4590cfc 
00481e550 	mov	x1, xzr
00481e554 	mov	x21, x0
00481e558 	bl	#74046672 ; -> 0x8ebc228 System.Object::.ctor
00481e55c 	cbz	x21, #112 ; -> 0x481e5cc 
00481e560 	mov	x22, x21
00481e564 	mov	x1, x20
00481e568 	str	x20, [x22, #16]!
00481e56c 	mov	x0, x22
00481e570 	bl	#-2677612 ; -> 0x4590a04 
00481e574 	ldr	x0, [x23]
00481e578 	str	w19, [x22, #8]
00481e57c 	ldr	w8, [x0, #228]
00481e580 	cbnz	w8, #12 ; -> 0x481e58c 
00481e584 	bl	#-2677156 ; -> 0x4590be0 
00481e588 	ldr	x0, [x23]
00481e58c 	ldr	x8, [x0, #184]
00481e590 	ldr	x0, [x8]
00481e594 	cbz	x0, #56 ; -> 0x481e5cc 
00481e598 	adrp	x8, #96284672 ; -> 0xa3f1000 
00481e59c 	mov	w1, w19
00481e5a0 	ldr	x8, [x8, #3448]
00481e5a4 	ldr	x2, [x8]
00481e5a8 	bl	#33087160 ; -> 0x67ac460 
00481e5ac 	tbz	w0, #0, #12 ; -> 0x481e5b8 
00481e5b0 	mov	w8, #1
00481e5b4 	strb	w8, [x21, #28]
00481e5b8 	mov	x0, x21
00481e5bc 	ldp	x20, x19, [sp, #32]
00481e5c0 	ldp	x22, x21, [sp, #16]
00481e5c4 	ldp	x30, x23, [sp], #48
00481e5c8 	ret
00481e5cc 	bl	#-2676928 ; -> 0x4590d0c 
