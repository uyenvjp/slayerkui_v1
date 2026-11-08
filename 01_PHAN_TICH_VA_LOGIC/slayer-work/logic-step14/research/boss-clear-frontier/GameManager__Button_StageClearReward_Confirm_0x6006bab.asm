004e4d464 	str	x30, [sp, #-48]!
004e4d468 	stp	x22, x21, [sp, #16]
004e4d46c 	stp	x20, x19, [sp, #32]
004e4d470 	adrp	x20, #98074624 ; -> 0xabd5000 
004e4d474 	mov	x19, x0
004e4d478 	ldrb	w8, [x20, #309]
004e4d47c 	tbnz	w8, #0, #120 ; -> 0x4e4d4f4 
004e4d480 	adrp	x0, #89767936 ; -> 0xa3e9000 
004e4d484 	ldr	x0, [x0, #3552]
004e4d488 	bl	#-9161256 ; -> 0x4590a60 
004e4d48c 	adrp	x0, #89796608 ; -> 0xa3f0000 
004e4d490 	ldr	x0, [x0, #88]
004e4d494 	bl	#-9161268 ; -> 0x4590a60 
004e4d498 	adrp	x0, #90025984 ; -> 0xa428000 
004e4d49c 	ldr	x0, [x0, #2072]
004e4d4a0 	bl	#-9161280 ; -> 0x4590a60 
004e4d4a4 	adrp	x0, #90025984 ; -> 0xa428000 
004e4d4a8 	ldr	x0, [x0, #2040]
004e4d4ac 	bl	#-9161292 ; -> 0x4590a60 
004e4d4b0 	adrp	x0, #89792512 ; -> 0xa3ef000 
004e4d4b4 	ldr	x0, [x0, #3424]
004e4d4b8 	bl	#-9161304 ; -> 0x4590a60 
004e4d4bc 	adrp	x0, #90025984 ; -> 0xa428000 
004e4d4c0 	ldr	x0, [x0, #2680]
004e4d4c4 	bl	#-9161316 ; -> 0x4590a60 
004e4d4c8 	adrp	x0, #90025984 ; -> 0xa428000 
004e4d4cc 	ldr	x0, [x0, #2456]
004e4d4d0 	bl	#-9161328 ; -> 0x4590a60 
004e4d4d4 	adrp	x0, #90025984 ; -> 0xa428000 
004e4d4d8 	ldr	x0, [x0, #2688]
004e4d4dc 	bl	#-9161340 ; -> 0x4590a60 
004e4d4e0 	adrp	x0, #90025984 ; -> 0xa428000 
004e4d4e4 	ldr	x0, [x0, #2048]
004e4d4e8 	bl	#-9161352 ; -> 0x4590a60 
004e4d4ec 	mov	w8, #1
004e4d4f0 	strb	w8, [x20, #309]
004e4d4f4 	mov	w0, #30812
004e4d4f8 	mov	x1, xzr
004e4d4fc 	bl	#-2121560 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004e4d500 	tbz	w0, #0, #44 ; -> 0x4e4d52c 
004e4d504 	mov	w0, #30812
004e4d508 	mov	x1, xzr
004e4d50c 	bl	#-2121396 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004e4d510 	cbz	x0, #536 ; -> 0x4e4d728 
004e4d514 	mov	x1, x19
004e4d518 	ldp	x20, x19, [sp, #32]
004e4d51c 	ldp	x22, x21, [sp, #16]
004e4d520 	mov	x2, xzr
004e4d524 	ldr	x30, [sp], #48
004e4d528 	b	#-2945032 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004e4d52c 	ldr	x1, [x19, #416]
004e4d530 	cbz	x1, #16 ; -> 0x4e4d540 
004e4d534 	mov	x0, x19
004e4d538 	mov	x2, xzr
004e4d53c 	bl	#79398896 ; -> 0x9a05d2c UnityEngine.MonoBehaviour::StopCoroutine
004e4d540 	ldr	x0, [x19, #352]
004e4d544 	cbz	x0, #484 ; -> 0x4e4d728 
004e4d548 	mov	w1, wzr
004e4d54c 	mov	x2, xzr
004e4d550 	bl	#79390340 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004e4d554 	ldr	x0, [x19, #32]
004e4d558 	cbz	x0, #464 ; -> 0x4e4d728 
004e4d55c 	ldp	x1, x2, [x19, #392]
004e4d560 	mov	x3, xzr
004e4d564 	bl	#-1074784 ; -> 0x4d46f04 DatabaseManager::Gold_Get
004e4d568 	ldr	x0, [x19, #368]
004e4d56c 	cbz	x0, #444 ; -> 0x4e4d728 
004e4d570 	adrp	x8, #89796608 ; -> 0xa3f0000 
004e4d574 	mov	x1, xzr
004e4d578 	ldr	x8, [x8, #88]
004e4d57c 	ldr	x8, [x8]
004e4d580 	ldr	x8, [x8, #184]
004e4d584 	ldr	x20, [x8]
004e4d588 	bl	#79376472 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004e4d58c 	cbz	x20, #412 ; -> 0x4e4d728 
004e4d590 	mov	x2, x0
004e4d594 	mov	x0, x20
004e4d598 	mov	w1, #15
004e4d59c 	mov	x3, xzr
004e4d5a0 	bl	#-1560608 ; -> 0x4cd0580 CoinEffectManager::CoinMagnetEffect
004e4d5a4 	adrp	x22, #89792512 ; -> 0xa3ef000 
004e4d5a8 	adrp	x8, #89767936 ; -> 0xa3e9000 
004e4d5ac 	ldr	x22, [x22, #3424]
004e4d5b0 	ldr	x8, [x8, #3552]
004e4d5b4 	ldr	x21, [x19, #408]
004e4d5b8 	ldr	x9, [x22]
004e4d5bc 	ldr	x0, [x8]
004e4d5c0 	ldr	x8, [x9, #184]
004e4d5c4 	ldr	w9, [x0, #228]
004e4d5c8 	ldr	x20, [x8]
004e4d5cc 	cbnz	w9, #8 ; -> 0x4e4d5d4 
004e4d5d0 	bl	#-9161200 ; -> 0x4590be0 
004e4d5d4 	mov	x0, x21
004e4d5d8 	mov	x1, xzr
004e4d5dc 	bl	#70447936 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004e4d5e0 	cbz	x20, #328 ; -> 0x4e4d728 
004e4d5e4 	mov	x2, x0
004e4d5e8 	mov	x3, x1
004e4d5ec 	mov	x0, x20
004e4d5f0 	mov	x1, x2
004e4d5f4 	mov	x2, x3
004e4d5f8 	mov	x3, xzr
004e4d5fc 	bl	#829676 ; -> 0x4f17ee8 StatManager::Get_Exp_NoBuff
004e4d600 	adrp	x8, #90025984 ; -> 0xa428000 
004e4d604 	ldr	x8, [x8, #2688]
004e4d608 	ldr	x8, [x8]
004e4d60c 	ldr	x8, [x8, #184]
004e4d610 	ldr	x0, [x8]
004e4d614 	cbz	x0, #276 ; -> 0x4e4d728 
004e4d618 	mov	x1, xzr
004e4d61c 	bl	#1157432 ; -> 0x4f67f54 UpgradeSlotManager::Upgrade_LevelCheck
004e4d620 	ldr	x8, [x22]
004e4d624 	ldr	x8, [x8, #184]
004e4d628 	ldr	x0, [x8]
004e4d62c 	cbz	x0, #252 ; -> 0x4e4d728 
004e4d630 	mov	x1, xzr
004e4d634 	bl	#835628 ; -> 0x4f19660 StatManager::Stat_LevelCheck
004e4d638 	adrp	x22, #90025984 ; -> 0xa428000 
004e4d63c 	ldr	x22, [x22, #2456]
004e4d640 	ldr	x0, [x22]
004e4d644 	ldr	w8, [x0, #228]
004e4d648 	cbnz	w8, #12 ; -> 0x4e4d654 
004e4d64c 	bl	#-9161324 ; -> 0x4590be0 
004e4d650 	ldr	x0, [x22]
004e4d654 	ldr	x8, [x0, #184]
004e4d658 	ldr	x20, [x8, #56]
004e4d65c 	cbnz	x20, #92 ; -> 0x4e4d6b8 
004e4d660 	ldr	w9, [x0, #228]
004e4d664 	cbnz	w9, #16 ; -> 0x4e4d674 
004e4d668 	bl	#-9161352 ; -> 0x4590be0 
004e4d66c 	ldr	x8, [x22]
004e4d670 	ldr	x8, [x8, #184]
004e4d674 	adrp	x9, #90025984 ; -> 0xa428000 
004e4d678 	ldr	x9, [x9, #2048]
004e4d67c 	ldr	x21, [x8]
004e4d680 	ldr	x0, [x9]
004e4d684 	bl	#-9161096 ; -> 0x4590cfc 
004e4d688 	adrp	x8, #90025984 ; -> 0xa428000 
004e4d68c 	mov	x1, x21
004e4d690 	mov	x3, xzr
004e4d694 	ldr	x8, [x8, #2680]
004e4d698 	mov	x20, x0
004e4d69c 	ldr	x2, [x8]
004e4d6a0 	bl	#196288 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e4d6a4 	ldr	x8, [x22]
004e4d6a8 	mov	x1, x20
004e4d6ac 	ldr	x0, [x8, #184]
004e4d6b0 	str	x20, [x0, #56]!
004e4d6b4 	bl	#-9161904 ; -> 0x4590a04 
004e4d6b8 	adrp	x22, #90025984 ; -> 0xa428000 
004e4d6bc 	ldr	x22, [x22, #2048]
004e4d6c0 	ldr	x0, [x22]
004e4d6c4 	bl	#-9161160 ; -> 0x4590cfc 
004e4d6c8 	adrp	x8, #90025984 ; -> 0xa428000 
004e4d6cc 	mov	x1, x19
004e4d6d0 	mov	x3, xzr
004e4d6d4 	ldr	x8, [x8, #2040]
004e4d6d8 	mov	x21, x0
004e4d6dc 	ldr	x2, [x8]
004e4d6e0 	bl	#196224 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e4d6e4 	ldr	x0, [x22]
004e4d6e8 	bl	#-9161196 ; -> 0x4590cfc 
004e4d6ec 	adrp	x8, #90025984 ; -> 0xa428000 
004e4d6f0 	mov	x1, x19
004e4d6f4 	mov	x3, xzr
004e4d6f8 	ldr	x8, [x8, #2072]
004e4d6fc 	mov	x22, x0
004e4d700 	ldr	x2, [x8]
004e4d704 	bl	#196188 ; -> 0x4e7d560 GameManager+changeAction::.ctor
004e4d708 	mov	x0, x19
004e4d70c 	mov	x1, x21
004e4d710 	mov	x2, x20
004e4d714 	mov	x3, x22
004e4d718 	ldp	x20, x19, [sp, #32]
004e4d71c 	ldp	x22, x21, [sp, #16]
004e4d720 	ldr	x30, [sp], #48
004e4d724 	b	#-30976 ; -> 0x4e45e24 GameManager::SceneChange_BlackOut
004e4d728 	bl	#-9161244 ; -> 0x4590d0c 
