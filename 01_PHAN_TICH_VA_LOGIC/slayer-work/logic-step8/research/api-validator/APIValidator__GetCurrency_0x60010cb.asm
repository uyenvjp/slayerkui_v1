00481fbb4 	sub	sp, sp, #128
00481fbb8 	str	x30, [sp, #96]
00481fbbc 	stp	x20, x19, [sp, #112]
00481fbc0 	adrp	x20, #104529920 ; -> 0xabcf000 
00481fbc4 	mov	w19, w0
00481fbc8 	ldrb	w8, [x20, #1133]
00481fbcc 	tbnz	w8, #0, #36 ; -> 0x481fbf0 
00481fbd0 	adrp	x0, #96272384 ; -> 0xa3ef000 
00481fbd4 	ldr	x0, [x0, #624]
00481fbd8 	bl	#-2683256 ; -> 0x4590a60 
00481fbdc 	adrp	x0, #96280576 ; -> 0xa3f1000 
00481fbe0 	ldr	x0, [x0, #3832]
00481fbe4 	bl	#-2683268 ; -> 0x4590a60 
00481fbe8 	mov	w8, #1
00481fbec 	strb	w8, [x20, #1133]
00481fbf0 	mov	w0, #1980
00481fbf4 	mov	x1, xzr
00481fbf8 	bl	#4356524 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00481fbfc 	tbz	w0, #0, #44 ; -> 0x481fc28 
00481fc00 	mov	w0, #1980
00481fc04 	mov	x1, xzr
00481fc08 	bl	#4356688 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00481fc0c 	cbz	x0, #220 ; -> 0x481fce8 
00481fc10 	mov	w1, w19
00481fc14 	ldp	x20, x19, [sp, #112]
00481fc18 	ldr	x30, [sp, #96]
00481fc1c 	mov	x2, xzr
00481fc20 	add	sp, sp, #128
00481fc24 	b	#3594480 ; -> 0x4b8d514 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_287
00481fc28 	adrp	x8, #96272384 ; -> 0xa3ef000 
00481fc2c 	ldr	x8, [x8, #624]
00481fc30 	ldr	x0, [x8]
00481fc34 	ldr	w8, [x0, #228]
00481fc38 	cbnz	w8, #8 ; -> 0x481fc40 
00481fc3c 	bl	#-2682972 ; -> 0x4590be0 
00481fc40 	mov	w0, w19
00481fc44 	mov	x1, xzr
00481fc48 	bl	#8371752 ; -> 0x501ba70 CurrencyData::Get
00481fc4c 	cbz	x0, #132 ; -> 0x481fcd0 
00481fc50 	adrp	x8, #96280576 ; -> 0xa3f1000 
00481fc54 	mov	x20, x0
00481fc58 	ldr	x8, [x8, #3832]
00481fc5c 	ldr	x0, [x8]
00481fc60 	bl	#-2682724 ; -> 0x4590cfc 
00481fc64 	mov	x1, xzr
00481fc68 	mov	x19, x0
00481fc6c 	bl	#68700852 ; -> 0x89a4720 GrowSlayer.Currency::.ctor
00481fc70 	cbz	x19, #120 ; -> 0x481fce8 
00481fc74 	ldr	w8, [x20, #24]
00481fc78 	mov	x0, x20
00481fc7c 	mov	x1, xzr
00481fc80 	str	w8, [x19, #24]
00481fc84 	add	x8, sp, #48
00481fc88 	bl	#8369376 ; -> 0x501b168 CurrencyData::get_Amount
00481fc8c 	ldp	q0, q1, [sp, #48]
00481fc90 	mov	x0, sp
00481fc94 	ldr	q2, [sp, #80]
00481fc98 	mov	x1, xzr
00481fc9c 	stp	q0, q1, [sp]
00481fca0 	str	q2, [sp, #32]
00481fca4 	bl	#-1301592 ; -> 0x46e204c Liapp.SecureVariable.LiappSecureLong::op_Implicit
00481fca8 	str	x0, [x19, #32]
00481fcac 	mov	x0, x20
00481fcb0 	mov	x1, xzr
00481fcb4 	bl	#8369448 ; -> 0x501b1dc CurrencyData::get_TotalGet
00481fcb8 	str	x0, [x19, #40]
00481fcbc 	mov	x0, x20
00481fcc0 	mov	x1, xzr
00481fcc4 	bl	#8369504 ; -> 0x501b224 CurrencyData::get_TotalUsed
00481fcc8 	str	x0, [x19, #48]
00481fccc 	b	#8 ; -> 0x481fcd4 
00481fcd0 	mov	x19, xzr
00481fcd4 	mov	x0, x19
00481fcd8 	ldp	x20, x19, [sp, #112]
00481fcdc 	ldr	x30, [sp, #96]
00481fce0 	add	sp, sp, #128
00481fce4 	ret
00481fce8 	bl	#-2682844 ; -> 0x4590d0c 
