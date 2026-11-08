005019fdc 	sub	sp, sp, #144
005019fe0 	str	d8, [sp, #96]
005019fe4 	stp	x30, x21, [sp, #112]
005019fe8 	stp	x20, x19, [sp, #128]
005019fec 	adrp	x21, #96190464 ; -> 0xabd5000 
005019ff0 	mov	x20, x1
005019ff4 	mov	x19, x0
005019ff8 	ldrb	w8, [x21, #3693]
005019ffc 	tbnz	w8, #0, #84 ; -> 0x501a050 
00501a000 	adrp	x0, #87879680 ; -> 0xa3e9000 
00501a004 	ldr	x0, [x0, #3552]
00501a008 	bl	#-11048360 ; -> 0x4590a60 
00501a00c 	adrp	x0, #87879680 ; -> 0xa3e9000 
00501a010 	ldr	x0, [x0, #1384]
00501a014 	bl	#-11048372 ; -> 0x4590a60 
00501a018 	adrp	x0, #88154112 ; -> 0xa42c000 
00501a01c 	ldr	x0, [x0, #488]
00501a020 	bl	#-11048384 ; -> 0x4590a60 
00501a024 	adrp	x0, #87879680 ; -> 0xa3e9000 
00501a028 	ldr	x0, [x0, #736]
00501a02c 	bl	#-11048396 ; -> 0x4590a60 
00501a030 	adrp	x0, #87904256 ; -> 0xa3ef000 
00501a034 	ldr	x0, [x0, #3552]
00501a038 	bl	#-11048408 ; -> 0x4590a60 
00501a03c 	adrp	x0, #88100864 ; -> 0xa41f000 
00501a040 	ldr	x0, [x0, #1528]
00501a044 	bl	#-11048420 ; -> 0x4590a60 
00501a048 	mov	w8, #1
00501a04c 	strb	w8, [x21, #3693]
00501a050 	mov	w0, #36566
00501a054 	mov	x1, xzr
00501a058 	bl	#-4008628 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00501a05c 	tbz	w0, #0, #52 ; -> 0x501a090 
00501a060 	mov	w0, #36566
00501a064 	mov	x1, xzr
00501a068 	bl	#-4008464 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00501a06c 	cbz	x0, #572 ; -> 0x501a2a8 
00501a070 	mov	x1, x19
00501a074 	mov	x2, x20
00501a078 	ldr	d8, [sp, #96]
00501a07c 	ldp	x20, x19, [sp, #128]
00501a080 	mov	x3, xzr
00501a084 	ldp	x30, x21, [sp, #112]
00501a088 	add	sp, sp, #144
00501a08c 	b	#-4831352 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
00501a090 	cbz	x20, #536 ; -> 0x501a2a8 
00501a094 	mov	x0, x20
00501a098 	mov	x1, xzr
00501a09c 	bl	#77489476 ; -> 0x9a005e0 UnityEngine.Component::get_transform
00501a0a0 	cbz	x0, #520 ; -> 0x501a2a8 
00501a0a4 	mov	x1, xzr
00501a0a8 	bl	#77491160 ; -> 0x9a00c80 UnityEngine.Component::get_tag
00501a0ac 	adrp	x8, #88100864 ; -> 0xa41f000 
00501a0b0 	mov	x2, xzr
00501a0b4 	ldr	x8, [x8, #1528]
00501a0b8 	ldr	x1, [x8]
00501a0bc 	bl	#63630844 ; -> 0x8cc8eb8 System.String::op_Equality
00501a0c0 	tbz	w0, #0, #468 ; -> 0x501a294 
00501a0c4 	ldr	x0, [x19, #32]
00501a0c8 	cbz	x0, #480 ; -> 0x501a2a8 
00501a0cc 	mov	w1, #6
00501a0d0 	mov	x2, xzr
00501a0d4 	bl	#-2887748 ; -> 0x4d59090 DatabaseManager::SpiritSkillValue
00501a0d8 	fcmp	s0, #0.0
00501a0dc 	b.le	#156 ; -> 0x501a178 
00501a0e0 	adrp	x8, #87879680 ; -> 0xa3e9000 
00501a0e4 	fmov	s8, s0
00501a0e8 	ldr	x8, [x8, #736]
00501a0ec 	ldr	x0, [x8]
00501a0f0 	ldr	w8, [x0, #228]
00501a0f4 	cbnz	w8, #8 ; -> 0x501a0fc 
00501a0f8 	bl	#-11048216 ; -> 0x4590be0 
00501a0fc 	fmov	s0, s8
00501a100 	mov	x0, xzr
00501a104 	bl	#-3153892 ; -> 0x4d18120 UsefulManager::Probability
00501a108 	tbz	w0, #0, #112 ; -> 0x501a178 
00501a10c 	add	x0, x19, #40
00501a110 	mov	x1, xzr
00501a114 	bl	#-5019328 ; -> 0x4b50a54 SilentBigInt::get_Value
00501a118 	adrp	x8, #87879680 ; -> 0xa3e9000 
00501a11c 	mov	x20, x0
00501a120 	mov	x21, x1
00501a124 	ldr	x8, [x8, #3552]
00501a128 	ldr	x0, [x8]
00501a12c 	ldr	w8, [x0, #228]
00501a130 	cbnz	w8, #8 ; -> 0x501a138 
00501a134 	bl	#-11048276 ; -> 0x4590be0 
00501a138 	mov	w0, #2
00501a13c 	mov	x1, xzr
00501a140 	bl	#68562532 ; -> 0x917cfa4 System.Numerics.BigInteger::op_Implicit
00501a144 	mov	x2, x0
00501a148 	mov	x3, x1
00501a14c 	mov	x0, x20
00501a150 	mov	x1, x21
00501a154 	mov	x4, xzr
00501a158 	bl	#68552428 ; -> 0x917a844 System.Numerics.BigInteger::op_Multiply
00501a15c 	mov	x2, x0
00501a160 	mov	x3, x1
00501a164 	add	x0, x19, #40
00501a168 	mov	x1, x2
00501a16c 	mov	x2, x3
00501a170 	mov	x3, xzr
00501a174 	bl	#-5018492 ; -> 0x4b50df8 SilentBigInt::set_Value
00501a178 	ldur	q0, [x19, #40]
00501a17c 	ldur	q1, [x19, #56]
00501a180 	add	x0, sp, #48
00501a184 	ldr	x8, [x19, #72]
00501a188 	ldr	x20, [x19, #32]
00501a18c 	mov	x1, xzr
00501a190 	stp	q0, q1, [sp, #48]
00501a194 	str	x8, [sp, #80]
00501a198 	bl	#-5017960 ; -> 0x4b51030 SilentBigInt::op_Implicit
00501a19c 	cbz	x20, #268 ; -> 0x501a2a8 
00501a1a0 	mov	x2, x0
00501a1a4 	mov	x3, x1
00501a1a8 	mov	x0, x20
00501a1ac 	mov	x1, x2
00501a1b0 	mov	x2, x3
00501a1b4 	mov	x3, xzr
00501a1b8 	bl	#-2962100 ; -> 0x4d46f04 DatabaseManager::Gold_Get
00501a1bc 	adrp	x8, #88154112 ; -> 0xa42c000 
00501a1c0 	adrp	x21, #87879680 ; -> 0xa3e9000 
00501a1c4 	ldr	x8, [x8, #488]
00501a1c8 	ldr	x21, [x21, #1384]
00501a1cc 	ldr	x8, [x8]
00501a1d0 	ldr	x0, [x21]
00501a1d4 	ldr	x8, [x8, #184]
00501a1d8 	ldr	w9, [x0, #228]
00501a1dc 	ldr	x20, [x8]
00501a1e0 	cbnz	w9, #12 ; -> 0x501a1ec 
00501a1e4 	bl	#-11048452 ; -> 0x4590be0 
00501a1e8 	ldr	x0, [x21]
00501a1ec 	ldr	x8, [x0, #184]
00501a1f0 	ldur	q0, [x19, #40]
00501a1f4 	mov	x0, sp
00501a1f8 	ldur	q1, [x19, #56]
00501a1fc 	ldur	x9, [x19, #72]
00501a200 	mov	x1, xzr
00501a204 	ldr	x21, [x8]
00501a208 	stp	q0, q1, [sp]
00501a20c 	str	x9, [sp, #32]
00501a210 	bl	#-5018080 ; -> 0x4b51030 SilentBigInt::op_Implicit
00501a214 	cbz	x21, #148 ; -> 0x501a2a8 
00501a218 	mov	x2, x0
00501a21c 	mov	x3, x1
00501a220 	mov	x0, x21
00501a224 	mov	x1, x2
00501a228 	mov	x2, x3
00501a22c 	mov	w3, #1
00501a230 	mov	x4, xzr
00501a234 	bl	#-2909836 ; -> 0x4d53ba8 DatabaseManager::GetStrAmount
00501a238 	adrp	x8, #87904256 ; -> 0xa3ef000 
00501a23c 	mov	x1, x0
00501a240 	mov	x2, xzr
00501a244 	ldr	x8, [x8, #3552]
00501a248 	ldr	x8, [x8]
00501a24c 	mov	x0, x8
00501a250 	bl	#63642616 ; -> 0x8ccbe48 System.String::Concat
00501a254 	cbz	x20, #84 ; -> 0x501a2a8 
00501a258 	ldr	x2, [x19, #80]
00501a25c 	mov	x1, x0
00501a260 	mov	x0, x20
00501a264 	mov	x3, xzr
00501a268 	bl	#2082276 ; -> 0x521684c ItemDropManager::ItemDropLog
00501a26c 	mov	x0, x19
00501a270 	bl	#-848 ; -> 0x5019f20 CoinEffect::ActiveFalse
00501a274 	mov	x0, xzr
00501a278 	bl	#-3151052 ; -> 0x4d18dac SoundManager::get_instance
00501a27c 	cbz	x0, #44 ; -> 0x501a2a8 
00501a280 	ldr	x8, [x0]
00501a284 	mov	x1, xzr
00501a288 	ldr	x9, [x8, #1352]
00501a28c 	ldr	x2, [x8, #1360]
00501a290 	blr	x9
00501a294 	ldp	x20, x19, [sp, #128]
00501a298 	ldr	d8, [sp, #96]
00501a29c 	ldp	x30, x21, [sp, #112]
00501a2a0 	add	sp, sp, #144
00501a2a4 	ret
00501a2a8 	bl	#-11048348 ; -> 0x4590d0c 
