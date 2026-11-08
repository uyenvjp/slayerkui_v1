0050bac7c 	str	d8, [sp, #-48]!
0050bac80 	str	x30, [sp, #8]
0050bac84 	stp	x22, x21, [sp, #16]
0050bac88 	stp	x20, x19, [sp, #32]
0050bac8c 	fmov	s8, s0
0050bac90 	adrp	x21, #95535104 ; -> 0xabd6000 
0050bac94 	mov	x20, x1
0050bac98 	ldrb	w8, [x21, #704]
0050bac9c 	mov	x19, x0
0050baca0 	tbnz	w8, #0, #36 ; -> 0x50bacc4 
0050baca4 	adrp	x0, #87224320 ; -> 0xa3e9000 
0050baca8 	ldr	x0, [x0, #3552]
0050bacac 	bl	#-11706956 ; -> 0x4590a60 
0050bacb0 	adrp	x0, #87445504 ; -> 0xa41f000 
0050bacb4 	ldr	x0, [x0, #1848]
0050bacb8 	bl	#-11706968 ; -> 0x4590a60 
0050bacbc 	mov	w8, #1
0050bacc0 	strb	w8, [x21, #704]
0050bacc4 	mov	w0, #36264
0050bacc8 	mov	x1, xzr
0050baccc 	bl	#-4667176 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050bacd0 	tbz	w0, #0, #56 ; -> 0x50bad08 
0050bacd4 	mov	w0, #36264
0050bacd8 	mov	x1, xzr
0050bacdc 	bl	#-4667012 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050bace0 	cbz	x0, #384 ; -> 0x50bae60 
0050bace4 	mov	x1, x19
0050bace8 	mov	x2, x20
0050bacec 	ldr	x30, [sp, #8]
0050bacf0 	ldp	x20, x19, [sp, #32]
0050bacf4 	fmov	s0, s8
0050bacf8 	ldp	x22, x21, [sp, #16]
0050bacfc 	mov	x3, xzr
0050bad00 	ldr	d8, [sp], #48
0050bad04 	b	#-5220796 ; -> 0x4bc0348 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1292
0050bad08 	fcmp	s8, #0.0
0050bad0c 	b.le	#320 ; -> 0x50bae4c 
0050bad10 	ldr	x0, [x19, #344]
0050bad14 	cbz	x0, #332 ; -> 0x50bae60 
0050bad18 	adrp	x8, #87445504 ; -> 0xa41f000 
0050bad1c 	mov	x2, xzr
0050bad20 	ldr	x8, [x8, #1848]
0050bad24 	ldr	x1, [x8]
0050bad28 	bl	#76440960 ; -> 0x99a12a8 UnityEngine.Animator::SetTrigger
0050bad2c 	ldr	x8, [x19]
0050bad30 	mov	x0, x19
0050bad34 	ldr	x9, [x8, #584]
0050bad38 	ldr	x1, [x8, #592]
0050bad3c 	blr	x9
0050bad40 	mov	x0, x19
0050bad44 	mov	x1, xzr
0050bad48 	bl	#-673732 ; -> 0x5016584 Character::get_Hp_max
0050bad4c 	adrp	x8, #87224320 ; -> 0xa3e9000 
0050bad50 	mov	x21, x0
0050bad54 	mov	x22, x1
0050bad58 	ldr	x8, [x8, #3552]
0050bad5c 	ldr	x0, [x8]
0050bad60 	ldr	w8, [x0, #228]
0050bad64 	cbnz	w8, #8 ; -> 0x50bad6c 
0050bad68 	bl	#-11706760 ; -> 0x4590be0 
0050bad6c 	mov	w8, #1120403456
0050bad70 	mov	x1, xzr
0050bad74 	fmov	s0, w8
0050bad78 	mov	w8, #2139095040
0050bad7c 	fmov	s1, w8
0050bad80 	mov	w8, #-2147483648
0050bad84 	fmul	s0, s8, s0
0050bad88 	fcvtzs	w9, s0
0050bad8c 	fcmp	s0, s1
0050bad90 	csel	w0, w8, w9, eq
0050bad94 	bl	#67904016 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050bad98 	mov	x2, x0
0050bad9c 	mov	x3, x1
0050bada0 	mov	x0, x21
0050bada4 	mov	x1, x22
0050bada8 	mov	x4, xzr
0050badac 	bl	#67893912 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
0050badb0 	mov	x21, x0
0050badb4 	mov	x22, x1
0050badb8 	mov	w0, #10000
0050badbc 	mov	x1, xzr
0050badc0 	bl	#67903972 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
0050badc4 	mov	x2, x0
0050badc8 	mov	x3, x1
0050badcc 	mov	x0, x21
0050badd0 	mov	x1, x22
0050badd4 	mov	x4, xzr
0050badd8 	bl	#67894368 ; -> 0x917aa38 System.Numerics.BigInteger::op_Division
0050baddc 	ldr	x8, [x19]
0050bade0 	mov	x21, x0
0050bade4 	mov	x22, x1
0050bade8 	mov	x0, x19
0050badec 	mov	x1, x21
0050badf0 	mov	x2, x22
0050badf4 	ldr	x9, [x8, #1256]
0050badf8 	ldr	x3, [x8, #1264]
0050badfc 	blr	x9
0050bae00 	mov	x0, xzr
0050bae04 	bl	#-1305288 ; -> 0x4f7c33c DamageInfoManager::get_Instance
0050bae08 	cbz	x0, #88 ; -> 0x50bae60 
0050bae0c 	mov	w1, #8
0050bae10 	mov	x2, x20
0050bae14 	mov	x3, x21
0050bae18 	mov	x4, x22
0050bae1c 	mov	x5, xzr
0050bae20 	bl	#-1304792 ; -> 0x4f7c548 DamageInfoManager::AddDamage
0050bae24 	ldrb	w8, [x19, #680]
0050bae28 	cbz	w8, #36 ; -> 0x50bae4c 
0050bae2c 	mov	x0, x19
0050bae30 	mov	x1, x21
0050bae34 	mov	x2, x22
0050bae38 	ldp	x20, x19, [sp, #32]
0050bae3c 	ldr	x30, [sp, #8]
0050bae40 	ldp	x22, x21, [sp, #16]
0050bae44 	ldr	d8, [sp], #48
0050bae48 	b	#-2244 ; -> 0x50ba584 EnemyBase::DmgStackEvent
0050bae4c 	ldp	x20, x19, [sp, #32]
0050bae50 	ldr	x30, [sp, #8]
0050bae54 	ldp	x22, x21, [sp, #16]
0050bae58 	ldr	d8, [sp], #48
0050bae5c 	ret
0050bae60 	bl	#-11706708 ; -> 0x4590d0c 
