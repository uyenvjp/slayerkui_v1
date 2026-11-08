004d462a0 	str	x30, [sp, #-48]!
004d462a4 	stp	x22, x21, [sp, #16]
004d462a8 	stp	x20, x19, [sp, #32]
004d462ac 	adrp	x22, #99147776 ; -> 0xabd4000 
004d462b0 	mov	x20, x2
004d462b4 	mov	w19, w1
004d462b8 	ldrb	w8, [x22, #2821]
004d462bc 	mov	x21, x0
004d462c0 	tbnz	w8, #0, #60 ; -> 0x4d462fc 
004d462c4 	adrp	x0, #90869760 ; -> 0xa3ef000 
004d462c8 	ldr	x0, [x0, #624]
004d462cc 	bl	#-8083564 ; -> 0x4590a60 
004d462d0 	adrp	x0, #90869760 ; -> 0xa3ef000 
004d462d4 	ldr	x0, [x0, #3632]
004d462d8 	bl	#-8083576 ; -> 0x4590a60 
004d462dc 	adrp	x0, #90873856 ; -> 0xa3f0000 
004d462e0 	ldr	x0, [x0, #904]
004d462e4 	bl	#-8083588 ; -> 0x4590a60 
004d462e8 	adrp	x0, #90869760 ; -> 0xa3ef000 
004d462ec 	ldr	x0, [x0, #152]
004d462f0 	bl	#-8083600 ; -> 0x4590a60 
004d462f4 	mov	w8, #1
004d462f8 	strb	w8, [x22, #2821]
004d462fc 	mov	w0, #2848
004d46300 	mov	x1, xzr
004d46304 	bl	#-1043808 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d46308 	tbz	w0, #0, #52 ; -> 0x4d4633c 
004d4630c 	mov	w0, #2848
004d46310 	mov	x1, xzr
004d46314 	bl	#-1043644 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d46318 	cbz	x0, #304 ; -> 0x4d46448 
004d4631c 	mov	x1, x21
004d46320 	mov	w2, w19
004d46324 	mov	x3, x20
004d46328 	ldp	x20, x19, [sp, #32]
004d4632c 	mov	x4, xzr
004d46330 	ldp	x22, x21, [sp, #16]
004d46334 	ldr	x30, [sp], #48
004d46338 	b	#-1798132 ; -> 0x4b8f344 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_325
004d4633c 	cbz	w19, #12 ; -> 0x4d46348 
004d46340 	cmp	w19, #104
004d46344 	b.ne	#20 ; -> 0x4d46358 
004d46348 	ldp	x20, x19, [sp, #32]
004d4634c 	ldp	x22, x21, [sp, #16]
004d46350 	ldr	x30, [sp], #48
004d46354 	ret
004d46358 	adrp	x21, #90869760 ; -> 0xa3ef000 
004d4635c 	ldr	x21, [x21, #624]
004d46360 	ldr	x0, [x21]
004d46364 	ldr	w8, [x0, #228]
004d46368 	cbnz	w8, #8 ; -> 0x4d46370 
004d4636c 	bl	#-8083340 ; -> 0x4590be0 
004d46370 	mov	w0, w19
004d46374 	mov	x1, x20
004d46378 	mov	x2, xzr
004d4637c 	bl	#2972200 ; -> 0x501bda4 CurrencyData::Use
004d46380 	adrp	x8, #90869760 ; -> 0xa3ef000 
004d46384 	ldr	x8, [x8, #3632]
004d46388 	ldr	x8, [x8]
004d4638c 	ldr	x8, [x8, #184]
004d46390 	ldr	x0, [x8]
004d46394 	cbz	x0, #180 ; -> 0x4d46448 
004d46398 	mov	w1, w19
004d4639c 	mov	x2, xzr
004d463a0 	bl	#1440460 ; -> 0x4ea5e6c GoodsDisplayManager::UpdateCurrency
004d463a4 	adrp	x8, #90869760 ; -> 0xa3ef000 
004d463a8 	ldr	x8, [x8, #152]
004d463ac 	ldr	x0, [x8]
004d463b0 	bl	#40118944 ; -> 0x7388e50 
004d463b4 	cbz	x0, #148 ; -> 0x4d46448 
004d463b8 	mov	x1, xzr
004d463bc 	bl	#234860 ; -> 0x4d7f928 EventManager::get_MainEvent
004d463c0 	cbz	x0, #136 ; -> 0x4d46448 
004d463c4 	mov	x1, xzr
004d463c8 	bl	#226632 ; -> 0x4d7d910 EventBase::get_ShopCurrency
004d463cc 	cmp	w0, w19
004d463d0 	b.ne	#24 ; -> 0x4d463e8 
004d463d4 	ldp	x20, x19, [sp, #32]
004d463d8 	mov	x0, xzr
004d463dc 	ldp	x22, x21, [sp, #16]
004d463e0 	ldr	x30, [sp], #48
004d463e4 	b	#-696316 ; -> 0x4c9c3e8 PopupEventPass::CheckRedDot
004d463e8 	cmp	w19, #239
004d463ec 	b.ne	#-164 ; -> 0x4d46348 
004d463f0 	ldr	x0, [x21]
004d463f4 	ldr	w8, [x0, #228]
004d463f8 	cbnz	w8, #8 ; -> 0x4d46400 
004d463fc 	bl	#-8083484 ; -> 0x4590be0 
004d46400 	mov	w0, #239
004d46404 	mov	x1, xzr
004d46408 	bl	#2971632 ; -> 0x501bbf8 CurrencyData::GetAmount
004d4640c 	cmp	x0, #0
004d46410 	b.gt	#-200 ; -> 0x4d46348 
004d46414 	adrp	x8, #90873856 ; -> 0xa3f0000 
004d46418 	ldr	x8, [x8, #904]
004d4641c 	ldr	x0, [x8]
004d46420 	ldr	w8, [x0, #228]
004d46424 	cbnz	w8, #8 ; -> 0x4d4642c 
004d46428 	bl	#-8083528 ; -> 0x4590be0 
004d4642c 	ldp	x20, x19, [sp, #32]
004d46430 	mov	w0, #20
004d46434 	ldp	x22, x21, [sp, #16]
004d46438 	mov	w1, wzr
004d4643c 	mov	x2, xzr
004d46440 	ldr	x30, [sp], #48
004d46444 	b	#-2057028 ; -> 0x4b50100 Reddot::Notify
004d46448 	bl	#-8083260 ; -> 0x4590d0c 
