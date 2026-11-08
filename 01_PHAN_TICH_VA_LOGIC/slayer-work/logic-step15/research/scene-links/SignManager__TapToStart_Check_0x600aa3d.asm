00529f7c0 	stp	x30, x21, [sp, #-32]!
00529f7c4 	stp	x20, x19, [sp, #16]
00529f7c8 	adrp	x20, #93552640 ; -> 0xabd7000 
00529f7cc 	mov	x19, x0
00529f7d0 	ldrb	w8, [x20, #389]
00529f7d4 	tbnz	w8, #0, #36 ; -> 0x529f7f8 
00529f7d8 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529f7dc 	ldr	x0, [x0, #1384]
00529f7e0 	bl	#-13692288 ; -> 0x4590a60 
00529f7e4 	adrp	x0, #85495808 ; -> 0xa428000 
00529f7e8 	ldr	x0, [x0, #1776]
00529f7ec 	bl	#-13692300 ; -> 0x4590a60 
00529f7f0 	mov	w8, #1
00529f7f4 	strb	w8, [x20, #389]
00529f7f8 	mov	w0, #1117
00529f7fc 	mov	x1, xzr
00529f800 	bl	#-6652508 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
00529f804 	tbz	w0, #0, #40 ; -> 0x529f82c 
00529f808 	mov	w0, #1117
00529f80c 	mov	x1, xzr
00529f810 	bl	#-6652344 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
00529f814 	cbz	x0, #380 ; -> 0x529f990 
00529f818 	mov	x1, x19
00529f81c 	ldp	x20, x19, [sp, #16]
00529f820 	mov	x2, xzr
00529f824 	ldp	x30, x21, [sp], #32
00529f828 	b	#-7475976 ; -> 0x4b7e520 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_0
00529f82c 	ldr	x0, [x19, #120]
00529f830 	strb	wzr, [x19, #360]
00529f834 	cbz	x0, #348 ; -> 0x529f990 
00529f838 	mov	w1, #1
00529f83c 	mov	x2, xzr
00529f840 	bl	#74859412 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f844 	ldr	x0, [x19, #72]
00529f848 	cbz	x0, #328 ; -> 0x529f990 
00529f84c 	mov	w1, wzr
00529f850 	mov	x2, xzr
00529f854 	bl	#74859392 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f858 	ldr	x0, [x19, #80]
00529f85c 	cbz	x0, #308 ; -> 0x529f990 
00529f860 	mov	w1, wzr
00529f864 	mov	x2, xzr
00529f868 	bl	#74859372 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f86c 	ldr	x0, [x19, #88]
00529f870 	cbz	x0, #288 ; -> 0x529f990 
00529f874 	mov	w1, wzr
00529f878 	mov	x2, xzr
00529f87c 	bl	#74859352 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f880 	adrp	x8, #85495808 ; -> 0xa428000 
00529f884 	ldr	x8, [x8, #1776]
00529f888 	ldr	x8, [x8]
00529f88c 	ldr	x8, [x8, #184]
00529f890 	ldr	x0, [x8]
00529f894 	cbz	x0, #252 ; -> 0x529f990 
00529f898 	mov	x1, xzr
00529f89c 	bl	#-547192 ; -> 0x5219f24 LanguageSelectManager::LanguageSelect_Init
00529f8a0 	adrp	x20, #93540352 ; -> 0xabd4000 
00529f8a4 	ldrb	w8, [x20, #1956]
00529f8a8 	cbnz	w8, #24 ; -> 0x529f8c0 
00529f8ac 	adrp	x0, #85458944 ; -> 0xa41f000 
00529f8b0 	ldr	x0, [x0, #2632]
00529f8b4 	bl	#-13692500 ; -> 0x4590a60 
00529f8b8 	mov	w8, #1
00529f8bc 	strb	w8, [x20, #1956]
00529f8c0 	adrp	x8, #85458944 ; -> 0xa41f000 
00529f8c4 	ldr	x8, [x8, #2632]
00529f8c8 	ldr	x8, [x8]
00529f8cc 	ldr	x8, [x8, #184]
00529f8d0 	ldr	x0, [x8]
00529f8d4 	cbz	x0, #188 ; -> 0x529f990 
00529f8d8 	mov	w1, #1
00529f8dc 	mov	x2, xzr
00529f8e0 	mov	w20, #1
00529f8e4 	bl	#-14572 ; -> 0x529bff8 SocialSignManager::SetActive
00529f8e8 	adrp	x21, #93540352 ; -> 0xabd4000 
00529f8ec 	ldrb	w8, [x21, #2990]
00529f8f0 	cbnz	w8, #20 ; -> 0x529f904 
00529f8f4 	adrp	x0, #85237760 ; -> 0xa3e9000 
00529f8f8 	ldr	x0, [x0, #2272]
00529f8fc 	bl	#-13692572 ; -> 0x4590a60 
00529f900 	strb	w20, [x21, #2990]
00529f904 	adrp	x8, #85237760 ; -> 0xa3e9000 
00529f908 	ldr	x8, [x8, #2272]
00529f90c 	ldr	x8, [x8]
00529f910 	ldr	x8, [x8, #184]
00529f914 	ldr	x8, [x8]
00529f918 	cbz	x8, #120 ; -> 0x529f990 
00529f91c 	ldr	x0, [x8, #32]
00529f920 	cbz	x0, #112 ; -> 0x529f990 
00529f924 	mov	x1, xzr
00529f928 	bl	#7450708 ; -> 0x59ba97c Firebase.Auth.FirebaseAuth::get_CurrentUser
00529f92c 	cbz	x0, #52 ; -> 0x529f960 
00529f930 	ldr	x0, [x19, #120]
00529f934 	cbz	x0, #92 ; -> 0x529f990 
00529f938 	mov	w1, wzr
00529f93c 	mov	x2, xzr
00529f940 	bl	#74859156 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f944 	ldr	x0, [x19, #96]
00529f948 	cbz	x0, #72 ; -> 0x529f990 
00529f94c 	ldp	x20, x19, [sp, #16]
00529f950 	mov	w1, #1
00529f954 	mov	x2, xzr
00529f958 	ldp	x30, x21, [sp], #32
00529f95c 	b	#74859128 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
00529f960 	adrp	x20, #85237760 ; -> 0xa3e9000 
00529f964 	ldr	x20, [x20, #1384]
00529f968 	ldr	x0, [x20]
00529f96c 	ldr	w8, [x0, #228]
00529f970 	cbnz	w8, #12 ; -> 0x529f97c 
00529f974 	bl	#-13692308 ; -> 0x4590be0 
00529f978 	ldr	x0, [x20]
00529f97c 	ldr	x8, [x0, #184]
00529f980 	ldrb	w8, [x8, #8]
00529f984 	cbz	w8, #16 ; -> 0x529f994 
00529f988 	ldr	x0, [x19, #72]
00529f98c 	cbnz	x0, #-64 ; -> 0x529f94c 
00529f990 	bl	#-13692036 ; -> 0x4590d0c 
00529f994 	ldr	x0, [x19, #80]
00529f998 	cbnz	x0, #-76 ; -> 0x529f94c 
00529f99c 	b	#-12 ; -> 0x529f990 
