004ef90c0 	sub	sp, sp, #80
004ef90c4 	stp	x30, x23, [sp, #32]
004ef90c8 	stp	x22, x21, [sp, #48]
004ef90cc 	stp	x20, x19, [sp, #64]
004ef90d0 	adrp	x20, #97370112 ; -> 0xabd5000 
004ef90d4 	mov	w21, w1
004ef90d8 	mov	x19, x0
004ef90dc 	ldrb	w8, [x20, #1496]
004ef90e0 	tbnz	w8, #0, #252 ; -> 0x4ef91dc 
004ef90e4 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef90e8 	ldr	x0, [x0, #2680]
004ef90ec 	bl	#-9864844 ; -> 0x4590a60 
004ef90f0 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef90f4 	ldr	x0, [x0, #2288]
004ef90f8 	bl	#-9864856 ; -> 0x4590a60 
004ef90fc 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef9100 	ldr	x0, [x0, #2688]
004ef9104 	bl	#-9864868 ; -> 0x4590a60 
004ef9108 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef910c 	ldr	x0, [x0, #2696]
004ef9110 	bl	#-9864880 ; -> 0x4590a60 
004ef9114 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef9118 	ldr	x0, [x0, #2704]
004ef911c 	bl	#-9864892 ; -> 0x4590a60 
004ef9120 	adrp	x0, #89104384 ; -> 0xa3f3000 
004ef9124 	ldr	x0, [x0, #3296]
004ef9128 	bl	#-9864904 ; -> 0x4590a60 
004ef912c 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef9130 	ldr	x0, [x0, #2712]
004ef9134 	bl	#-9864916 ; -> 0x4590a60 
004ef9138 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef913c 	ldr	x0, [x0, #2720]
004ef9140 	bl	#-9864928 ; -> 0x4590a60 
004ef9144 	adrp	x0, #89100288 ; -> 0xa3f2000 
004ef9148 	ldr	x0, [x0, #552]
004ef914c 	bl	#-9864940 ; -> 0x4590a60 
004ef9150 	adrp	x0, #89055232 ; -> 0xa3e7000 
004ef9154 	ldr	x0, [x0, #1192]
004ef9158 	bl	#-9864952 ; -> 0x4590a60 
004ef915c 	adrp	x0, #89325568 ; -> 0xa429000 
004ef9160 	ldr	x0, [x0, #1288]
004ef9164 	bl	#-9864964 ; -> 0x4590a60 
004ef9168 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef916c 	ldr	x0, [x0, #2728]
004ef9170 	bl	#-9864976 ; -> 0x4590a60 
004ef9174 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef9178 	ldr	x0, [x0, #2736]
004ef917c 	bl	#-9864988 ; -> 0x4590a60 
004ef9180 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef9184 	ldr	x0, [x0, #2744]
004ef9188 	bl	#-9865000 ; -> 0x4590a60 
004ef918c 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef9190 	ldr	x0, [x0, #2752]
004ef9194 	bl	#-9865012 ; -> 0x4590a60 
004ef9198 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef919c 	ldr	x0, [x0, #2760]
004ef91a0 	bl	#-9865024 ; -> 0x4590a60 
004ef91a4 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef91a8 	ldr	x0, [x0, #2768]
004ef91ac 	bl	#-9865036 ; -> 0x4590a60 
004ef91b0 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef91b4 	ldr	x0, [x0, #2776]
004ef91b8 	bl	#-9865048 ; -> 0x4590a60 
004ef91bc 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef91c0 	ldr	x0, [x0, #2784]
004ef91c4 	bl	#-9865060 ; -> 0x4590a60 
004ef91c8 	adrp	x0, #89333760 ; -> 0xa42b000 
004ef91cc 	ldr	x0, [x0, #2544]
004ef91d0 	bl	#-9865072 ; -> 0x4590a60 
004ef91d4 	mov	w8, #1
004ef91d8 	strb	w8, [x20, #1496]
004ef91dc 	mov	w0, #7565
004ef91e0 	mov	x1, xzr
004ef91e4 	bl	#-2825280 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef91e8 	tbz	w0, #0, #52 ; -> 0x4ef921c 
004ef91ec 	mov	w0, #7565
004ef91f0 	mov	x1, xzr
004ef91f4 	bl	#-2825116 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef91f8 	cbz	x0, #1772 ; -> 0x4ef98e4 
004ef91fc 	mov	x1, x19
004ef9200 	mov	w2, w21
004ef9204 	mov	x3, xzr
004ef9208 	ldp	x20, x19, [sp, #64]
004ef920c 	ldp	x22, x21, [sp, #48]
004ef9210 	ldp	x30, x23, [sp, #32]
004ef9214 	add	sp, sp, #80
004ef9218 	b	#-3418500 ; -> 0x4bb6894 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1102
004ef921c 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef9220 	ldr	x8, [x8, #2784]
004ef9224 	ldr	x0, [x8]
004ef9228 	bl	#-9864492 ; -> 0x4590cfc 
004ef922c 	mov	x1, xzr
004ef9230 	mov	x20, x0
004ef9234 	bl	#60692 ; -> 0x4f07f48 PlayerBase+<>c__DisplayClass340_0::.ctor
004ef9238 	cbz	x20, #1708 ; -> 0x4ef98e4 
004ef923c 	mov	x0, x20
004ef9240 	mov	x1, x19
004ef9244 	str	x19, [x0, #24]!
004ef9248 	stur	w21, [x0, #-8]
004ef924c 	bl	#-9865288 ; -> 0x4590a04 
004ef9250 	adrp	x21, #89100288 ; -> 0xa3f2000 
004ef9254 	ldr	x21, [x21, #552]
004ef9258 	ldr	x0, [x21]
004ef925c 	ldr	w8, [x0, #228]
004ef9260 	cbnz	w8, #12 ; -> 0x4ef926c 
004ef9264 	bl	#-9864836 ; -> 0x4590be0 
004ef9268 	ldr	x0, [x21]
004ef926c 	ldr	x8, [x0, #184]
004ef9270 	ldr	x0, [x8]
004ef9274 	cbz	x0, #1648 ; -> 0x4ef98e4 
004ef9278 	ldr	w1, [x20, #16]
004ef927c 	mov	x2, xzr
004ef9280 	bl	#-703316 ; -> 0x4e4d72c GameManager::OnBattleEnd_Analytics
004ef9284 	ldr	x8, [x21]
004ef9288 	ldr	x8, [x8, #184]
004ef928c 	ldr	x0, [x8]
004ef9290 	cbz	x0, #1620 ; -> 0x4ef98e4 
004ef9294 	mov	x1, xzr
004ef9298 	bl	#-750404 ; -> 0x4e41f54 GameManager::get_gameMode
004ef929c 	sub	w8, w0, #4
004ef92a0 	cmp	w8, #20
004ef92a4 	b.hi	#556 ; -> 0x4ef94d0 
004ef92a8 	adrp	x9, #-49827840 ; -> 0x1f74000 
004ef92ac 	add	x9, x9, #2512
004ef92b0 	adr	x10, #16 ; -> 0x4ef92c0 
004ef92b4 	ldrh	w11, [x9, x8, lsl #1]
004ef92b8 	add	x10, x10, x11, lsl #2
004ef92bc 	br	x10
004ef92c0 	adrp	x19, #89104384 ; -> 0xa3f3000 
004ef92c4 	ldr	x19, [x19, #3296]
004ef92c8 	ldr	x0, [x19]
004ef92cc 	ldr	w8, [x0, #228]
004ef92d0 	cbnz	w8, #12 ; -> 0x4ef92dc 
004ef92d4 	bl	#-9864948 ; -> 0x4590be0 
004ef92d8 	ldr	x0, [x19]
004ef92dc 	ldr	x8, [x0, #184]
004ef92e0 	ldr	x0, [x8]
004ef92e4 	cbz	x0, #1536 ; -> 0x4ef98e4 
004ef92e8 	ldp	x20, x19, [sp, #64]
004ef92ec 	mov	x1, xzr
004ef92f0 	ldp	x22, x21, [sp, #48]
004ef92f4 	ldp	x30, x23, [sp, #32]
004ef92f8 	add	sp, sp, #80
004ef92fc 	b	#557008 ; -> 0x4f812cc DungeonManager::MineClearReward_ON
004ef9300 	ldr	x0, [x21]
004ef9304 	ldr	w8, [x0, #228]
004ef9308 	cbnz	w8, #12 ; -> 0x4ef9314 
004ef930c 	bl	#-9865004 ; -> 0x4590be0 
004ef9310 	ldr	x0, [x21]
004ef9314 	adrp	x9, #89333760 ; -> 0xa42b000 
004ef9318 	ldr	x8, [x0, #184]
004ef931c 	ldr	x9, [x9, #2288]
004ef9320 	ldr	x20, [x8]
004ef9324 	ldr	x0, [x9]
004ef9328 	bl	#-9864748 ; -> 0x4590cfc 
004ef932c 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef9330 	ldr	x8, [x8, #2720]
004ef9334 	b	#972 ; -> 0x4ef9700 
004ef9338 	adrp	x20, #89104384 ; -> 0xa3f3000 
004ef933c 	ldr	x20, [x20, #3296]
004ef9340 	ldr	x0, [x20]
004ef9344 	ldr	w8, [x0, #228]
004ef9348 	cbnz	w8, #12 ; -> 0x4ef9354 
004ef934c 	bl	#-9865068 ; -> 0x4590be0 
004ef9350 	ldr	x0, [x20]
004ef9354 	adrp	x9, #89333760 ; -> 0xa42b000 
004ef9358 	ldr	x8, [x0, #184]
004ef935c 	ldr	x9, [x9, #2288]
004ef9360 	ldr	x20, [x8]
004ef9364 	ldr	x0, [x9]
004ef9368 	bl	#-9864812 ; -> 0x4590cfc 
004ef936c 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef9370 	ldr	x8, [x8, #2688]
004ef9374 	b	#908 ; -> 0x4ef9700 
004ef9378 	adrp	x22, #89333760 ; -> 0xa42b000 
004ef937c 	ldr	x22, [x22, #2544]
004ef9380 	ldr	x0, [x22]
004ef9384 	ldr	w8, [x0, #228]
004ef9388 	cbnz	w8, #12 ; -> 0x4ef9394 
004ef938c 	bl	#-9865132 ; -> 0x4590be0 
004ef9390 	ldr	x0, [x22]
004ef9394 	ldr	x8, [x0, #184]
004ef9398 	ldr	x20, [x8, #48]
004ef939c 	cbnz	x20, #1156 ; -> 0x4ef9820 
004ef93a0 	ldr	w9, [x0, #228]
004ef93a4 	cbnz	w9, #16 ; -> 0x4ef93b4 
004ef93a8 	bl	#-9865160 ; -> 0x4590be0 
004ef93ac 	ldr	x8, [x22]
004ef93b0 	ldr	x8, [x8, #184]
004ef93b4 	adrp	x9, #89333760 ; -> 0xa42b000 
004ef93b8 	ldr	x9, [x9, #2288]
004ef93bc 	ldr	x21, [x8]
004ef93c0 	ldr	x0, [x9]
004ef93c4 	bl	#-9864904 ; -> 0x4590cfc 
004ef93c8 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef93cc 	mov	x1, x21
004ef93d0 	mov	x3, xzr
004ef93d4 	ldr	x8, [x8, #2736]
004ef93d8 	mov	x20, x0
004ef93dc 	ldr	x2, [x8]
004ef93e0 	bl	#57728 ; -> 0x4f07560 PlayerBase+DefeatAction::.ctor
004ef93e4 	ldr	x8, [x22]
004ef93e8 	ldr	x0, [x8, #184]
004ef93ec 	str	x20, [x0, #48]!
004ef93f0 	b	#216 ; -> 0x4ef94c8 
004ef93f4 	adrp	x19, #89104384 ; -> 0xa3f3000 
004ef93f8 	ldr	x19, [x19, #3296]
004ef93fc 	ldr	x0, [x19]
004ef9400 	ldr	w8, [x0, #228]
004ef9404 	cbnz	w8, #12 ; -> 0x4ef9410 
004ef9408 	bl	#-9865256 ; -> 0x4590be0 
004ef940c 	ldr	x0, [x19]
004ef9410 	ldr	x8, [x0, #184]
004ef9414 	ldr	x0, [x8]
004ef9418 	cbz	x0, #1228 ; -> 0x4ef98e4 
004ef941c 	ldp	x20, x19, [sp, #64]
004ef9420 	mov	x1, xzr
004ef9424 	ldp	x22, x21, [sp, #48]
004ef9428 	ldp	x30, x23, [sp, #32]
004ef942c 	add	sp, sp, #80
004ef9430 	b	#579636 ; -> 0x4f86c64 DungeonManager::CaveClearReward_ON
004ef9434 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef9438 	ldr	x8, [x8, #2288]
004ef943c 	ldr	x0, [x8]
004ef9440 	bl	#-9865028 ; -> 0x4590cfc 
004ef9444 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef9448 	ldr	x8, [x8, #2752]
004ef944c 	b	#692 ; -> 0x4ef9700 
004ef9450 	adrp	x22, #89333760 ; -> 0xa42b000 
004ef9454 	ldr	x22, [x22, #2544]
004ef9458 	ldr	x0, [x22]
004ef945c 	ldr	w8, [x0, #228]
004ef9460 	cbnz	w8, #12 ; -> 0x4ef946c 
004ef9464 	bl	#-9865348 ; -> 0x4590be0 
004ef9468 	ldr	x0, [x22]
004ef946c 	ldr	x8, [x0, #184]
004ef9470 	ldr	x20, [x8, #64]
004ef9474 	cbnz	x20, #940 ; -> 0x4ef9820 
004ef9478 	ldr	w9, [x0, #228]
004ef947c 	cbnz	w9, #16 ; -> 0x4ef948c 
004ef9480 	bl	#-9865376 ; -> 0x4590be0 
004ef9484 	ldr	x8, [x22]
004ef9488 	ldr	x8, [x8, #184]
004ef948c 	adrp	x9, #89333760 ; -> 0xa42b000 
004ef9490 	ldr	x9, [x9, #2288]
004ef9494 	ldr	x21, [x8]
004ef9498 	ldr	x0, [x9]
004ef949c 	bl	#-9865120 ; -> 0x4590cfc 
004ef94a0 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef94a4 	mov	x1, x21
004ef94a8 	mov	x3, xzr
004ef94ac 	ldr	x8, [x8, #2744]
004ef94b0 	mov	x20, x0
004ef94b4 	ldr	x2, [x8]
004ef94b8 	bl	#57512 ; -> 0x4f07560 PlayerBase+DefeatAction::.ctor
004ef94bc 	ldr	x8, [x22]
004ef94c0 	ldr	x0, [x8, #184]
004ef94c4 	str	x20, [x0, #64]!
004ef94c8 	mov	x1, x20
004ef94cc 	b	#848 ; -> 0x4ef981c 
004ef94d0 	ldr	x0, [x21]
004ef94d4 	ldr	w8, [x0, #228]
004ef94d8 	cbnz	w8, #12 ; -> 0x4ef94e4 
004ef94dc 	bl	#-9865468 ; -> 0x4590be0 
004ef94e0 	ldr	x0, [x21]
004ef94e4 	ldr	x8, [x0, #184]
004ef94e8 	ldr	x0, [x8]
004ef94ec 	cbz	x0, #1016 ; -> 0x4ef98e4 
004ef94f0 	mov	x1, xzr
004ef94f4 	bl	#-751008 ; -> 0x4e41f54 GameManager::get_gameMode
004ef94f8 	cbnz	w0, #64 ; -> 0x4ef9538 
004ef94fc 	ldr	x0, [x21]
004ef9500 	ldr	w8, [x0, #228]
004ef9504 	cbnz	w8, #12 ; -> 0x4ef9510 
004ef9508 	bl	#-9865512 ; -> 0x4590be0 
004ef950c 	ldr	x0, [x21]
004ef9510 	ldr	x8, [x0, #184]
004ef9514 	ldr	x8, [x8]
004ef9518 	cbz	x8, #972 ; -> 0x4ef98e4 
004ef951c 	ldrb	w8, [x8, #1516]
004ef9520 	cbz	w8, #24 ; -> 0x4ef9538 
004ef9524 	mov	x0, xzr
004ef9528 	bl	#536084 ; -> 0x4f7c33c DamageInfoManager::get_Instance
004ef952c 	cbz	x0, #952 ; -> 0x4ef98e4 
004ef9530 	ldr	w8, [x20, #16]
004ef9534 	str	w8, [x0, #24]
004ef9538 	adrp	x22, #89333760 ; -> 0xa42b000 
004ef953c 	add	x1, sp, #28
004ef9540 	ldr	x22, [x22, #2680]
004ef9544 	str	wzr, [sp, #28]
004ef9548 	ldr	x0, [x22]
004ef954c 	bl	#-9865572 ; -> 0x4590be8 
004ef9550 	ldr	x8, [x22]
004ef9554 	ldr	w9, [x20, #16]
004ef9558 	mov	x1, x0
004ef955c 	mov	x23, #-1
004ef9560 	mov	x0, sp
004ef9564 	mov	x2, xzr
004ef9568 	stp	x8, x23, [sp]
004ef956c 	str	w9, [sp, #16]
004ef9570 	bl	#66806928 ; -> 0x8eafa00 System.Enum::Equals
004ef9574 	tbz	w0, #0, #732 ; -> 0x4ef9850 
004ef9578 	ldr	x0, [x21]
004ef957c 	ldr	w8, [x0, #228]
004ef9580 	cbnz	w8, #12 ; -> 0x4ef958c 
004ef9584 	bl	#-9865636 ; -> 0x4590be0 
004ef9588 	ldr	x0, [x21]
004ef958c 	ldr	x8, [x0, #184]
004ef9590 	ldr	x0, [x8]
004ef9594 	cbz	x0, #848 ; -> 0x4ef98e4 
004ef9598 	mov	x1, xzr
004ef959c 	bl	#-736260 ; -> 0x4e45998 GameManager::Defeat_StageInit
004ef95a0 	b	#816 ; -> 0x4ef98d0 
004ef95a4 	adrp	x20, #89104384 ; -> 0xa3f3000 
004ef95a8 	ldr	x20, [x20, #3296]
004ef95ac 	ldr	x0, [x20]
004ef95b0 	ldr	w8, [x0, #228]
004ef95b4 	cbnz	w8, #12 ; -> 0x4ef95c0 
004ef95b8 	bl	#-9865688 ; -> 0x4590be0 
004ef95bc 	ldr	x0, [x20]
004ef95c0 	adrp	x9, #89333760 ; -> 0xa42b000 
004ef95c4 	ldr	x8, [x0, #184]
004ef95c8 	ldr	x9, [x9, #2288]
004ef95cc 	ldr	x20, [x8]
004ef95d0 	ldr	x0, [x9]
004ef95d4 	bl	#-9865432 ; -> 0x4590cfc 
004ef95d8 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef95dc 	ldr	x8, [x8, #2696]
004ef95e0 	b	#288 ; -> 0x4ef9700 
004ef95e4 	adrp	x19, #89104384 ; -> 0xa3f3000 
004ef95e8 	ldr	x19, [x19, #3296]
004ef95ec 	ldr	x0, [x19]
004ef95f0 	ldr	w8, [x0, #228]
004ef95f4 	cbnz	w8, #12 ; -> 0x4ef9600 
004ef95f8 	bl	#-9865752 ; -> 0x4590be0 
004ef95fc 	ldr	x0, [x19]
004ef9600 	ldr	x8, [x0, #184]
004ef9604 	ldr	x0, [x8]
004ef9608 	cbz	x0, #732 ; -> 0x4ef98e4 
004ef960c 	ldp	x20, x19, [sp, #64]
004ef9610 	mov	x1, xzr
004ef9614 	ldp	x22, x21, [sp, #48]
004ef9618 	ldp	x30, x23, [sp, #32]
004ef961c 	add	sp, sp, #80
004ef9620 	b	#600112 ; -> 0x4f8be50 DungeonManager::SpiritForestReward_ON
004ef9624 	adrp	x8, #89325568 ; -> 0xa429000 
004ef9628 	ldr	x8, [x8, #1288]
004ef962c 	ldr	x0, [x8]
004ef9630 	bl	#35424892 ; -> 0x70c20ac 
004ef9634 	cbz	x0, #688 ; -> 0x4ef98e4 
004ef9638 	ldp	x20, x19, [sp, #64]
004ef963c 	mov	w1, wzr
004ef9640 	ldp	x22, x21, [sp, #48]
004ef9644 	mov	x2, xzr
004ef9648 	ldp	x30, x23, [sp, #32]
004ef964c 	add	sp, sp, #80
004ef9650 	b	#5264140 ; -> 0x53fe95c PopupSeasonRanking::GetBattleReward
004ef9654 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef9658 	ldr	x8, [x8, #2288]
004ef965c 	ldr	x0, [x8]
004ef9660 	bl	#-9865572 ; -> 0x4590cfc 
004ef9664 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef9668 	ldr	x8, [x8, #2768]
004ef966c 	b	#148 ; -> 0x4ef9700 
004ef9670 	adrp	x20, #89104384 ; -> 0xa3f3000 
004ef9674 	ldr	x20, [x20, #3296]
004ef9678 	ldr	x0, [x20]
004ef967c 	ldr	w8, [x0, #228]
004ef9680 	cbnz	w8, #12 ; -> 0x4ef968c 
004ef9684 	bl	#-9865892 ; -> 0x4590be0 
004ef9688 	ldr	x0, [x20]
004ef968c 	adrp	x9, #89333760 ; -> 0xa42b000 
004ef9690 	ldr	x8, [x0, #184]
004ef9694 	ldr	x9, [x9, #2288]
004ef9698 	ldr	x20, [x8]
004ef969c 	ldr	x0, [x9]
004ef96a0 	bl	#-9865636 ; -> 0x4590cfc 
004ef96a4 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef96a8 	ldr	x8, [x8, #2704]
004ef96ac 	b	#84 ; -> 0x4ef9700 
004ef96b0 	ldr	x0, [x21]
004ef96b4 	ldr	w8, [x0, #228]
004ef96b8 	cbnz	w8, #12 ; -> 0x4ef96c4 
004ef96bc 	bl	#-9865948 ; -> 0x4590be0 
004ef96c0 	ldr	x0, [x21]
004ef96c4 	adrp	x9, #89333760 ; -> 0xa42b000 
004ef96c8 	ldr	x8, [x0, #184]
004ef96cc 	ldr	x9, [x9, #2288]
004ef96d0 	ldr	x20, [x8]
004ef96d4 	ldr	x0, [x9]
004ef96d8 	bl	#-9865692 ; -> 0x4590cfc 
004ef96dc 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef96e0 	ldr	x8, [x8, #2712]
004ef96e4 	b	#28 ; -> 0x4ef9700 
004ef96e8 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef96ec 	ldr	x8, [x8, #2288]
004ef96f0 	ldr	x0, [x8]
004ef96f4 	bl	#-9865720 ; -> 0x4590cfc 
004ef96f8 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef96fc 	ldr	x8, [x8, #2760]
004ef9700 	ldr	x2, [x8]
004ef9704 	mov	x1, x20
004ef9708 	mov	x3, xzr
004ef970c 	mov	x21, x0
004ef9710 	bl	#56912 ; -> 0x4f07560 PlayerBase+DefeatAction::.ctor
004ef9714 	mov	x0, x19
004ef9718 	mov	x1, x21
004ef971c 	b	#272 ; -> 0x4ef982c 
004ef9720 	ldr	x0, [x21]
004ef9724 	ldr	w8, [x0, #228]
004ef9728 	cbnz	w8, #12 ; -> 0x4ef9734 
004ef972c 	bl	#-9866060 ; -> 0x4590be0 
004ef9730 	ldr	x0, [x21]
004ef9734 	ldr	x8, [x0, #184]
004ef9738 	ldr	x8, [x8]
004ef973c 	cbz	x8, #424 ; -> 0x4ef98e4 
004ef9740 	adrp	x9, #89055232 ; -> 0xa3e7000 
004ef9744 	ldr	x9, [x9, #1192]
004ef9748 	ldr	x20, [x8, #1832]
004ef974c 	ldr	x0, [x9]
004ef9750 	ldr	w9, [x0, #228]
004ef9754 	cbnz	w9, #8 ; -> 0x4ef975c 
004ef9758 	bl	#-9866104 ; -> 0x4590be0 
004ef975c 	mov	x0, x20
004ef9760 	mov	x1, xzr
004ef9764 	mov	x2, xzr
004ef9768 	bl	#78682920 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
004ef976c 	tbz	w0, #0, #52 ; -> 0x4ef97a0 
004ef9770 	ldr	x0, [x21]
004ef9774 	ldr	w8, [x0, #228]
004ef9778 	cbnz	w8, #12 ; -> 0x4ef9784 
004ef977c 	bl	#-9866140 ; -> 0x4590be0 
004ef9780 	ldr	x0, [x21]
004ef9784 	ldr	x8, [x0, #184]
004ef9788 	ldr	x8, [x8]
004ef978c 	cbz	x8, #344 ; -> 0x4ef98e4 
004ef9790 	ldr	x8, [x8, #1832]
004ef9794 	cbz	x8, #336 ; -> 0x4ef98e4 
004ef9798 	ldrb	w8, [x8, #514]
004ef979c 	cbnz	w8, #308 ; -> 0x4ef98d0 
004ef97a0 	adrp	x22, #89333760 ; -> 0xa42b000 
004ef97a4 	ldr	x22, [x22, #2544]
004ef97a8 	ldr	x0, [x22]
004ef97ac 	ldr	w8, [x0, #228]
004ef97b0 	cbnz	w8, #12 ; -> 0x4ef97bc 
004ef97b4 	bl	#-9866196 ; -> 0x4590be0 
004ef97b8 	ldr	x0, [x22]
004ef97bc 	ldr	x8, [x0, #184]
004ef97c0 	ldr	x20, [x8, #32]
004ef97c4 	cbnz	x20, #92 ; -> 0x4ef9820 
004ef97c8 	ldr	w9, [x0, #228]
004ef97cc 	cbnz	w9, #16 ; -> 0x4ef97dc 
004ef97d0 	bl	#-9866224 ; -> 0x4590be0 
004ef97d4 	ldr	x8, [x22]
004ef97d8 	ldr	x8, [x8, #184]
004ef97dc 	adrp	x9, #89333760 ; -> 0xa42b000 
004ef97e0 	ldr	x9, [x9, #2288]
004ef97e4 	ldr	x21, [x8]
004ef97e8 	ldr	x0, [x9]
004ef97ec 	bl	#-9865968 ; -> 0x4590cfc 
004ef97f0 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef97f4 	mov	x1, x21
004ef97f8 	mov	x3, xzr
004ef97fc 	ldr	x8, [x8, #2728]
004ef9800 	mov	x20, x0
004ef9804 	ldr	x2, [x8]
004ef9808 	bl	#56664 ; -> 0x4f07560 PlayerBase+DefeatAction::.ctor
004ef980c 	ldr	x8, [x22]
004ef9810 	mov	x1, x20
004ef9814 	ldr	x0, [x8, #184]
004ef9818 	str	x20, [x0, #32]!
004ef981c 	bl	#-9866776 ; -> 0x4590a04 
004ef9820 	cbz	x19, #196 ; -> 0x4ef98e4 
004ef9824 	mov	x0, x19
004ef9828 	mov	x1, x20
004ef982c 	bl	#188 ; -> 0x4ef98e8 PlayerBase::Defeat_Battle
004ef9830 	mov	x1, x0
004ef9834 	mov	x0, x19
004ef9838 	mov	x2, xzr
004ef983c 	ldp	x20, x19, [sp, #64]
004ef9840 	ldp	x22, x21, [sp, #48]
004ef9844 	ldp	x30, x23, [sp, #32]
004ef9848 	add	sp, sp, #80
004ef984c 	b	#78693296 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004ef9850 	ldr	x0, [x22]
004ef9854 	mov	w8, #1
004ef9858 	add	x1, sp, #28
004ef985c 	str	w8, [sp, #28]
004ef9860 	bl	#-9866360 ; -> 0x4590be8 
004ef9864 	ldr	x8, [x22]
004ef9868 	ldr	w9, [x20, #16]
004ef986c 	mov	x1, x0
004ef9870 	mov	x0, sp
004ef9874 	mov	x2, xzr
004ef9878 	stp	x8, x23, [sp]
004ef987c 	str	w9, [sp, #16]
004ef9880 	bl	#66806144 ; -> 0x8eafa00 System.Enum::Equals
004ef9884 	tbz	w0, #0, #76 ; -> 0x4ef98d0 
004ef9888 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef988c 	ldr	x8, [x8, #2288]
004ef9890 	ldr	x0, [x8]
004ef9894 	bl	#-9866136 ; -> 0x4590cfc 
004ef9898 	adrp	x8, #89333760 ; -> 0xa42b000 
004ef989c 	mov	x1, x20
004ef98a0 	mov	x3, xzr
004ef98a4 	ldr	x8, [x8, #2776]
004ef98a8 	mov	x21, x0
004ef98ac 	ldr	x2, [x8]
004ef98b0 	bl	#56496 ; -> 0x4f07560 PlayerBase+DefeatAction::.ctor
004ef98b4 	mov	x0, x19
004ef98b8 	mov	x1, x21
004ef98bc 	bl	#44 ; -> 0x4ef98e8 PlayerBase::Defeat_Battle
004ef98c0 	mov	x1, x0
004ef98c4 	mov	x0, x19
004ef98c8 	mov	x2, xzr
004ef98cc 	bl	#78693168 ; -> 0x9a05bfc UnityEngine.MonoBehaviour::StartCoroutine
004ef98d0 	ldp	x20, x19, [sp, #64]
004ef98d4 	ldp	x22, x21, [sp, #48]
004ef98d8 	ldp	x30, x23, [sp, #32]
004ef98dc 	add	sp, sp, #80
004ef98e0 	ret
004ef98e4 	bl	#-9866200 ; -> 0x4590d0c 
