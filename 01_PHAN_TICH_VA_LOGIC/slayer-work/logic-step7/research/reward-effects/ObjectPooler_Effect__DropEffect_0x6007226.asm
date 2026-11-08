004ec6618 	sub	sp, sp, #144
004ec661c 	stp	x30, x27, [sp, #64]
004ec6620 	stp	x26, x25, [sp, #80]
004ec6624 	stp	x24, x23, [sp, #96]
004ec6628 	stp	x22, x21, [sp, #112]
004ec662c 	stp	x20, x19, [sp, #128]
004ec6630 	adrp	x27, #97579008 ; -> 0xabd5000 
004ec6634 	mov	w22, w7
004ec6638 	mov	w23, w6
004ec663c 	ldrb	w8, [x27, #1165]
004ec6640 	mov	w24, w5
004ec6644 	mov	x20, x4
004ec6648 	mov	w21, w3
004ec664c 	mov	w25, w2
004ec6650 	mov	x26, x1
004ec6654 	mov	x19, x0
004ec6658 	tbnz	w8, #0, #96 ; -> 0x4ec66b8 
004ec665c 	adrp	x0, #89272320 ; -> 0xa3e9000 
004ec6660 	ldr	x0, [x0, #3552]
004ec6664 	bl	#-9657348 ; -> 0x4590a60 
004ec6668 	adrp	x0, #89292800 ; -> 0xa3ee000 
004ec666c 	ldr	x0, [x0, #2104]
004ec6670 	bl	#-9657360 ; -> 0x4590a60 
004ec6674 	adrp	x0, #89300992 ; -> 0xa3f0000 
004ec6678 	ldr	x0, [x0, #40]
004ec667c 	bl	#-9657372 ; -> 0x4590a60 
004ec6680 	adrp	x0, #89300992 ; -> 0xa3f0000 
004ec6684 	ldr	x0, [x0, #48]
004ec6688 	bl	#-9657384 ; -> 0x4590a60 
004ec668c 	adrp	x0, #89300992 ; -> 0xa3f0000 
004ec6690 	ldr	x0, [x0, #56]
004ec6694 	bl	#-9657396 ; -> 0x4590a60 
004ec6698 	adrp	x0, #89264128 ; -> 0xa3e7000 
004ec669c 	ldr	x0, [x0, #1192]
004ec66a0 	bl	#-9657408 ; -> 0x4590a60 
004ec66a4 	adrp	x0, #89272320 ; -> 0xa3e9000 
004ec66a8 	ldr	x0, [x0, #736]
004ec66ac 	bl	#-9657420 ; -> 0x4590a60 
004ec66b0 	mov	w8, #1
004ec66b4 	strb	w8, [x27, #1165]
004ec66b8 	mov	w0, #32684
004ec66bc 	mov	x1, xzr
004ec66c0 	bl	#-2617628 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004ec66c4 	tbz	w0, #0, #64 ; -> 0x4ec6704 
004ec66c8 	mov	w0, #32684
004ec66cc 	mov	x1, xzr
004ec66d0 	bl	#-2617464 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004ec66d4 	cbz	x0, #1040 ; -> 0x4ec6ae4 
004ec66d8 	mov	x1, x19
004ec66dc 	mov	x2, x26
004ec66e0 	mov	w3, w25
004ec66e4 	mov	w4, w21
004ec66e8 	mov	x5, x20
004ec66ec 	mov	w6, w24
004ec66f0 	mov	w7, w23
004ec66f4 	str	xzr, [sp, #8]
004ec66f8 	str	w22, [sp]
004ec66fc 	bl	#-3005516 ; -> 0x4be8ab0 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_2084
004ec6700 	b	#644 ; -> 0x4ec6984 
004ec6704 	adrp	x27, #89264128 ; -> 0xa3e7000 
004ec6708 	mov	x0, x19
004ec670c 	ldr	x27, [x27, #1192]
004ec6710 	bl	#-788 ; -> 0x4ec63fc ObjectPooler_Effect::GetDropObject
004ec6714 	ldr	x8, [x27]
004ec6718 	mov	x19, x0
004ec671c 	ldr	w9, [x8, #228]
004ec6720 	cbnz	w9, #12 ; -> 0x4ec672c 
004ec6724 	mov	x0, x8
004ec6728 	bl	#-9657160 ; -> 0x4590be0 
004ec672c 	mov	x0, x19
004ec6730 	mov	x1, xzr
004ec6734 	mov	x2, xzr
004ec6738 	bl	#78899288 ; -> 0x9a04f90 UnityEngine.Object::op_Equality
004ec673c 	tbnz	w0, #0, #584 ; -> 0x4ec6984 
004ec6740 	cbz	x19, #932 ; -> 0x4ec6ae4 
004ec6744 	mov	x0, x19
004ec6748 	mov	x1, xzr
004ec674c 	bl	#78880404 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004ec6750 	cbz	x26, #916 ; -> 0x4ec6ae4 
004ec6754 	mov	x27, x0
004ec6758 	mov	x0, x26
004ec675c 	mov	x1, xzr
004ec6760 	bl	#78957004 ; -> 0x9a1312c UnityEngine.Transform::get_position
004ec6764 	cbz	x27, #896 ; -> 0x4ec6ae4 
004ec6768 	mov	x0, x27
004ec676c 	mov	x1, xzr
004ec6770 	bl	#78957208 ; -> 0x9a13208 UnityEngine.Transform::set_position
004ec6774 	mov	x0, x19
004ec6778 	mov	x1, xzr
004ec677c 	bl	#78880356 ; -> 0x9a005e0 UnityEngine.Component::get_transform
004ec6780 	adrp	x27, #97554432 ; -> 0xabcf000 
004ec6784 	mov	x26, x0
004ec6788 	ldrb	w8, [x27, #362]
004ec678c 	cbnz	w8, #24 ; -> 0x4ec67a4 
004ec6790 	adrp	x0, #89268224 ; -> 0xa3e8000 
004ec6794 	ldr	x0, [x0, #632]
004ec6798 	bl	#-9657656 ; -> 0x4590a60 
004ec679c 	mov	w8, #1
004ec67a0 	strb	w8, [x27, #362]
004ec67a4 	cbz	x26, #832 ; -> 0x4ec6ae4 
004ec67a8 	adrp	x8, #89268224 ; -> 0xa3e8000 
004ec67ac 	mov	x0, x26
004ec67b0 	mov	x1, xzr
004ec67b4 	ldr	x8, [x8, #632]
004ec67b8 	ldr	x8, [x8]
004ec67bc 	ldr	x8, [x8, #184]
004ec67c0 	ldp	s1, s2, [x8, #16]
004ec67c4 	ldr	s0, [x8, #12]
004ec67c8 	bl	#78959236 ; -> 0x9a13a4c UnityEngine.Transform::set_localScale
004ec67cc 	movi	v0.2d, #0000000000000000
004ec67d0 	add	x0, sp, #16
004ec67d4 	mov	w1, #7
004ec67d8 	mov	w2, w21
004ec67dc 	mov	x3, xzr
004ec67e0 	stp	w25, w21, [x19, #72]
004ec67e4 	str	xzr, [sp, #48]
004ec67e8 	stp	q0, q0, [sp, #16]
004ec67ec 	bl	#-3627288 ; -> 0x4b50ed4 SilentBigInt::.ctor
004ec67f0 	ldp	q0, q1, [sp, #16]
004ec67f4 	add	x0, x19, #96
004ec67f8 	ldr	x8, [sp, #48]
004ec67fc 	mov	x1, xzr
004ec6800 	stur	q0, [x19, #88]
004ec6804 	stur	q1, [x19, #104]
004ec6808 	str	x8, [x19, #120]
004ec680c 	bl	#-9657864 ; -> 0x4590a04 
004ec6810 	adrp	x8, #89272320 ; -> 0xa3e9000 
004ec6814 	ldr	x8, [x8, #3552]
004ec6818 	ldr	x0, [x8]
004ec681c 	ldr	w8, [x0, #228]
004ec6820 	cbnz	w8, #8 ; -> 0x4ec6828 
004ec6824 	bl	#-9657412 ; -> 0x4590be0 
004ec6828 	mov	x0, x20
004ec682c 	mov	x1, xzr
004ec6830 	bl	#69951724 ; -> 0x917c91c System.Numerics.BigInteger::op_Implicit
004ec6834 	mov	x2, x0
004ec6838 	mov	x3, x1
004ec683c 	add	x0, x19, #88
004ec6840 	mov	x1, x2
004ec6844 	mov	x2, x3
004ec6848 	mov	x3, xzr
004ec684c 	bl	#-3627604 ; -> 0x4b50df8 SilentBigInt::set_Value
004ec6850 	cmp	w21, #99
004ec6854 	stp	w24, w23, [x19, #40]
004ec6858 	str	w22, [x19, #48]
004ec685c 	b.le	#168 ; -> 0x4ec6904 
004ec6860 	cmp	w21, #950
004ec6864 	b.gt	#84 ; -> 0x4ec68b8 
004ec6868 	cmp	w21, #102
004ec686c 	b.gt	#308 ; -> 0x4ec69a0 
004ec6870 	cmp	w21, #100
004ec6874 	b.eq	#364 ; -> 0x4ec69e0 
004ec6878 	cmp	w21, #101
004ec687c 	b.ne	#236 ; -> 0x4ec6968 
004ec6880 	adrp	x8, #89292800 ; -> 0xa3ee000 
004ec6884 	ldr	x8, [x8, #2104]
004ec6888 	ldr	x0, [x8]
004ec688c 	ldr	w8, [x0, #228]
004ec6890 	cbnz	w8, #8 ; -> 0x4ec6898 
004ec6894 	bl	#-9657524 ; -> 0x4590be0 
004ec6898 	mov	x0, xzr
004ec689c 	bl	#-6781352 ; -> 0x484eef4 
004ec68a0 	cbz	x0, #580 ; -> 0x4ec6ae4 
004ec68a4 	ldr	x0, [x0, #40]
004ec68a8 	cbz	x0, #572 ; -> 0x4ec6ae4 
004ec68ac 	adrp	x8, #89300992 ; -> 0xa3f0000 
004ec68b0 	ldr	x8, [x8, #56]
004ec68b4 	b	#408 ; -> 0x4ec6a4c 
004ec68b8 	sub	w8, w21, #3000
004ec68bc 	cmp	w8, #2
004ec68c0 	b.lo	#68 ; -> 0x4ec6904 
004ec68c4 	cmp	w21, #951
004ec68c8 	b.eq	#492 ; -> 0x4ec6ab4 
004ec68cc 	cmp	w21, #952
004ec68d0 	b.ne	#152 ; -> 0x4ec6968 
004ec68d4 	adrp	x20, #89272320 ; -> 0xa3e9000 
004ec68d8 	ldr	x20, [x20, #736]
004ec68dc 	ldr	x0, [x20]
004ec68e0 	ldr	w8, [x0, #228]
004ec68e4 	cbnz	w8, #12 ; -> 0x4ec68f0 
004ec68e8 	bl	#-9657608 ; -> 0x4590be0 
004ec68ec 	ldr	x0, [x20]
004ec68f0 	ldr	x8, [x0, #184]
004ec68f4 	ldr	x0, [x8]
004ec68f8 	cbz	x0, #492 ; -> 0x4ec6ae4 
004ec68fc 	mov	w1, #952
004ec6900 	b	#48 ; -> 0x4ec6930 
004ec6904 	adrp	x20, #89272320 ; -> 0xa3e9000 
004ec6908 	ldr	x20, [x20, #736]
004ec690c 	ldr	x0, [x20]
004ec6910 	ldr	w8, [x0, #228]
004ec6914 	cbnz	w8, #12 ; -> 0x4ec6920 
004ec6918 	bl	#-9657656 ; -> 0x4590be0 
004ec691c 	ldr	x0, [x20]
004ec6920 	ldr	x8, [x0, #184]
004ec6924 	ldr	x0, [x8]
004ec6928 	cbz	x0, #444 ; -> 0x4ec6ae4 
004ec692c 	mov	w1, w21
004ec6930 	mov	w2, wzr
004ec6934 	mov	x3, xzr
004ec6938 	bl	#-1722356 ; -> 0x4d22144 UsefulManager::GoodsSprite
004ec693c 	mov	x21, x19
004ec6940 	mov	x1, x0
004ec6944 	str	x0, [x21, #80]!
004ec6948 	mov	x0, x21
004ec694c 	bl	#-9658184 ; -> 0x4590a04 
004ec6950 	ldur	x20, [x21, #-24]
004ec6954 	cbz	x20, #400 ; -> 0x4ec6ae4 
004ec6958 	ldr	x1, [x21]
004ec695c 	mov	x0, x20
004ec6960 	mov	x2, xzr
004ec6964 	bl	#78559188 ; -> 0x99b2138 UnityEngine.SpriteRenderer::set_sprite
004ec6968 	mov	x0, x19
004ec696c 	mov	x1, xzr
004ec6970 	bl	#78880064 ; -> 0x9a006b0 UnityEngine.Component::get_gameObject
004ec6974 	cbz	x0, #368 ; -> 0x4ec6ae4 
004ec6978 	mov	w1, #1
004ec697c 	mov	x2, xzr
004ec6980 	bl	#78893652 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004ec6984 	ldp	x20, x19, [sp, #128]
004ec6988 	ldp	x22, x21, [sp, #112]
004ec698c 	ldp	x24, x23, [sp, #96]
004ec6990 	ldp	x26, x25, [sp, #80]
004ec6994 	ldp	x30, x27, [sp, #64]
004ec6998 	add	sp, sp, #144
004ec699c 	ret
004ec69a0 	cmp	w21, #103
004ec69a4 	b.eq	#116 ; -> 0x4ec6a18 
004ec69a8 	cmp	w21, #900
004ec69ac 	b.ne	#-68 ; -> 0x4ec6968 
004ec69b0 	adrp	x20, #89272320 ; -> 0xa3e9000 
004ec69b4 	ldr	x20, [x20, #736]
004ec69b8 	ldr	x0, [x20]
004ec69bc 	ldr	w8, [x0, #228]
004ec69c0 	cbnz	w8, #12 ; -> 0x4ec69cc 
004ec69c4 	bl	#-9657828 ; -> 0x4590be0 
004ec69c8 	ldr	x0, [x20]
004ec69cc 	ldr	x8, [x0, #184]
004ec69d0 	ldr	x0, [x8]
004ec69d4 	cbz	x0, #272 ; -> 0x4ec6ae4 
004ec69d8 	mov	w1, #900
004ec69dc 	b	#-172 ; -> 0x4ec6930 
004ec69e0 	adrp	x8, #89292800 ; -> 0xa3ee000 
004ec69e4 	ldr	x8, [x8, #2104]
004ec69e8 	ldr	x0, [x8]
004ec69ec 	ldr	w8, [x0, #228]
004ec69f0 	cbnz	w8, #8 ; -> 0x4ec69f8 
004ec69f4 	bl	#-9657876 ; -> 0x4590be0 
004ec69f8 	mov	x0, xzr
004ec69fc 	bl	#-6781704 ; -> 0x484eef4 
004ec6a00 	cbz	x0, #228 ; -> 0x4ec6ae4 
004ec6a04 	ldr	x0, [x0, #48]
004ec6a08 	cbz	x0, #220 ; -> 0x4ec6ae4 
004ec6a0c 	adrp	x8, #89300992 ; -> 0xa3f0000 
004ec6a10 	ldr	x8, [x8, #48]
004ec6a14 	b	#56 ; -> 0x4ec6a4c 
004ec6a18 	adrp	x8, #89292800 ; -> 0xa3ee000 
004ec6a1c 	ldr	x8, [x8, #2104]
004ec6a20 	ldr	x0, [x8]
004ec6a24 	ldr	w8, [x0, #228]
004ec6a28 	cbnz	w8, #8 ; -> 0x4ec6a30 
004ec6a2c 	bl	#-9657932 ; -> 0x4590be0 
004ec6a30 	mov	x0, xzr
004ec6a34 	bl	#-6781760 ; -> 0x484eef4 
004ec6a38 	cbz	x0, #172 ; -> 0x4ec6ae4 
004ec6a3c 	ldr	x0, [x0, #56]
004ec6a40 	cbz	x0, #164 ; -> 0x4ec6ae4 
004ec6a44 	adrp	x8, #89300992 ; -> 0xa3f0000 
004ec6a48 	ldr	x8, [x8, #40]
004ec6a4c 	ldr	x2, [x8]
004ec6a50 	mov	w1, w20
004ec6a54 	bl	#51977536 ; -> 0x8058794 
004ec6a58 	cbz	x0, #140 ; -> 0x4ec6ae4 
004ec6a5c 	ldr	x8, [x0]
004ec6a60 	ldp	x9, x1, [x8, #424]
004ec6a64 	blr	x9
004ec6a68 	mov	x20, x19
004ec6a6c 	mov	x1, x0
004ec6a70 	str	x0, [x20, #80]!
004ec6a74 	mov	x0, x20
004ec6a78 	bl	#-9658484 ; -> 0x4590a04 
004ec6a7c 	adrp	x21, #89272320 ; -> 0xa3e9000 
004ec6a80 	ldr	x21, [x21, #736]
004ec6a84 	ldur	x20, [x20, #-24]
004ec6a88 	ldr	x0, [x21]
004ec6a8c 	ldr	w8, [x0, #228]
004ec6a90 	cbnz	w8, #12 ; -> 0x4ec6a9c 
004ec6a94 	bl	#-9658036 ; -> 0x4590be0 
004ec6a98 	ldr	x0, [x21]
004ec6a9c 	ldr	x8, [x0, #184]
004ec6aa0 	ldr	x8, [x8]
004ec6aa4 	cbz	x8, #64 ; -> 0x4ec6ae4 
004ec6aa8 	cbz	x20, #60 ; -> 0x4ec6ae4 
004ec6aac 	add	x21, x8, #168
004ec6ab0 	b	#-344 ; -> 0x4ec6958 
004ec6ab4 	adrp	x20, #89272320 ; -> 0xa3e9000 
004ec6ab8 	ldr	x20, [x20, #736]
004ec6abc 	ldr	x0, [x20]
004ec6ac0 	ldr	w8, [x0, #228]
004ec6ac4 	cbnz	w8, #12 ; -> 0x4ec6ad0 
004ec6ac8 	bl	#-9658088 ; -> 0x4590be0 
004ec6acc 	ldr	x0, [x20]
004ec6ad0 	ldr	x8, [x0, #184]
004ec6ad4 	ldr	x0, [x8]
004ec6ad8 	cbz	x0, #12 ; -> 0x4ec6ae4 
004ec6adc 	mov	w1, #951
004ec6ae0 	b	#-432 ; -> 0x4ec6930 
004ec6ae4 	bl	#-9657816 ; -> 0x4590d0c 
