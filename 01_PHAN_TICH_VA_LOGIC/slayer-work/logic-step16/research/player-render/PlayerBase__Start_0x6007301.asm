004ee6440 	stp	x30, x21, [sp, #-32]!
004ee6444 	stp	x20, x19, [sp, #16]
004ee6448 	adrp	x20, #97447936 ; -> 0xabd5000 
004ee644c 	mov	x19, x0
004ee6450 	ldrb	w8, [x20, #1425]
004ee6454 	tbnz	w8, #0, #48 ; -> 0x4ee6484 
004ee6458 	adrp	x0, #89141248 ; -> 0xa3e9000 
004ee645c 	ldr	x0, [x0, #3552]
004ee6460 	bl	#-9787904 ; -> 0x4590a60 
004ee6464 	adrp	x0, #89411584 ; -> 0xa42b000 
004ee6468 	ldr	x0, [x0, #2256]
004ee646c 	bl	#-9787916 ; -> 0x4590a60 
004ee6470 	adrp	x0, #89411584 ; -> 0xa42b000 
004ee6474 	ldr	x0, [x0, #2264]
004ee6478 	bl	#-9787928 ; -> 0x4590a60 
004ee647c 	mov	w8, #1
004ee6480 	strb	w8, [x20, #1425]
004ee6484 	mov	w0, #32782
004ee6488 	mov	x1, xzr
004ee648c 	bl	#-2748136 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ee6490 	tbz	w0, #0, #40 ; -> 0x4ee64b8 
004ee6494 	mov	w0, #32782
004ee6498 	mov	x1, xzr
004ee649c 	bl	#-2747972 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ee64a0 	cbz	x0, #268 ; -> 0x4ee65ac 
004ee64a4 	mov	x1, x19
004ee64a8 	ldp	x20, x19, [sp, #16]
004ee64ac 	mov	x2, xzr
004ee64b0 	ldp	x30, x21, [sp], #32
004ee64b4 	b	#-3571604 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ee64b8 	adrp	x8, #89141248 ; -> 0xa3e9000 
004ee64bc 	adrp	x21, #89411584 ; -> 0xa42b000 
004ee64c0 	adrp	x20, #89411584 ; -> 0xa42b000 
004ee64c4 	ldr	x8, [x8, #3552]
004ee64c8 	ldr	x0, [x8]
004ee64cc 	ldr	x21, [x21, #2264]
004ee64d0 	ldr	w8, [x0, #228]
004ee64d4 	ldr	x20, [x20, #2256]
004ee64d8 	cbnz	w8, #8 ; -> 0x4ee64e0 
004ee64dc 	bl	#-9787644 ; -> 0x4590be0 
004ee64e0 	mov	w0, #1
004ee64e4 	mov	x1, xzr
004ee64e8 	bl	#69823164 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee64ec 	str	x0, [x19, #1464]
004ee64f0 	add	x0, x19, #1472
004ee64f4 	str	x1, [x19, #1472]
004ee64f8 	mov	x1, xzr
004ee64fc 	bl	#-9788152 ; -> 0x4590a04 
004ee6500 	mov	w0, #1
004ee6504 	mov	x1, xzr
004ee6508 	bl	#69823132 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
004ee650c 	str	x0, [x19, #1696]
004ee6510 	add	x0, x19, #1704
004ee6514 	str	x1, [x19, #1704]
004ee6518 	mov	x1, xzr
004ee651c 	bl	#-9788184 ; -> 0x4590a04 
004ee6520 	fmov	s0, #18.00000000
004ee6524 	add	x0, x19, #496
004ee6528 	mov	x1, xzr
004ee652c 	bl	#-3754356 ; -> 0x4b51bb8 SilentFloat::set_Value
004ee6530 	add	x0, x19, #568
004ee6534 	add	x1, x19, #496
004ee6538 	mov	w2, #72
004ee653c 	bl	#82334644 ; -> 0x9d6b8f0 
004ee6540 	add	x0, x19, #576
004ee6544 	mov	x1, xzr
004ee6548 	bl	#-9788228 ; -> 0x4590a04 
004ee654c 	mov	x0, x19
004ee6550 	bl	#96 ; -> 0x4ee65b0 PlayerBase::PlayerInit
004ee6554 	mov	x0, x19
004ee6558 	bl	#712 ; -> 0x4ee6820 PlayerBase::Stat_Init
004ee655c 	fmov	s0, #1.00000000
004ee6560 	ldr	x1, [x21]
004ee6564 	mov	x0, x19
004ee6568 	mov	x2, xzr
004ee656c 	bl	#78769380 ; -> 0x9a05250 UnityEngine.MonoBehaviour::Invoke
004ee6570 	mov	x0, x19
004ee6574 	bl	#880 ; -> 0x4ee68e4 PlayerBase::AttackEffectPoolingSetting
004ee6578 	mov	x0, x19
004ee657c 	bl	#1464 ; -> 0x4ee6b34 PlayerBase::AttackEffect2PoolingSetting
004ee6580 	mov	x0, x19
004ee6584 	bl	#2048 ; -> 0x4ee6d84 PlayerBase::AttackEffect3PoolingSetting
004ee6588 	mov	x0, x19
004ee658c 	bl	#2632 ; -> 0x4ee6fd4 PlayerBase::AttackEffect4PoolingSetting
004ee6590 	ldr	x1, [x20]
004ee6594 	mov	x0, x19
004ee6598 	fmov	s0, #30.00000000
004ee659c 	ldp	x20, x19, [sp, #16]
004ee65a0 	mov	x2, xzr
004ee65a4 	ldp	x30, x21, [sp], #32
004ee65a8 	b	#78769320 ; -> 0x9a05250 UnityEngine.MonoBehaviour::Invoke
004ee65ac 	bl	#-9787552 ; -> 0x4590d0c 
