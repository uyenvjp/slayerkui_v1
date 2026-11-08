0050b7248 	stp	x30, x21, [sp, #-32]!
0050b724c 	stp	x20, x19, [sp, #16]
0050b7250 	adrp	x20, #95547392 ; -> 0xabd6000 
0050b7254 	mov	x19, x0
0050b7258 	ldrb	w8, [x20, #696]
0050b725c 	tbnz	w8, #0, #36 ; -> 0x50b7280 
0050b7260 	adrp	x0, #87437312 ; -> 0xa41a000 
0050b7264 	ldr	x0, [x0, #3856]
0050b7268 	bl	#-11692040 ; -> 0x4590a60 
0050b726c 	adrp	x0, #87539712 ; -> 0xa433000 
0050b7270 	ldr	x0, [x0, #1520]
0050b7274 	bl	#-11692052 ; -> 0x4590a60 
0050b7278 	mov	w8, #1
0050b727c 	strb	w8, [x20, #696]
0050b7280 	mov	w0, #31564
0050b7284 	mov	x1, xzr
0050b7288 	bl	#-4652260 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b728c 	tbz	w0, #0, #40 ; -> 0x50b72b4 
0050b7290 	mov	w0, #31564
0050b7294 	mov	x1, xzr
0050b7298 	bl	#-4652096 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b729c 	cbz	x0, #244 ; -> 0x50b7390 
0050b72a0 	mov	x1, x19
0050b72a4 	ldp	x20, x19, [sp, #16]
0050b72a8 	mov	x2, xzr
0050b72ac 	ldp	x30, x21, [sp], #32
0050b72b0 	b	#-5475728 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050b72b4 	adrp	x21, #87437312 ; -> 0xa41a000 
0050b72b8 	ldr	x21, [x21, #3856]
0050b72bc 	ldr	x20, [x19, #472]
0050b72c0 	ldr	x0, [x21]
0050b72c4 	ldr	w8, [x0, #228]
0050b72c8 	cbnz	w8, #12 ; -> 0x50b72d4 
0050b72cc 	bl	#-11691756 ; -> 0x4590be0 
0050b72d0 	ldr	x0, [x21]
0050b72d4 	ldr	x8, [x0, #184]
0050b72d8 	ldr	x0, [x8]
0050b72dc 	cbz	x0, #180 ; -> 0x50b7390 
0050b72e0 	mov	x1, xzr
0050b72e4 	bl	#-1843884 ; -> 0x4ef5038 PlayerBase::get_isCritical
0050b72e8 	ldr	x8, [x21]
0050b72ec 	ldr	x8, [x8, #184]
0050b72f0 	ldr	x8, [x8]
0050b72f4 	cbz	x8, #156 ; -> 0x50b7390 
0050b72f8 	mov	w21, w0
0050b72fc 	mov	x0, x8
0050b7300 	mov	x1, xzr
0050b7304 	bl	#-1843764 ; -> 0x4ef50d0 PlayerBase::get_isSuperCritical
0050b7308 	cbz	x20, #136 ; -> 0x50b7390 
0050b730c 	adrp	x9, #87539712 ; -> 0xa433000 
0050b7310 	tst	w0, #0x1
0050b7314 	mov	w8, #256
0050b7318 	ldr	x9, [x9, #1520]
0050b731c 	csel	x1, x8, xzr, ne
0050b7320 	mov	x0, x20
0050b7324 	bfxil	x1, x21, #0, #1
0050b7328 	ldr	x2, [x9]
0050b732c 	bl	#34162528 ; -> 0x714ba8c 
0050b7330 	ldr	x8, [x19, #480]
0050b7334 	cbnz	x8, #80 ; -> 0x50b7384 
0050b7338 	mov	x0, x19
0050b733c 	mov	x1, xzr
0050b7340 	bl	#76845936 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
0050b7344 	cbz	x0, #76 ; -> 0x50b7390 
0050b7348 	mov	x1, xzr
0050b734c 	bl	#76859904 ; -> 0x9a03d4c UnityEngine.GameObject::get_activeInHierarchy
0050b7350 	tbz	w0, #0, #52 ; -> 0x50b7384 
0050b7354 	mov	x0, x19
0050b7358 	bl	#60 ; -> 0x50b7394 EnemyBase::ProcessDelayedAbnormalDamage
0050b735c 	mov	x1, x0
0050b7360 	mov	x0, x19
0050b7364 	mov	x2, xzr
0050b7368 	bl	#76867732 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
0050b736c 	mov	x1, x0
0050b7370 	add	x0, x19, #480
0050b7374 	str	x1, [x19, #480]
0050b7378 	ldp	x20, x19, [sp, #16]
0050b737c 	ldp	x30, x21, [sp], #32
0050b7380 	b	#-11692412 ; -> 0x4590a04 
0050b7384 	ldp	x20, x19, [sp, #16]
0050b7388 	ldp	x30, x21, [sp], #32
0050b738c 	ret
0050b7390 	bl	#-11691652 ; -> 0x4590d0c 
