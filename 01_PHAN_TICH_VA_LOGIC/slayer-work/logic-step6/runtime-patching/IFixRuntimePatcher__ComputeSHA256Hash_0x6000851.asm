004fd8224 	sub	sp, sp, #80
004fd8228 	stp	x30, x23, [sp, #32]
004fd822c 	stp	x22, x21, [sp, #48]
004fd8230 	stp	x20, x19, [sp, #64]
004fd8234 	adrp	x21, #96456704 ; -> 0xabd5000 
004fd8238 	mov	x19, x1
004fd823c 	mov	x20, x0
004fd8240 	ldrb	w8, [x21, #3177]
004fd8244 	tbnz	w8, #0, #48 ; -> 0x4fd8274 
004fd8248 	adrp	x0, #88141824 ; -> 0xa3e7000 
004fd824c 	ldr	x0, [x0, #1440]
004fd8250 	bl	#-10778608 ; -> 0x4590a60 
004fd8254 	adrp	x0, #88150016 ; -> 0xa3e9000 
004fd8258 	ldr	x0, [x0, #408]
004fd825c 	bl	#-10778620 ; -> 0x4590a60 
004fd8260 	adrp	x0, #88420352 ; -> 0xa42b000 
004fd8264 	ldr	x0, [x0, #3664]
004fd8268 	bl	#-10778632 ; -> 0x4590a60 
004fd826c 	mov	w8, #1
004fd8270 	strb	w8, [x21, #3177]
004fd8274 	mov	w0, #3436
004fd8278 	mov	x1, xzr
004fd827c 	str	xzr, [sp, #24]
004fd8280 	strb	wzr, [sp, #20]
004fd8284 	bl	#-3738848 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004fd8288 	tbz	w0, #0, #52 ; -> 0x4fd82bc 
004fd828c 	mov	w0, #3436
004fd8290 	mov	x1, xzr
004fd8294 	bl	#-3738684 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004fd8298 	cbz	x0, #416 ; -> 0x4fd8438 
004fd829c 	mov	x1, x20
004fd82a0 	mov	x2, x19
004fd82a4 	mov	x3, xzr
004fd82a8 	ldp	x20, x19, [sp, #64]
004fd82ac 	ldp	x22, x21, [sp, #48]
004fd82b0 	ldp	x30, x23, [sp, #32]
004fd82b4 	add	sp, sp, #80
004fd82b8 	b	#-4554756 ; -> 0x4b802b4 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_41
004fd82bc 	cbz	x19, #296 ; -> 0x4fd83e4 
004fd82c0 	ldr	x8, [x19, #24]
004fd82c4 	cbz	x8, #288 ; -> 0x4fd83e4 
004fd82c8 	mov	x0, xzr
004fd82cc 	bl	#64251284 ; -> 0x8d1e860 System.Security.Cryptography.SHA256::Create
004fd82d0 	add	x8, sp, #24
004fd82d4 	str	x0, [sp, #24]
004fd82d8 	stp	xzr, x8, [sp]
004fd82dc 	cbz	x0, #352 ; -> 0x4fd843c 
004fd82e0 	mov	x1, x19
004fd82e4 	mov	x2, xzr
004fd82e8 	bl	#64161444 ; -> 0x8d0898c System.Security.Cryptography.HashAlgorithm::ComputeHash
004fd82ec 	adrp	x8, #88150016 ; -> 0xa3e9000 
004fd82f0 	mov	x19, x0
004fd82f4 	ldr	x8, [x8, #408]
004fd82f8 	ldr	x0, [x8]
004fd82fc 	bl	#-10778112 ; -> 0x4590cfc 
004fd8300 	mov	x1, xzr
004fd8304 	mov	x20, x0
004fd8308 	bl	#64018988 ; -> 0x8ce5d34 System.Text.StringBuilder::.ctor
004fd830c 	cbz	x19, #316 ; -> 0x4fd8448 
004fd8310 	ldr	x8, [x19, #24]
004fd8314 	cmp	w8, #1
004fd8318 	b.lt	#92 ; -> 0x4fd8374 
004fd831c 	adrp	x22, #88420352 ; -> 0xa42b000 
004fd8320 	mov	x21, xzr
004fd8324 	and	x8, x8, #0xffffffff
004fd8328 	ldr	x22, [x22, #3664]
004fd832c 	add	x23, x19, #32
004fd8330 	cmp	x21, w8, uxtw
004fd8334 	b.hs	#256 ; -> 0x4fd8434 
004fd8338 	ldrb	w8, [x23, x21]
004fd833c 	ldr	x1, [x22]
004fd8340 	strb	w8, [sp, #20]
004fd8344 	add	x0, sp, #20
004fd8348 	mov	x2, xzr
004fd834c 	bl	#65003100 ; -> 0x8dd61a8 System.Byte::ToString
004fd8350 	mov	x1, x0
004fd8354 	cbz	x20, #220 ; -> 0x4fd8430 
004fd8358 	mov	x0, x20
004fd835c 	mov	x2, xzr
004fd8360 	bl	#64025576 ; -> 0x8ce7748 System.Text.StringBuilder::Append
004fd8364 	ldr	w8, [x19, #24]
004fd8368 	add	x21, x21, #1
004fd836c 	cmp	x21, w8, sxtw
004fd8370 	b.lt	#-64 ; -> 0x4fd8330 
004fd8374 	cbz	x20, #216 ; -> 0x4fd844c 
004fd8378 	ldr	x8, [x20]
004fd837c 	ldp	x9, x1, [x8, #360]
004fd8380 	mov	x0, x20
004fd8384 	blr	x9
004fd8388 	mov	x20, x0
004fd838c 	mov	x19, xzr
004fd8390 	add	x8, sp, #24
004fd8394 	ldr	x21, [x8]
004fd8398 	cbz	x21, #124 ; -> 0x4fd8414 
004fd839c 	adrp	x10, #88141824 ; -> 0xa3e7000 
004fd83a0 	ldr	x8, [x21]
004fd83a4 	ldr	x10, [x10, #1440]
004fd83a8 	ldrh	w9, [x8, #302]
004fd83ac 	ldr	x1, [x10]
004fd83b0 	cbz	x9, #36 ; -> 0x4fd83d4 
004fd83b4 	ldr	x10, [x8, #176]
004fd83b8 	add	x10, x10, #8
004fd83bc 	ldur	x11, [x10, #-8]
004fd83c0 	cmp	x11, x1
004fd83c4 	b.eq	#56 ; -> 0x4fd83fc 
004fd83c8 	subs	x9, x9, #1
004fd83cc 	add	x10, x10, #16
004fd83d0 	b.ne	#-20 ; -> 0x4fd83bc 
004fd83d4 	mov	x0, x21
004fd83d8 	mov	w2, wzr
004fd83dc 	bl	#-10547576 ; -> 0x45c9264 
004fd83e0 	b	#40 ; -> 0x4fd8408 
004fd83e4 	adrp	x8, #88141824 ; -> 0xa3e7000 
004fd83e8 	ldr	x8, [x8, #1248]
004fd83ec 	ldr	x8, [x8, #144]
004fd83f0 	ldr	x8, [x8, #184]
004fd83f4 	ldr	x20, [x8]
004fd83f8 	b	#32 ; -> 0x4fd8418 
004fd83fc 	ldrsw	x9, [x10]
004fd8400 	add	x8, x8, x9, lsl #4
004fd8404 	add	x0, x8, #312
004fd8408 	ldp	x8, x1, [x0]
004fd840c 	mov	x0, x21
004fd8410 	blr	x8
004fd8414 	cbnz	x19, #44 ; -> 0x4fd8440 
004fd8418 	mov	x0, x20
004fd841c 	ldp	x20, x19, [sp, #64]
004fd8420 	ldp	x22, x21, [sp, #48]
004fd8424 	ldp	x30, x23, [sp, #32]
004fd8428 	add	sp, sp, #80
004fd842c 	ret
004fd8430 	bl	#-10778404 ; -> 0x4590d0c 
004fd8434 	bl	#-10778400 ; -> 0x4590d14 
004fd8438 	bl	#-10778412 ; -> 0x4590d0c 
004fd843c 	bl	#-10778416 ; -> 0x4590d0c 
004fd8440 	mov	x0, x19
004fd8444 	bl	#-10778432 ; -> 0x4590d04 
004fd8448 	bl	#-10778428 ; -> 0x4590d0c 
004fd844c 	bl	#-10778432 ; -> 0x4590d0c 
004fd8450 	b	#36 ; -> 0x4fd8474 
004fd8454 	b	#32 ; -> 0x4fd8474 
004fd8458 	b	#28 ; -> 0x4fd8474 
004fd845c 	b	#24 ; -> 0x4fd8474 
004fd8460 	b	#20 ; -> 0x4fd8474 
004fd8464 	b	#16 ; -> 0x4fd8474 
004fd8468 	b	#12 ; -> 0x4fd8474 
004fd846c 	b	#8 ; -> 0x4fd8474 
004fd8470 	b	#4 ; -> 0x4fd8474 
004fd8474 	mov	x19, x0
004fd8478 	cmp	w1, #1
004fd847c 	b.ne	#40 ; -> 0x4fd84a4 
004fd8480 	mov	x0, x19
004fd8484 	bl	#81343484 ; -> 0x9d6b880 
004fd8488 	ldr	x19, [x0]
004fd848c 	str	x19, [sp]
004fd8490 	bl	#81343488 ; -> 0x9d6b890 
004fd8494 	ldr	x8, [sp, #8]
004fd8498 	mov	x20, xzr
004fd849c 	b	#-264 ; -> 0x4fd8394 
004fd84a0 	mov	x19, x0
004fd84a4 	mov	x0, sp
004fd84a8 	bl	#-15448812 ; -> 0x411c9bc 
004fd84ac 	mov	x0, x19
004fd84b0 	bl	#-9594004 ; -> 0x46b201c 
004fd84b4 	bl	#-15449172 ; -> 0x411c860 
