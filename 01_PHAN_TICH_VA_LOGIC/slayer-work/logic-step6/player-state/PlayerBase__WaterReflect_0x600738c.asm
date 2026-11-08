004ef6584 	str	x30, [sp, #-32]!
004ef6588 	stp	x20, x19, [sp, #16]
004ef658c 	adrp	x20, #97382400 ; -> 0xabd5000 
004ef6590 	mov	x19, x0
004ef6594 	ldrb	w8, [x20, #1481]
004ef6598 	tbnz	w8, #0, #72 ; -> 0x4ef65e0 
004ef659c 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef65a0 	ldr	x0, [x0, #2440]
004ef65a4 	bl	#-9853764 ; -> 0x4590a60 
004ef65a8 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef65ac 	ldr	x0, [x0, #2584]
004ef65b0 	bl	#-9853776 ; -> 0x4590a60 
004ef65b4 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef65b8 	ldr	x0, [x0, #2592]
004ef65bc 	bl	#-9853788 ; -> 0x4590a60 
004ef65c0 	adrp	x0, #89346048 ; -> 0xa42b000 
004ef65c4 	ldr	x0, [x0, #2600]
004ef65c8 	bl	#-9853800 ; -> 0x4590a60 
004ef65cc 	adrp	x0, #89251840 ; -> 0xa414000 
004ef65d0 	ldr	x0, [x0, #3032]
004ef65d4 	bl	#-9853812 ; -> 0x4590a60 
004ef65d8 	mov	w8, #1
004ef65dc 	strb	w8, [x20, #1481]
004ef65e0 	mov	w0, #32895
004ef65e4 	mov	x1, xzr
004ef65e8 	bl	#-2814020 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ef65ec 	tbz	w0, #0, #40 ; -> 0x4ef6614 
004ef65f0 	mov	w0, #32895
004ef65f4 	mov	x1, xzr
004ef65f8 	bl	#-2813856 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ef65fc 	cbz	x0, #300 ; -> 0x4ef6728 
004ef6600 	mov	x1, x19
004ef6604 	ldp	x20, x19, [sp, #16]
004ef6608 	mov	x2, xzr
004ef660c 	ldr	x30, [sp], #32
004ef6610 	b	#-3637488 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
004ef6614 	ldr	x0, [x19, #168]
004ef6618 	cbz	x0, #272 ; -> 0x4ef6728 
004ef661c 	mov	x1, xzr
004ef6620 	bl	#78760716 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ef6624 	adrp	x9, #89346048 ; -> 0xa42b000 
004ef6628 	adrp	x10, #89251840 ; -> 0xa414000 
004ef662c 	ldr	x8, [x19]
004ef6630 	ldr	x9, [x9, #2600]
004ef6634 	ldr	x10, [x10, #3032]
004ef6638 	mov	x0, x19
004ef663c 	ldr	x3, [x8, #704]
004ef6640 	ldr	x1, [x9]
004ef6644 	ldr	x2, [x10]
004ef6648 	ldr	x9, [x8, #696]
004ef664c 	blr	x9
004ef6650 	ldr	w8, [x19, #452]
004ef6654 	cmp	w8, #1
004ef6658 	b.lt	#196 ; -> 0x4ef671c 
004ef665c 	ldr	x0, [x19, #456]
004ef6660 	str	wzr, [x19, #452]
004ef6664 	cbz	x0, #196 ; -> 0x4ef6728 
004ef6668 	ldr	w8, [x0, #24]
004ef666c 	cmp	w8, #1
004ef6670 	b.lt	#172 ; -> 0x4ef671c 
004ef6674 	adrp	x8, #89346048 ; -> 0xa42b000 
004ef6678 	mov	w1, wzr
004ef667c 	ldr	x8, [x8, #2592]
004ef6680 	ldr	x2, [x8]
004ef6684 	bl	#30483260 ; -> 0x6c089c0 
004ef6688 	cbz	x0, #24 ; -> 0x4ef66a0 
004ef668c 	ldr	x8, [x0, #64]
004ef6690 	ldr	x9, [x0, #24]
004ef6694 	ldr	x1, [x0, #40]
004ef6698 	mov	x0, x8
004ef669c 	blr	x9
004ef66a0 	ldr	x8, [x19, #456]
004ef66a4 	cbz	x8, #132 ; -> 0x4ef6728 
004ef66a8 	ldp	w2, w9, [x8, #24]
004ef66ac 	add	w9, w9, #1
004ef66b0 	cmp	w2, #1
004ef66b4 	stp	wzr, w9, [x8, #24]
004ef66b8 	b.lt	#20 ; -> 0x4ef66cc 
004ef66bc 	ldr	x0, [x8, #16]
004ef66c0 	mov	w1, wzr
004ef66c4 	mov	x3, xzr
004ef66c8 	bl	#66739784 ; -> 0x8e9c510 System.Array::Clear
004ef66cc 	mov	x0, xzr
004ef66d0 	bl	#3718368 ; -> 0x52823b0 SeasonSkillEventManager::get_Instance
004ef66d4 	cbz	x0, #84 ; -> 0x4ef6728 
004ef66d8 	mov	x1, xzr
004ef66dc 	bl	#3718776 ; -> 0x5282554 SeasonSkillEventManager::get_Quest
004ef66e0 	adrp	x8, #89067520 ; -> 0xa3e7000 
004ef66e4 	mov	x19, x0
004ef66e8 	mov	w9, #1014
004ef66ec 	ldr	x8, [x8, #1248]
004ef66f0 	add	x1, sp, #12
004ef66f4 	str	w9, [sp, #12]
004ef66f8 	ldr	x0, [x8, #72]
004ef66fc 	bl	#-9853716 ; -> 0x4590be8 
004ef6700 	cbz	x19, #40 ; -> 0x4ef6728 
004ef6704 	mov	x2, x0
004ef6708 	mov	x0, x19
004ef670c 	mov	w1, #17
004ef6710 	mov	w3, #1
004ef6714 	mov	x4, xzr
004ef6718 	bl	#3749640 ; -> 0x5289e20 SeasonSkillEventManager_Quest::TryAddCount
004ef671c 	ldp	x20, x19, [sp, #16]
004ef6720 	ldr	x30, [sp], #32
004ef6724 	ret
004ef6728 	bl	#-9853468 ; -> 0x4590d0c 
