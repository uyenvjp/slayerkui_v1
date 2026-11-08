0050b50e4 	stp	x30, x23, [sp, #-48]!
0050b50e8 	stp	x22, x21, [sp, #16]
0050b50ec 	stp	x20, x19, [sp, #32]
0050b50f0 	adrp	x20, #95555584 ; -> 0xabd6000 
0050b50f4 	mov	x19, x0
0050b50f8 	ldrb	w8, [x20, #681]
0050b50fc 	tbnz	w8, #0, #144 ; -> 0x50b518c 
0050b5100 	adrp	x0, #87236608 ; -> 0xa3e7000 
0050b5104 	ldr	x0, [x0, #2992]
0050b5108 	bl	#-11683496 ; -> 0x4590a60 
0050b510c 	adrp	x0, #87515136 ; -> 0xa42b000 
0050b5110 	ldr	x0, [x0, #2288]
0050b5114 	bl	#-11683508 ; -> 0x4590a60 
0050b5118 	adrp	x0, #87547904 ; -> 0xa433000 
0050b511c 	ldr	x0, [x0, #1480]
0050b5120 	bl	#-11683520 ; -> 0x4590a60 
0050b5124 	adrp	x0, #87543808 ; -> 0xa432000 
0050b5128 	ldr	x0, [x0, #4048]
0050b512c 	bl	#-11683532 ; -> 0x4590a60 
0050b5130 	adrp	x0, #87543808 ; -> 0xa432000 
0050b5134 	ldr	x0, [x0, #4056]
0050b5138 	bl	#-11683544 ; -> 0x4590a60 
0050b513c 	adrp	x0, #87543808 ; -> 0xa432000 
0050b5140 	ldr	x0, [x0, #1848]
0050b5144 	bl	#-11683556 ; -> 0x4590a60 
0050b5148 	adrp	x0, #87535616 ; -> 0xa430000 
0050b514c 	ldr	x0, [x0, #3624]
0050b5150 	bl	#-11683568 ; -> 0x4590a60 
0050b5154 	adrp	x0, #87281664 ; -> 0xa3f2000 
0050b5158 	ldr	x0, [x0, #552]
0050b515c 	bl	#-11683580 ; -> 0x4590a60 
0050b5160 	adrp	x0, #87445504 ; -> 0xa41a000 
0050b5164 	ldr	x0, [x0, #3856]
0050b5168 	bl	#-11683592 ; -> 0x4590a60 
0050b516c 	adrp	x0, #87535616 ; -> 0xa430000 
0050b5170 	ldr	x0, [x0, #504]
0050b5174 	bl	#-11683604 ; -> 0x4590a60 
0050b5178 	adrp	x0, #87515136 ; -> 0xa42b000 
0050b517c 	ldr	x0, [x0, #2272]
0050b5180 	bl	#-11683616 ; -> 0x4590a60 
0050b5184 	mov	w8, #1
0050b5188 	strb	w8, [x20, #681]
0050b518c 	mov	w0, #35035
0050b5190 	mov	x1, xzr
0050b5194 	bl	#-4643824 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050b5198 	tbz	w0, #0, #44 ; -> 0x50b51c4 
0050b519c 	mov	w0, #35035
0050b51a0 	mov	x1, xzr
0050b51a4 	bl	#-4643660 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050b51a8 	cbz	x0, #1096 ; -> 0x50b55f0 
0050b51ac 	mov	x1, x19
0050b51b0 	ldp	x20, x19, [sp, #32]
0050b51b4 	ldp	x22, x21, [sp, #16]
0050b51b8 	mov	x2, xzr
0050b51bc 	ldp	x30, x23, [sp], #48
0050b51c0 	b	#-5467296 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
0050b51c4 	ldr	x0, [x19, #352]
0050b51c8 	cbz	x0, #1064 ; -> 0x50b55f0 
0050b51cc 	mov	w1, #1
0050b51d0 	mov	x2, xzr
0050b51d4 	bl	#76852224 ; -> 0x99ffdd4 UnityEngine.Behaviour::set_enabled
0050b51d8 	mov	w8, #257
0050b51dc 	mov	x0, x19
0050b51e0 	strb	wzr, [x19, #514]
0050b51e4 	strb	wzr, [x19, #360]
0050b51e8 	strh	w8, [x19, #512]
0050b51ec 	strb	wzr, [x19, #680]
0050b51f0 	bl	#1028 ; -> 0x50b55f4 EnemyBase::GameTimeScale_One
0050b51f4 	ldr	x8, [x19]
0050b51f8 	mov	x0, x19
0050b51fc 	mov	w1, #1
0050b5200 	ldr	x9, [x8, #712]
0050b5204 	ldr	x2, [x8, #720]
0050b5208 	blr	x9
0050b520c 	ldr	x0, [x19, #344]
0050b5210 	cbz	x0, #992 ; -> 0x50b55f0 
0050b5214 	adrp	x8, #87515136 ; -> 0xa42b000 
0050b5218 	fmov	s0, #1.00000000
0050b521c 	mov	x2, xzr
0050b5220 	ldr	x8, [x8, #2272]
0050b5224 	ldr	x1, [x8]
0050b5228 	bl	#76462088 ; -> 0x99a0a30 UnityEngine.Animator::SetFloat
0050b522c 	adrp	x8, #-51953664 ; -> 0x1f29000 
0050b5230 	fmov	s1, #1.00000000
0050b5234 	ldr	x20, [x19, #344]
0050b5238 	ldr	s0, [x8, #1596]
0050b523c 	mov	x0, xzr
0050b5240 	bl	#76833664 ; -> 0x99fb5c0 UnityEngine.Random::Range
0050b5244 	cbz	x20, #940 ; -> 0x50b55f0 
0050b5248 	adrp	x8, #87535616 ; -> 0xa430000 
0050b524c 	mov	x0, x20
0050b5250 	mov	x2, xzr
0050b5254 	ldr	x8, [x8, #504]
0050b5258 	ldr	x1, [x8]
0050b525c 	bl	#76462036 ; -> 0x99a0a30 UnityEngine.Animator::SetFloat
0050b5260 	adrp	x22, #87445504 ; -> 0xa41a000 
0050b5264 	ldr	x22, [x22, #3856]
0050b5268 	ldr	x0, [x22]
0050b526c 	ldr	w8, [x0, #228]
0050b5270 	cbnz	w8, #12 ; -> 0x50b527c 
0050b5274 	bl	#-11683476 ; -> 0x4590be0 
0050b5278 	ldr	x0, [x22]
0050b527c 	adrp	x23, #87515136 ; -> 0xa42b000 
0050b5280 	ldr	x8, [x0, #184]
0050b5284 	ldr	x23, [x23, #2288]
0050b5288 	ldr	x20, [x8, #48]
0050b528c 	ldr	x0, [x23]
0050b5290 	bl	#-11683220 ; -> 0x4590cfc 
0050b5294 	ldr	x8, [x19]
0050b5298 	mov	x1, x19
0050b529c 	mov	x3, xzr
0050b52a0 	mov	x21, x0
0050b52a4 	ldr	x2, [x8, #1120]
0050b52a8 	bl	#-1760584 ; -> 0x4f07560 PlayerBase+DefeatAction::.ctor
0050b52ac 	mov	x0, x20
0050b52b0 	mov	x1, x21
0050b52b4 	mov	x2, xzr
0050b52b8 	bl	#65053672 ; -> 0x8ebf6a0 System.Delegate::Combine
0050b52bc 	mov	x8, x0
0050b52c0 	cbz	x0, #48 ; -> 0x50b52f0 
0050b52c4 	ldr	x1, [x23]
0050b52c8 	ldr	x9, [x8]
0050b52cc 	cmp	x9, x1
0050b52d0 	b.ne	#676 ; -> 0x50b5574 
0050b52d4 	ldr	x9, [x22]
0050b52d8 	ldr	x0, [x9, #184]
0050b52dc 	str	x8, [x0, #48]!
0050b52e0 	ldr	x9, [x8]
0050b52e4 	cmp	x9, x1
0050b52e8 	b.eq	#20 ; -> 0x50b52fc 
0050b52ec 	b	#648 ; -> 0x50b5574 
0050b52f0 	ldr	x9, [x22]
0050b52f4 	ldr	x0, [x9, #184]
0050b52f8 	str	xzr, [x0, #48]!
0050b52fc 	mov	x1, x8
0050b5300 	bl	#-11684092 ; -> 0x4590a04 
0050b5304 	adrp	x22, #87281664 ; -> 0xa3f2000 
0050b5308 	ldr	x22, [x22, #552]
0050b530c 	ldr	x0, [x22]
0050b5310 	ldr	w8, [x0, #228]
0050b5314 	cbnz	w8, #12 ; -> 0x50b5320 
0050b5318 	bl	#-11683640 ; -> 0x4590be0 
0050b531c 	ldr	x0, [x22]
0050b5320 	adrp	x23, #87236608 ; -> 0xa3e7000 
0050b5324 	ldr	x8, [x0, #184]
0050b5328 	ldr	x23, [x23, #2992]
0050b532c 	ldr	x20, [x8, #16]
0050b5330 	ldr	x0, [x23]
0050b5334 	bl	#-11683384 ; -> 0x4590cfc 
0050b5338 	adrp	x8, #87543808 ; -> 0xa432000 
0050b533c 	mov	x1, x19
0050b5340 	mov	x3, xzr
0050b5344 	ldr	x8, [x8, #4056]
0050b5348 	mov	x21, x0
0050b534c 	ldr	x2, [x8]
0050b5350 	bl	#64075532 ; -> 0x8dd0a5c System.Action::.ctor
0050b5354 	mov	x0, x20
0050b5358 	mov	x1, x21
0050b535c 	mov	x2, xzr
0050b5360 	bl	#65053504 ; -> 0x8ebf6a0 System.Delegate::Combine
0050b5364 	mov	x8, x0
0050b5368 	cbz	x0, #48 ; -> 0x50b5398 
0050b536c 	ldr	x1, [x23]
0050b5370 	ldr	x9, [x8]
0050b5374 	cmp	x9, x1
0050b5378 	b.ne	#508 ; -> 0x50b5574 
0050b537c 	ldr	x9, [x22]
0050b5380 	ldr	x0, [x9, #184]
0050b5384 	str	x8, [x0, #16]!
0050b5388 	ldr	x9, [x8]
0050b538c 	cmp	x9, x1
0050b5390 	b.eq	#20 ; -> 0x50b53a4 
0050b5394 	b	#480 ; -> 0x50b5574 
0050b5398 	ldr	x9, [x22]
0050b539c 	ldr	x0, [x9, #184]
0050b53a0 	str	xzr, [x0, #16]!
0050b53a4 	mov	x1, x8
0050b53a8 	bl	#-11684260 ; -> 0x4590a04 
0050b53ac 	ldr	x8, [x22]
0050b53b0 	ldr	x0, [x23]
0050b53b4 	ldr	x8, [x8, #184]
0050b53b8 	ldr	x20, [x8, #24]
0050b53bc 	bl	#-11683520 ; -> 0x4590cfc 
0050b53c0 	adrp	x8, #87543808 ; -> 0xa432000 
0050b53c4 	mov	x1, x19
0050b53c8 	mov	x3, xzr
0050b53cc 	ldr	x8, [x8, #4048]
0050b53d0 	mov	x21, x0
0050b53d4 	ldr	x2, [x8]
0050b53d8 	bl	#64075396 ; -> 0x8dd0a5c System.Action::.ctor
0050b53dc 	mov	x0, x20
0050b53e0 	mov	x1, x21
0050b53e4 	mov	x2, xzr
0050b53e8 	bl	#65053368 ; -> 0x8ebf6a0 System.Delegate::Combine
0050b53ec 	mov	x8, x0
0050b53f0 	cbz	x0, #48 ; -> 0x50b5420 
0050b53f4 	ldr	x1, [x23]
0050b53f8 	ldr	x9, [x8]
0050b53fc 	cmp	x9, x1
0050b5400 	b.ne	#372 ; -> 0x50b5574 
0050b5404 	ldr	x9, [x22]
0050b5408 	ldr	x0, [x9, #184]
0050b540c 	str	x8, [x0, #24]!
0050b5410 	ldr	x9, [x8]
0050b5414 	cmp	x9, x1
0050b5418 	b.eq	#20 ; -> 0x50b542c 
0050b541c 	b	#344 ; -> 0x50b5574 
0050b5420 	ldr	x9, [x22]
0050b5424 	ldr	x0, [x9, #184]
0050b5428 	str	xzr, [x0, #24]!
0050b542c 	mov	x1, x8
0050b5430 	bl	#-11684396 ; -> 0x4590a04 
0050b5434 	adrp	x22, #87535616 ; -> 0xa430000 
0050b5438 	ldr	x22, [x22, #3624]
0050b543c 	ldr	x20, [x19, #496]
0050b5440 	ldr	x0, [x22]
0050b5444 	bl	#-11683656 ; -> 0x4590cfc 
0050b5448 	ldr	x8, [x19]
0050b544c 	mov	x1, x19
0050b5450 	mov	x21, x0
0050b5454 	ldr	x2, [x8, #1312]
0050b5458 	bl	#496 ; -> 0x50b5648 EnemyBase+EnemyDead::.ctor
0050b545c 	mov	x0, x20
0050b5460 	mov	x1, x21
0050b5464 	mov	x2, xzr
0050b5468 	bl	#65053240 ; -> 0x8ebf6a0 System.Delegate::Combine
0050b546c 	mov	x8, x0
0050b5470 	cbz	x0, #40 ; -> 0x50b5498 
0050b5474 	ldr	x1, [x22]
0050b5478 	ldr	x9, [x8]
0050b547c 	cmp	x9, x1
0050b5480 	b.ne	#244 ; -> 0x50b5574 
0050b5484 	str	x8, [x19, #496]
0050b5488 	ldr	x9, [x8]
0050b548c 	cmp	x9, x1
0050b5490 	b.eq	#12 ; -> 0x50b549c 
0050b5494 	b	#224 ; -> 0x50b5574 
0050b5498 	str	xzr, [x19, #496]
0050b549c 	add	x0, x19, #496
0050b54a0 	mov	x1, x8
0050b54a4 	bl	#-11684512 ; -> 0x4590a04 
0050b54a8 	ldr	x0, [x22]
0050b54ac 	ldr	x20, [x19, #496]
0050b54b0 	bl	#-11683764 ; -> 0x4590cfc 
0050b54b4 	adrp	x8, #87543808 ; -> 0xa432000 
0050b54b8 	mov	x1, x19
0050b54bc 	mov	x21, x0
0050b54c0 	ldr	x8, [x8, #1848]
0050b54c4 	ldr	x2, [x8]
0050b54c8 	bl	#384 ; -> 0x50b5648 EnemyBase+EnemyDead::.ctor
0050b54cc 	mov	x0, x20
0050b54d0 	mov	x1, x21
0050b54d4 	mov	x2, xzr
0050b54d8 	bl	#65053128 ; -> 0x8ebf6a0 System.Delegate::Combine
0050b54dc 	mov	x8, x0
0050b54e0 	cbz	x0, #40 ; -> 0x50b5508 
0050b54e4 	ldr	x1, [x22]
0050b54e8 	ldr	x9, [x8]
0050b54ec 	cmp	x9, x1
0050b54f0 	b.ne	#132 ; -> 0x50b5574 
0050b54f4 	str	x8, [x19, #496]
0050b54f8 	ldr	x9, [x8]
0050b54fc 	cmp	x9, x1
0050b5500 	b.eq	#12 ; -> 0x50b550c 
0050b5504 	b	#112 ; -> 0x50b5574 
0050b5508 	str	xzr, [x19, #496]
0050b550c 	add	x0, x19, #496
0050b5510 	mov	x1, x8
0050b5514 	bl	#-11684624 ; -> 0x4590a04 
0050b5518 	ldr	x0, [x22]
0050b551c 	ldr	x20, [x19, #496]
0050b5520 	bl	#-11683876 ; -> 0x4590cfc 
0050b5524 	adrp	x8, #87547904 ; -> 0xa433000 
0050b5528 	mov	x1, x19
0050b552c 	mov	x21, x0
0050b5530 	ldr	x8, [x8, #1480]
0050b5534 	ldr	x2, [x8]
0050b5538 	bl	#272 ; -> 0x50b5648 EnemyBase+EnemyDead::.ctor
0050b553c 	mov	x0, x20
0050b5540 	mov	x1, x21
0050b5544 	mov	x2, xzr
0050b5548 	bl	#65053016 ; -> 0x8ebf6a0 System.Delegate::Combine
0050b554c 	mov	x8, x0
0050b5550 	cbz	x0, #44 ; -> 0x50b557c 
0050b5554 	ldr	x1, [x22]
0050b5558 	ldr	x9, [x8]
0050b555c 	cmp	x9, x1
0050b5560 	b.ne	#20 ; -> 0x50b5574 
0050b5564 	str	x8, [x19, #496]
0050b5568 	ldr	x9, [x8]
0050b556c 	cmp	x9, x1
0050b5570 	b.eq	#16 ; -> 0x50b5580 
0050b5574 	mov	x0, x8
0050b5578 	bl	#-11683052 ; -> 0x459108c 
0050b557c 	str	xzr, [x19, #496]
0050b5580 	add	x0, x19, #496
0050b5584 	mov	x1, x8
0050b5588 	bl	#-11684740 ; -> 0x4590a04 
0050b558c 	ldr	x8, [x19]
0050b5590 	mov	x0, x19
0050b5594 	ldr	x9, [x8, #1352]
0050b5598 	ldr	x1, [x8, #1360]
0050b559c 	blr	x9
0050b55a0 	mov	x0, x19
0050b55a4 	strb	wzr, [x19, #536]
0050b55a8 	bl	#316 ; -> 0x50b56e4 EnemyBase::EndSkillBurn
0050b55ac 	ldr	x8, [x19]
0050b55b0 	mov	x0, x19
0050b55b4 	mov	w1, wzr
0050b55b8 	ldr	x9, [x8, #1480]
0050b55bc 	ldr	x2, [x8, #1488]
0050b55c0 	blr	x9
0050b55c4 	mov	x0, x19
0050b55c8 	bl	#628 ; -> 0x50b583c EnemyBase::delay_Idle
0050b55cc 	ldr	x8, [x19]
0050b55d0 	mov	x1, x0
0050b55d4 	mov	x0, x19
0050b55d8 	ldp	x20, x19, [sp, #32]
0050b55dc 	ldp	x22, x21, [sp, #16]
0050b55e0 	ldr	x2, [x8, #1008]
0050b55e4 	ldr	x3, [x8, #1000]
0050b55e8 	ldp	x30, x23, [sp], #48
0050b55ec 	br	x3
0050b55f0 	bl	#-11684068 ; -> 0x4590d0c 
