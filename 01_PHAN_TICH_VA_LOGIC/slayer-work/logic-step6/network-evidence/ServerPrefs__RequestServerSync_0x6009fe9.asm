0051f0200 	sub	sp, sp, #144
0051f0204 	stp	x30, x21, [sp, #112]
0051f0208 	stp	x20, x19, [sp, #128]
0051f020c 	adrp	x20, #94265344 ; -> 0xabd6000 
0051f0210 	mov	x19, x0
0051f0214 	ldrb	w8, [x20, #3145]
0051f0218 	tbnz	w8, #0, #24 ; -> 0x51f0230 
0051f021c 	adrp	x0, #86286336 ; -> 0xa43a000 
0051f0220 	ldr	x0, [x0, #80]
0051f0224 	bl	#-12974020 ; -> 0x4590a60 
0051f0228 	mov	w8, #1
0051f022c 	strb	w8, [x20, #3145]
0051f0230 	movi	v0.2d, #0000000000000000
0051f0234 	mov	w0, #2429
0051f0238 	mov	x1, xzr
0051f023c 	stp	q0, q0, [sp, #48]
0051f0240 	stp	q0, q0, [sp, #80]
0051f0244 	str	q0, [sp, #32]
0051f0248 	bl	#-5934244 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f024c 	tbz	w0, #0, #44 ; -> 0x51f0278 
0051f0250 	mov	w0, #2429
0051f0254 	mov	x1, xzr
0051f0258 	bl	#-5934080 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f025c 	cbz	x0, #132 ; -> 0x51f02e0 
0051f0260 	mov	x1, x19
0051f0264 	ldp	x20, x19, [sp, #128]
0051f0268 	ldp	x30, x21, [sp, #112]
0051f026c 	mov	x2, xzr
0051f0270 	add	sp, sp, #144
0051f0274 	b	#-6757716 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0051f0278 	adrp	x20, #86286336 ; -> 0xa43a000 
0051f027c 	mov	x8, sp
0051f0280 	mov	x0, xzr
0051f0284 	ldr	x20, [x20, #80]
0051f0288 	bl	#62505744 ; -> 0x8d8c598 System.Runtime.CompilerServices.AsyncVoidMethodBuilder::Create
0051f028c 	ldp	q0, q1, [sp]
0051f0290 	add	x21, sp, #32
0051f0294 	orr	x0, x21, #0x8
0051f0298 	mov	x1, xzr
0051f029c 	stur	q0, [sp, #40]
0051f02a0 	stur	q1, [sp, #56]
0051f02a4 	bl	#-12974240 ; -> 0x4590a04 
0051f02a8 	add	x0, x21, #40
0051f02ac 	mov	x1, x19
0051f02b0 	str	x19, [sp, #72]
0051f02b4 	bl	#-12974256 ; -> 0x4590a04 
0051f02b8 	ldr	x2, [x20]
0051f02bc 	mov	w8, #-1
0051f02c0 	orr	x0, x21, #0x8
0051f02c4 	add	x1, sp, #32
0051f02c8 	str	w8, [sp, #32]
0051f02cc 	bl	#12803304 ; -> 0x5e25fb4 
0051f02d0 	ldp	x20, x19, [sp, #128]
0051f02d4 	ldp	x30, x21, [sp, #112]
0051f02d8 	add	sp, sp, #144
0051f02dc 	ret
0051f02e0 	bl	#-12973524 ; -> 0x4590d0c 
