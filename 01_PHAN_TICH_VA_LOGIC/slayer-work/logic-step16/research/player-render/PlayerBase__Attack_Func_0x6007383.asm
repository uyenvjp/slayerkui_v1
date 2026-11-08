004ef5618 	sub	sp, sp, #224
004ef561c 	str	x30, [sp, #160]
004ef5620 	stp	x24, x23, [sp, #176]
004ef5624 	stp	x22, x21, [sp, #192]
004ef5628 	stp	x20, x19, [sp, #208]
004ef562c 	adrp	x20, #97386496 ; -> 0xabd5000 
004ef5630 	mov	x19, x0
004ef5634 	ldrb	w8, [x20, #1477]
004ef5638 	tbnz	w8, #0, #48 ; -> 0x4ef5668 
004ef563c 	adrp	x0, #89350144 ; -> 0xa42b000 
004ef5640 	ldr	x0, [x0, #2480]
004ef5644 	bl	#-9849828 ; -> 0x4590a60 
004ef5648 	adrp	x0, #89350144 ; -> 0xa42b000 
004ef564c 	ldr	x0, [x0, #2488]
004ef5650 	bl	#-9849840 ; -> 0x4590a60 
004ef5654 	adrp	x0, #89071616 ; -> 0xa3e7000 
004ef5658 	ldr	x0, [x0, #1192]
004ef565c 	bl	#-9849852 ; -> 0x4590a60 
004ef5660 	mov	w8, #1
004ef5664 	strb	w8, [x20, #1477]
004ef5668 	mov	w0, #32886
004ef566c 	mov	x1, xzr
004ef5670 	bl	#-2810060 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef5674 	tbz	w0, #0, #52 ; -> 0x4ef56a8 
004ef5678 	mov	w0, #32886
004ef567c 	mov	x1, xzr
004ef5680 	bl	#-2809896 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef5684 	cbz	x0, #828 ; -> 0x4ef59c0 
004ef5688 	mov	x1, x19
004ef568c 	ldp	x20, x19, [sp, #208]
004ef5690 	ldp	x22, x21, [sp, #192]
004ef5694 	mov	x2, xzr
004ef5698 	ldp	x24, x23, [sp, #176]
004ef569c 	ldr	x30, [sp, #160]
004ef56a0 	add	sp, sp, #224
004ef56a4 	b	#-3633540 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ef56a8 	adrp	x20, #89071616 ; -> 0xa3e7000 
004ef56ac 	mov	x0, x19
004ef56b0 	mov	x1, xzr
004ef56b4 	ldr	x20, [x20, #1192]
004ef56b8 	bl	#1190592 ; -> 0x5018178 Character::Attack_Func
004ef56bc 	ldr	x0, [x20]
004ef56c0 	ldr	x20, [x19, #2088]
004ef56c4 	ldr	w8, [x0, #228]
004ef56c8 	cbnz	w8, #8 ; -> 0x4ef56d0 
004ef56cc 	bl	#-9849580 ; -> 0x4590be0 
004ef56d0 	mov	x0, x20
004ef56d4 	mov	x1, xzr
004ef56d8 	mov	x2, xzr
004ef56dc 	bl	#78699444 ; -> 0x9a03290 UnityEngine.Object::op_Inequality
004ef56e0 	tbz	w0, #0, #712 ; -> 0x4ef59a8 
004ef56e4 	ldr	w8, [x19, #36]
004ef56e8 	sub	w8, w8, #10
004ef56ec 	cmp	w8, #2
004ef56f0 	b.hi	#696 ; -> 0x4ef59a8 
004ef56f4 	mov	x0, x19
004ef56f8 	bl	#-312 ; -> 0x4ef55c0 PlayerBase::AttackEvent
004ef56fc 	mov	x0, x19
004ef5700 	bl	#712 ; -> 0x4ef59c8 PlayerBase::AttackEffect
004ef5704 	mov	x0, xzr
004ef5708 	bl	#3722408 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004ef570c 	cbz	x0, #692 ; -> 0x4ef59c0 
004ef5710 	mov	x1, xzr
004ef5714 	bl	#3722816 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004ef5718 	cbz	x0, #680 ; -> 0x4ef59c0 
004ef571c 	mov	w1, #6
004ef5720 	mov	x2, xzr
004ef5724 	mov	w3, #1
004ef5728 	mov	x4, xzr
004ef572c 	add	x20, x19, #2088
004ef5730 	bl	#3753712 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004ef5734 	ldr	x0, [x20]
004ef5738 	cbz	x0, #648 ; -> 0x4ef59c0 
004ef573c 	mov	x1, xzr
004ef5740 	bl	#78688112 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ef5744 	cbz	x0, #636 ; -> 0x4ef59c0 
004ef5748 	mov	x1, xzr
004ef574c 	bl	#78701900 ; -> 0x9a03c98 UnityEngine.GameObject::get_activeSelf
004ef5750 	tbz	w0, #0, #148 ; -> 0x4ef57e4 
004ef5754 	mov	x0, x19
004ef5758 	bl	#-1824 ; -> 0x4ef5038 PlayerBase::get_isCritical
004ef575c 	tbz	w0, #0, #164 ; -> 0x4ef5800 
004ef5760 	mov	x0, x19
004ef5764 	bl	#-1684 ; -> 0x4ef50d0 PlayerBase::get_isSuperCritical
004ef5768 	ldr	x21, [x19, #2088]
004ef576c 	tbz	w0, #0, #268 ; -> 0x4ef5878 
004ef5770 	add	x8, x19, #824
004ef5774 	ldr	x9, [x19, #856]
004ef5778 	add	x0, sp, #112
004ef577c 	ldp	q0, q1, [x8]
004ef5780 	mov	x1, xzr
004ef5784 	str	x9, [sp, #144]
004ef5788 	stp	q0, q1, [sp, #112]
004ef578c 	bl	#-3819356 ; -> 0x4b51030 SilentBigInt::op_Implicit
004ef5790 	adrp	x8, #89071616 ; -> 0xa3e7000 
004ef5794 	ldr	w22, [x19, #740]
004ef5798 	mov	x23, x0
004ef579c 	ldr	x8, [x8, #1248]
004ef57a0 	mov	x24, x1
004ef57a4 	add	x1, sp, #172
004ef57a8 	str	wzr, [sp, #172]
004ef57ac 	ldr	x0, [x8, #72]
004ef57b0 	bl	#-9849800 ; -> 0x4590be8 
004ef57b4 	cbz	x21, #524 ; -> 0x4ef59c0 
004ef57b8 	ldr	x8, [x21]
004ef57bc 	mov	x7, x0
004ef57c0 	mov	w5, wzr
004ef57c4 	mov	w6, wzr
004ef57c8 	mov	x0, x21
004ef57cc 	mov	x1, x23
004ef57d0 	ldr	x9, [x8, #1208]
004ef57d4 	ldr	x8, [x8, #1216]
004ef57d8 	mov	x2, x24
004ef57dc 	mov	w3, #2
004ef57e0 	b	#260 ; -> 0x4ef58e4 
004ef57e4 	mov	x0, x19
004ef57e8 	ldp	x20, x19, [sp, #208]
004ef57ec 	ldp	x22, x21, [sp, #192]
004ef57f0 	ldr	x30, [sp, #160]
004ef57f4 	ldp	x24, x23, [sp, #176]
004ef57f8 	add	sp, sp, #224
004ef57fc 	b	#-6504 ; -> 0x4ef3e94 PlayerBase::Move_Start
004ef5800 	add	x8, x19, #744
004ef5804 	ldr	x9, [x19, #776]
004ef5808 	ldr	x21, [x19, #2088]
004ef580c 	ldp	q0, q1, [x8]
004ef5810 	add	x0, sp, #16
004ef5814 	mov	x1, xzr
004ef5818 	str	x9, [sp, #48]
004ef581c 	stp	q0, q1, [sp, #16]
004ef5820 	bl	#-3819504 ; -> 0x4b51030 SilentBigInt::op_Implicit
004ef5824 	adrp	x8, #89071616 ; -> 0xa3e7000 
004ef5828 	ldr	w22, [x19, #740]
004ef582c 	mov	x23, x0
004ef5830 	ldr	x8, [x8, #1248]
004ef5834 	mov	x24, x1
004ef5838 	add	x1, sp, #172
004ef583c 	str	wzr, [sp, #172]
004ef5840 	ldr	x0, [x8, #72]
004ef5844 	bl	#-9849948 ; -> 0x4590be8 
004ef5848 	cbz	x21, #376 ; -> 0x4ef59c0 
004ef584c 	ldr	x8, [x21]
004ef5850 	mov	x7, x0
004ef5854 	mov	w3, wzr
004ef5858 	mov	w5, wzr
004ef585c 	mov	w6, wzr
004ef5860 	mov	x0, x21
004ef5864 	ldr	x9, [x8, #1208]
004ef5868 	ldr	x8, [x8, #1216]
004ef586c 	mov	x1, x23
004ef5870 	mov	x2, x24
004ef5874 	b	#112 ; -> 0x4ef58e4 
004ef5878 	ldp	q0, q1, [x19, #784]
004ef587c 	add	x0, sp, #64
004ef5880 	ldr	x8, [x19, #816]
004ef5884 	mov	x1, xzr
004ef5888 	stp	q0, q1, [sp, #64]
004ef588c 	str	x8, [sp, #96]
004ef5890 	bl	#-3819616 ; -> 0x4b51030 SilentBigInt::op_Implicit
004ef5894 	adrp	x8, #89071616 ; -> 0xa3e7000 
004ef5898 	ldr	w22, [x19, #740]
004ef589c 	mov	x23, x0
004ef58a0 	ldr	x8, [x8, #1248]
004ef58a4 	mov	x24, x1
004ef58a8 	add	x1, sp, #172
004ef58ac 	str	wzr, [sp, #172]
004ef58b0 	ldr	x0, [x8, #72]
004ef58b4 	bl	#-9850060 ; -> 0x4590be8 
004ef58b8 	cbz	x21, #264 ; -> 0x4ef59c0 
004ef58bc 	ldr	x8, [x21]
004ef58c0 	mov	x7, x0
004ef58c4 	mov	w5, wzr
004ef58c8 	mov	w6, wzr
004ef58cc 	mov	x0, x21
004ef58d0 	mov	x1, x23
004ef58d4 	ldr	x9, [x8, #1208]
004ef58d8 	ldr	x8, [x8, #1216]
004ef58dc 	mov	x2, x24
004ef58e0 	mov	w3, #1
004ef58e4 	str	x8, [sp, #8]
004ef58e8 	mov	w4, w22
004ef58ec 	str	wzr, [sp]
004ef58f0 	blr	x9
004ef58f4 	ldr	w8, [x19, #2008]
004ef58f8 	cmp	w8, #1
004ef58fc 	b.lt	#124 ; -> 0x4ef5978 
004ef5900 	ldr	x0, [x19, #2016]
004ef5904 	cbz	x0, #188 ; -> 0x4ef59c0 
004ef5908 	adrp	x8, #89350144 ; -> 0xa42b000 
004ef590c 	ldr	x8, [x8, #2480]
004ef5910 	ldr	x1, [x8]
004ef5914 	bl	#51784996 ; -> 0x8058638 
004ef5918 	adrp	x8, #89350144 ; -> 0xa42b000 
004ef591c 	ldr	x8, [x8, #2488]
004ef5920 	ldr	x1, [x8]
004ef5924 	bl	#16835580 ; -> 0x5f03d20 
004ef5928 	cbz	x0, #152 ; -> 0x4ef59c0 
004ef592c 	ldr	x8, [x0, #24]
004ef5930 	mov	x19, x0
004ef5934 	cmp	w8, #1
004ef5938 	b.lt	#64 ; -> 0x4ef5978 
004ef593c 	mov	x21, xzr
004ef5940 	and	x8, x8, #0xffffffff
004ef5944 	add	x22, x19, #32
004ef5948 	cmp	x21, w8, uxtw
004ef594c 	b.hs	#120 ; -> 0x4ef59c4 
004ef5950 	ldr	x8, [x22, x21, lsl #3]
004ef5954 	cbz	x8, #20 ; -> 0x4ef5968 
004ef5958 	ldr	x9, [x8, #24]
004ef595c 	ldr	x0, [x8, #64]
004ef5960 	ldr	x1, [x8, #40]
004ef5964 	blr	x9
004ef5968 	ldr	w8, [x19, #24]
004ef596c 	add	x21, x21, #1
004ef5970 	cmp	x21, w8, sxtw
004ef5974 	b.lt	#-44 ; -> 0x4ef5948 
004ef5978 	ldr	x0, [x20]
004ef597c 	cbz	x0, #68 ; -> 0x4ef59c0 
004ef5980 	mov	x1, xzr
004ef5984 	bl	#78687532 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ef5988 	cbz	x0, #56 ; -> 0x4ef59c0 
004ef598c 	mov	x1, xzr
004ef5990 	bl	#78701320 ; -> 0x9a03c98 UnityEngine.GameObject::get_activeSelf
004ef5994 	tbnz	w0, #0, #20 ; -> 0x4ef59a8 
004ef5998 	mov	x0, x20
004ef599c 	mov	x1, xzr
004ef59a0 	str	xzr, [x20]
004ef59a4 	bl	#-9850784 ; -> 0x4590a04 
004ef59a8 	ldp	x20, x19, [sp, #208]
004ef59ac 	ldr	x30, [sp, #160]
004ef59b0 	ldp	x22, x21, [sp, #192]
004ef59b4 	ldp	x24, x23, [sp, #176]
004ef59b8 	add	sp, sp, #224
004ef59bc 	ret
004ef59c0 	bl	#-9850036 ; -> 0x4590d0c 
004ef59c4 	bl	#-9850032 ; -> 0x4590d14 
