00529f418 	sub	sp, sp, #64
00529f41c 	stp	x30, x23, [sp, #16]
00529f420 	stp	x22, x21, [sp, #32]
00529f424 	stp	x20, x19, [sp, #48]
00529f428 	adrp	x20, #93552640 ; -> 0xabd7000 
00529f42c 	mov	x19, x0
00529f430 	ldrb	w8, [x20, #388]
00529f434 	tbnz	w8, #0, #156 ; -> 0x529f4d0 
00529f438 	adrp	x0, #85258240 ; -> 0xa3ee000 
00529f43c 	ldr	x0, [x0, #2104]
00529f440 	bl	#-13691360 ; -> 0x4590a60 
00529f444 	adrp	x0, #85430272 ; -> 0xa418000 
00529f448 	ldr	x0, [x0, #1816]
00529f44c 	bl	#-13691372 ; -> 0x4590a60 
00529f450 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529f454 	ldr	x0, [x0, #1384]
00529f458 	bl	#-13691384 ; -> 0x4590a60 
00529f45c 	adrp	x0, #85229568 ; -> 0xa3e7000 
00529f460 	ldr	x0, [x0, #1328]
00529f464 	bl	#-13691396 ; -> 0x4590a60 
00529f468 	adrp	x0, #85430272 ; -> 0xa418000 
00529f46c 	ldr	x0, [x0, #1824]
00529f470 	bl	#-13691408 ; -> 0x4590a60 
00529f474 	adrp	x0, #85430272 ; -> 0xa418000 
00529f478 	ldr	x0, [x0, #1832]
00529f47c 	bl	#-13691420 ; -> 0x4590a60 
00529f480 	adrp	x0, #85495808 ; -> 0xa428000 
00529f484 	ldr	x0, [x0, #1776]
00529f488 	bl	#-13691432 ; -> 0x4590a60 
00529f48c 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529f490 	ldr	x0, [x0, #1728]
00529f494 	bl	#-13691444 ; -> 0x4590a60 
00529f498 	adrp	x0, #85581824 ; -> 0xa43d000 
00529f49c 	ldr	x0, [x0, #1888]
00529f4a0 	bl	#-13691456 ; -> 0x4590a60 
00529f4a4 	adrp	x0, #85581824 ; -> 0xa43d000 
00529f4a8 	ldr	x0, [x0, #1896]
00529f4ac 	bl	#-13691468 ; -> 0x4590a60 
00529f4b0 	adrp	x0, #85581824 ; -> 0xa43d000 
00529f4b4 	ldr	x0, [x0, #1904]
00529f4b8 	bl	#-13691480 ; -> 0x4590a60 
00529f4bc 	adrp	x0, #85581824 ; -> 0xa43d000 
00529f4c0 	ldr	x0, [x0, #1912]
00529f4c4 	bl	#-13691492 ; -> 0x4590a60 
00529f4c8 	mov	w8, #1
00529f4cc 	strb	w8, [x20, #388]
00529f4d0 	mov	w0, #43089
00529f4d4 	mov	x1, xzr
00529f4d8 	str	wzr, [sp, #12]
00529f4dc 	bl	#-6651704 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00529f4e0 	tbz	w0, #0, #48 ; -> 0x529f510 
00529f4e4 	mov	w0, #43089
00529f4e8 	mov	x1, xzr
00529f4ec 	bl	#-6651540 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00529f4f0 	cbz	x0, #716 ; -> 0x529f7bc 
00529f4f4 	mov	x1, x19
00529f4f8 	ldp	x20, x19, [sp, #48]
00529f4fc 	ldp	x22, x21, [sp, #32]
00529f500 	mov	x2, xzr
00529f504 	ldp	x30, x23, [sp, #16]
00529f508 	add	sp, sp, #64
00529f50c 	b	#-7475180 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00529f510 	adrp	x8, #85495808 ; -> 0xa428000 
00529f514 	ldr	x8, [x8, #1776]
00529f518 	ldr	x8, [x8]
00529f51c 	ldr	x8, [x8, #184]
00529f520 	ldr	x0, [x8]
00529f524 	cbz	x0, #664 ; -> 0x529f7bc 
00529f528 	mov	x1, xzr
00529f52c 	bl	#-546312 ; -> 0x5219f24 LanguageSelectManager::LanguageSelect_Init
00529f530 	ldr	x0, [x19, #376]
00529f534 	cbz	x0, #648 ; -> 0x529f7bc 
00529f538 	mov	w1, #1
00529f53c 	mov	x2, xzr
00529f540 	bl	#74860180 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f544 	adrp	x20, #85258240 ; -> 0xa3ee000 
00529f548 	ldr	x20, [x20, #2104]
00529f54c 	ldr	x0, [x20]
00529f550 	ldr	w8, [x0, #228]
00529f554 	cbnz	w8, #8 ; -> 0x529f55c 
00529f558 	bl	#-13691256 ; -> 0x4590be0 
00529f55c 	adrp	x21, #93519872 ; -> 0xabcf000 
00529f560 	ldrb	w8, [x21, #360]
00529f564 	cbnz	w8, #24 ; -> 0x529f57c 
00529f568 	adrp	x0, #85258240 ; -> 0xa3ee000 
00529f56c 	ldr	x0, [x0, #2104]
00529f570 	bl	#-13691664 ; -> 0x4590a60 
00529f574 	mov	w8, #1
00529f578 	strb	w8, [x21, #360]
00529f57c 	ldr	x0, [x20]
00529f580 	ldr	w8, [x0, #228]
00529f584 	cbnz	w8, #12 ; -> 0x529f590 
00529f588 	bl	#-13691304 ; -> 0x4590be0 
00529f58c 	ldr	x0, [x20]
00529f590 	ldr	x8, [x0, #184]
00529f594 	ldr	x8, [x8]
00529f598 	cbz	x8, #548 ; -> 0x529f7bc 
00529f59c 	ldr	x8, [x8, #1968]
00529f5a0 	cbz	x8, #540 ; -> 0x529f7bc 
00529f5a4 	adrp	x23, #85581824 ; -> 0xa43d000 
00529f5a8 	ldr	x23, [x23, #1896]
00529f5ac 	ldr	x20, [x8, #16]
00529f5b0 	ldr	x0, [x23]
00529f5b4 	ldr	w9, [x0, #228]
00529f5b8 	cbnz	w9, #12 ; -> 0x529f5c4 
00529f5bc 	bl	#-13691356 ; -> 0x4590be0 
00529f5c0 	ldr	x0, [x23]
00529f5c4 	ldr	x8, [x0, #184]
00529f5c8 	ldr	x21, [x8, #8]
00529f5cc 	cbnz	x21, #92 ; -> 0x529f628 
00529f5d0 	ldr	w9, [x0, #228]
00529f5d4 	cbnz	w9, #16 ; -> 0x529f5e4 
00529f5d8 	bl	#-13691384 ; -> 0x4590be0 
00529f5dc 	ldr	x8, [x23]
00529f5e0 	ldr	x8, [x8, #184]
00529f5e4 	adrp	x9, #85430272 ; -> 0xa418000 
00529f5e8 	ldr	x9, [x9, #1832]
00529f5ec 	ldr	x22, [x8]
00529f5f0 	ldr	x0, [x9]
00529f5f4 	bl	#-13691128 ; -> 0x4590cfc 
00529f5f8 	adrp	x8, #85581824 ; -> 0xa43d000 
00529f5fc 	mov	x1, x22
00529f600 	mov	x3, xzr
00529f604 	ldr	x8, [x8, #1888]
00529f608 	mov	x21, x0
00529f60c 	ldr	x2, [x8]
00529f610 	bl	#21614880 ; -> 0x673c730 
00529f614 	ldr	x8, [x23]
00529f618 	mov	x1, x21
00529f61c 	ldr	x0, [x8, #184]
00529f620 	str	x21, [x0, #8]!
00529f624 	bl	#-13691936 ; -> 0x4590a04 
00529f628 	adrp	x8, #85430272 ; -> 0xa418000 
00529f62c 	mov	x0, x20
00529f630 	mov	x1, x21
00529f634 	ldr	x8, [x8, #1824]
00529f638 	ldr	x2, [x8]
00529f63c 	bl	#12910764 ; -> 0x5eef6e8 
00529f640 	cbz	x0, #172 ; -> 0x529f6ec 
00529f644 	adrp	x8, #85237760 ; -> 0xa3e9000 
00529f648 	mov	x20, x0
00529f64c 	ldr	x8, [x8, #1384]
00529f650 	ldr	w21, [x20, #36]
00529f654 	ldr	x0, [x8]
00529f658 	ldr	w8, [x0, #228]
00529f65c 	cbnz	w8, #8 ; -> 0x529f664 
00529f660 	bl	#-13691520 ; -> 0x4590be0 
00529f664 	mov	w0, w21
00529f668 	mov	x1, xzr
00529f66c 	bl	#-5635400 ; -> 0x4d3f924 DatabaseManager::set_ChannelNumber
00529f670 	ldr	x0, [x19, #384]
00529f674 	cbz	x0, #328 ; -> 0x529f7bc 
00529f678 	ldr	x8, [x0]
00529f67c 	ldr	x1, [x20, #56]
00529f680 	ldr	x9, [x8, #1512]
00529f684 	ldr	x2, [x8, #1520]
00529f688 	blr	x9
00529f68c 	ldr	w8, [x20, #36]
00529f690 	add	x0, sp, #12
00529f694 	mov	x1, xzr
00529f698 	str	w8, [sp, #12]
00529f69c 	bl	#62738504 ; -> 0x8e746e4 System.Int32::ToString
00529f6a0 	adrp	x8, #85581824 ; -> 0xa43d000 
00529f6a4 	mov	x1, x0
00529f6a8 	mov	x2, xzr
00529f6ac 	ldr	x8, [x8, #1904]
00529f6b0 	ldr	x8, [x8]
00529f6b4 	mov	x0, x8
00529f6b8 	bl	#60999568 ; -> 0x8ccbe48 System.String::Concat
00529f6bc 	adrp	x8, #85229568 ; -> 0xa3e7000 
00529f6c0 	mov	x20, x0
00529f6c4 	ldr	x8, [x8, #1328]
00529f6c8 	ldr	x8, [x8]
00529f6cc 	ldr	w9, [x8, #228]
00529f6d0 	cbnz	w9, #12 ; -> 0x529f6dc 
00529f6d4 	mov	x0, x8
00529f6d8 	bl	#-13691640 ; -> 0x4590be0 
00529f6dc 	mov	x0, x20
00529f6e0 	mov	x1, xzr
00529f6e4 	bl	#74584564 ; -> 0x99c08d8 UnityEngine.Debug::Log
00529f6e8 	b	#152 ; -> 0x529f780 
00529f6ec 	adrp	x8, #85237760 ; -> 0xa3e9000 
00529f6f0 	ldr	x8, [x8, #1384]
00529f6f4 	ldr	x0, [x8]
00529f6f8 	ldr	w8, [x0, #228]
00529f6fc 	cbnz	w8, #8 ; -> 0x529f704 
00529f700 	bl	#-13691680 ; -> 0x4590be0 
00529f704 	mov	x0, xzr
00529f708 	bl	#-5634132 ; -> 0x4d3feb4 DatabaseManager::get_CurrentCountryCode
00529f70c 	mov	x20, x0
00529f710 	mov	x0, xzr
00529f714 	bl	#-5636008 ; -> 0x4d3f76c DatabaseManager::get_CurrentServerRegion
00529f718 	adrp	x8, #85237760 ; -> 0xa3e9000 
00529f71c 	add	x1, sp, #8
00529f720 	ldr	x8, [x8, #1728]
00529f724 	str	w0, [sp, #8]
00529f728 	ldr	x8, [x8]
00529f72c 	mov	x0, x8
00529f730 	bl	#-13691720 ; -> 0x4590be8 
00529f734 	adrp	x8, #85581824 ; -> 0xa43d000 
00529f738 	mov	x2, x0
00529f73c 	mov	x1, x20
00529f740 	ldr	x8, [x8, #1912]
00529f744 	mov	x3, xzr
00529f748 	ldr	x8, [x8]
00529f74c 	mov	x0, x8
00529f750 	bl	#61059940 ; -> 0x8cdaab4 System.String::Format
00529f754 	adrp	x8, #85229568 ; -> 0xa3e7000 
00529f758 	mov	x20, x0
00529f75c 	ldr	x8, [x8, #1328]
00529f760 	ldr	x8, [x8]
00529f764 	ldr	w9, [x8, #228]
00529f768 	cbnz	w9, #12 ; -> 0x529f774 
00529f76c 	mov	x0, x8
00529f770 	bl	#-13691792 ; -> 0x4590be0 
00529f774 	mov	x0, x20
00529f778 	mov	x1, xzr
00529f77c 	bl	#74586024 ; -> 0x99c0f24 UnityEngine.Debug::LogError
00529f780 	ldr	x0, [x19, #96]
00529f784 	cbz	x0, #56 ; -> 0x529f7bc 
00529f788 	mov	w1, #1
00529f78c 	mov	x2, xzr
00529f790 	bl	#74859588 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f794 	ldr	x0, [x19, #120]
00529f798 	cbz	x0, #36 ; -> 0x529f7bc 
00529f79c 	mov	w1, wzr
00529f7a0 	mov	x2, xzr
00529f7a4 	bl	#74859568 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f7a8 	ldp	x20, x19, [sp, #48]
00529f7ac 	ldp	x22, x21, [sp, #32]
00529f7b0 	ldp	x30, x23, [sp, #16]
00529f7b4 	add	sp, sp, #64
00529f7b8 	ret
00529f7bc 	bl	#-13691568 ; -> 0x4590d0c 
