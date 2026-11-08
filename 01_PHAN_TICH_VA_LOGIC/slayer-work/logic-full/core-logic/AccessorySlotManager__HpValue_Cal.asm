004f6caec 	sub	sp, sp, #144
004f6caf0 	stp	x30, x23, [sp, #96]
004f6caf4 	stp	x22, x21, [sp, #112]
004f6caf8 	stp	x20, x19, [sp, #128]
004f6cafc 	adrp	x22, #96899072 ; -> 0xabd5000
004f6cb00 	mov	w19, w2
004f6cb04 	mov	w21, w1
004f6cb08 	ldrb	w8, [x22, #2346]
004f6cb0c 	mov	x20, x0
004f6cb10 	tbnz	w8, #0, #48 ; -> 0x4f6cb40
004f6cb14 	adrp	x0, #88612864 ; -> 0xa3ee000
004f6cb18 	ldr	x0, [x0, #2104]
004f6cb1c 	bl	#-10338492 ; -> 0x4590a60
004f6cb20 	adrp	x0, #88621056 ; -> 0xa3f0000
004f6cb24 	ldr	x0, [x0, #56]
004f6cb28 	bl	#-10338504 ; -> 0x4590a60
004f6cb2c 	adrp	x0, #88870912 ; -> 0xa42d000
004f6cb30 	ldr	x0, [x0, #2376]
004f6cb34 	bl	#-10338516 ; -> 0x4590a60
004f6cb38 	mov	w8, #1
004f6cb3c 	strb	w8, [x22, #2346]
004f6cb40 	mov	w0, #4439
004f6cb44 	mov	x1, xzr
004f6cb48 	bl	#-3298724 ; -> 0x4c475a4 [IFix.WrappersManagerImpl::IsPatched]
004f6cb4c 	tbz	w0, #0, #56 ; -> 0x4f6cb84
004f6cb50 	mov	w0, #4439
004f6cb54 	mov	x1, xzr
004f6cb58 	bl	#-3298560 ; -> 0x4c47658 [IFix.WrappersManagerImpl::GetPatch]
004f6cb5c 	cbz	x0, #424 ; -> 0x4f6cd04
004f6cb60 	mov	x1, x20
004f6cb64 	mov	w2, w21
004f6cb68 	mov	w3, w19
004f6cb6c 	ldp	x20, x19, [sp, #128]
004f6cb70 	mov	x4, xzr
004f6cb74 	ldp	x22, x21, [sp, #112]
004f6cb78 	ldp	x30, x23, [sp, #96]
004f6cb7c 	add	sp, sp, #144
004f6cb80 	b	#-3986404 ; -> 0x4b9f79c [IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_632]
004f6cb84 	cmp	w21, #24
004f6cb88 	b.lt	#224 ; -> 0x4f6cc68
004f6cb8c 	ldr	x8, [x20, #32]
004f6cb90 	cbz	x8, #372 ; -> 0x4f6cd04
004f6cb94 	ldr	q0, [x8, #2224]
004f6cb98 	ldr	q1, [x8, #2240]
004f6cb9c 	add	x0, sp, #48
004f6cba0 	ldr	q2, [x8, #2256]
004f6cba4 	mov	x1, xzr
004f6cba8 	stp	q0, q1, [sp, #48]
004f6cbac 	str	q2, [sp, #80]
004f6cbb0 	bl	#-8953316 ; -> 0x46e2dcc [Liapp.SecureVariable.LiappSecureInt::op_Implicit]
004f6cbb4 	cmp	w0, #1
004f6cbb8 	b.lt	#176 ; -> 0x4f6cc68
004f6cbbc 	adrp	x21, #88612864 ; -> 0xa3ee000
004f6cbc0 	ldr	x21, [x21, #2104]
004f6cbc4 	ldr	x0, [x21]
004f6cbc8 	ldr	w8, [x0, #228]
004f6cbcc 	cbnz	w8, #8 ; -> 0x4f6cbd4
004f6cbd0 	bl	#-10338288 ; -> 0x4590be0
004f6cbd4 	adrp	x22, #96874496 ; -> 0xabcf000
004f6cbd8 	ldrb	w8, [x22, #360]
004f6cbdc 	cbnz	w8, #24 ; -> 0x4f6cbf4
004f6cbe0 	adrp	x0, #88612864 ; -> 0xa3ee000
004f6cbe4 	ldr	x0, [x0, #2104]
004f6cbe8 	bl	#-10338696 ; -> 0x4590a60
004f6cbec 	mov	w8, #1
004f6cbf0 	strb	w8, [x22, #360]
004f6cbf4 	ldr	x0, [x21]
004f6cbf8 	ldr	w8, [x0, #228]
004f6cbfc 	cbnz	w8, #12 ; -> 0x4f6cc08
004f6cc00 	bl	#-10338336 ; -> 0x4590be0
004f6cc04 	ldr	x0, [x21]
004f6cc08 	ldr	x8, [x0, #184]
004f6cc0c 	ldr	x8, [x8]
004f6cc10 	cbz	x8, #244 ; -> 0x4f6cd04
004f6cc14 	ldr	x9, [x20, #32]
004f6cc18 	cbz	x9, #236 ; -> 0x4f6cd04
004f6cc1c 	ldr	q0, [x9, #2224]
004f6cc20 	ldr	q1, [x9, #2240]
004f6cc24 	mov	x0, sp
004f6cc28 	ldr	q2, [x9, #2256]
004f6cc2c 	ldr	x21, [x8, #144]
004f6cc30 	mov	x1, xzr
004f6cc34 	stp	q0, q1, [sp]
004f6cc38 	str	q2, [sp, #32]
004f6cc3c 	bl	#-8953456 ; -> 0x46e2dcc [Liapp.SecureVariable.LiappSecureInt::op_Implicit]
004f6cc40 	cbz	x21, #196 ; -> 0x4f6cd04
004f6cc44 	adrp	x8, #88870912 ; -> 0xa42d000
004f6cc48 	mov	w1, w0
004f6cc4c 	mov	x0, x21
004f6cc50 	ldr	x8, [x8, #2376]
004f6cc54 	ldr	x2, [x8]
004f6cc58 	bl	#51297084 ; -> 0x8058794
004f6cc5c 	cbz	x0, #168 ; -> 0x4f6cd04
004f6cc60 	ldr	x1, [x0, #24]
004f6cc64 	b	#128 ; -> 0x4f6cce4
004f6cc68 	adrp	x22, #88612864 ; -> 0xa3ee000
004f6cc6c 	ldr	x22, [x22, #2104]
004f6cc70 	ldr	x0, [x22]
004f6cc74 	ldr	w8, [x0, #228]
004f6cc78 	cbnz	w8, #8 ; -> 0x4f6cc80
004f6cc7c 	bl	#-10338460 ; -> 0x4590be0
004f6cc80 	adrp	x23, #96874496 ; -> 0xabcf000
004f6cc84 	ldrb	w8, [x23, #360]
004f6cc88 	cbnz	w8, #24 ; -> 0x4f6cca0
004f6cc8c 	adrp	x0, #88612864 ; -> 0xa3ee000
004f6cc90 	ldr	x0, [x0, #2104]
004f6cc94 	bl	#-10338868 ; -> 0x4590a60
004f6cc98 	mov	w8, #1
004f6cc9c 	strb	w8, [x23, #360]
004f6cca0 	ldr	x0, [x22]
004f6cca4 	ldr	w8, [x0, #228]
004f6cca8 	cbnz	w8, #12 ; -> 0x4f6ccb4
004f6ccac 	bl	#-10338508 ; -> 0x4590be0
004f6ccb0 	ldr	x0, [x22]
004f6ccb4 	ldr	x8, [x0, #184]
004f6ccb8 	ldr	x8, [x8]
004f6ccbc 	cbz	x8, #72 ; -> 0x4f6cd04
004f6ccc0 	ldr	x0, [x8, #40]
004f6ccc4 	cbz	x0, #64 ; -> 0x4f6cd04
004f6ccc8 	adrp	x8, #88621056 ; -> 0xa3f0000
004f6cccc 	mov	w1, w21
004f6ccd0 	ldr	x8, [x8, #56]
004f6ccd4 	ldr	x2, [x8]
004f6ccd8 	bl	#51296956 ; -> 0x8058794
004f6ccdc 	cbz	x0, #40 ; -> 0x4f6cd04
004f6cce0 	ldr	x1, [x0, #160]
004f6cce4 	mov	x0, x20
004f6cce8 	mov	w2, w19
004f6ccec 	bl	#-4516 ; -> 0x4f6bb48 [AccessorySlotManager::AccessoryValue]
004f6ccf0 	ldp	x20, x19, [sp, #128]
004f6ccf4 	ldp	x22, x21, [sp, #112]
004f6ccf8 	ldp	x30, x23, [sp, #96]
004f6ccfc 	add	sp, sp, #144
004f6cd00 	ret
004f6cd04 	bl	#-10338296 ; -> 0x4590d0c