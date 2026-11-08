0050d0ab4 	str	x30, [sp, #-48]!
0050d0ab8 	stp	x22, x21, [sp, #16]
0050d0abc 	stp	x20, x19, [sp, #32]
0050d0ac0 	adrp	x21, #95444992 ; -> 0xabd6000 
0050d0ac4 	mov	x20, x1
0050d0ac8 	mov	w19, w0
0050d0acc 	ldrb	w8, [x21, #917]
0050d0ad0 	tbnz	w8, #0, #72 ; -> 0x50d0b18 
0050d0ad4 	adrp	x0, #87154688 ; -> 0xa3ee000 
0050d0ad8 	ldr	x0, [x0, #3648]
0050d0adc 	bl	#-11796604 ; -> 0x4590a60 
0050d0ae0 	adrp	x0, #87441408 ; -> 0xa434000 
0050d0ae4 	ldr	x0, [x0, #1024]
0050d0ae8 	bl	#-11796616 ; -> 0x4590a60 
0050d0aec 	adrp	x0, #87166976 ; -> 0xa3f1000 
0050d0af0 	ldr	x0, [x0, #2632]
0050d0af4 	bl	#-11796628 ; -> 0x4590a60 
0050d0af8 	adrp	x0, #87441408 ; -> 0xa434000 
0050d0afc 	ldr	x0, [x0, #1032]
0050d0b00 	bl	#-11796640 ; -> 0x4590a60 
0050d0b04 	adrp	x0, #87441408 ; -> 0xa434000 
0050d0b08 	ldr	x0, [x0, #1040]
0050d0b0c 	bl	#-11796652 ; -> 0x4590a60 
0050d0b10 	mov	w8, #1
0050d0b14 	strb	w8, [x21, #917]
0050d0b18 	mov	w0, #4051
0050d0b1c 	mov	x1, xzr
0050d0b20 	bl	#-4756860 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050d0b24 	tbz	w0, #0, #48 ; -> 0x50d0b54 
0050d0b28 	mov	w0, #4051
0050d0b2c 	mov	x1, xzr
0050d0b30 	bl	#-4756696 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050d0b34 	cbz	x0, #236 ; -> 0x50d0c20 
0050d0b38 	mov	w1, w19
0050d0b3c 	mov	x2, x20
0050d0b40 	mov	x3, xzr
0050d0b44 	ldp	x20, x19, [sp, #32]
0050d0b48 	ldp	x22, x21, [sp, #16]
0050d0b4c 	ldr	x30, [sp], #48
0050d0b50 	b	#-5493412 ; -> 0x4b938ac IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_410
0050d0b54 	adrp	x8, #87441408 ; -> 0xa434000 
0050d0b58 	ldr	x8, [x8, #1040]
0050d0b5c 	ldr	x0, [x8]
0050d0b60 	bl	#-11796068 ; -> 0x4590cfc 
0050d0b64 	mov	x1, xzr
0050d0b68 	mov	x21, x0
0050d0b6c 	bl	#1028508 ; -> 0x51cbd08 APIManager+<>c__DisplayClass154_0::.ctor
0050d0b70 	cbz	x21, #176 ; -> 0x50d0c20 
0050d0b74 	mov	x0, x21
0050d0b78 	mov	x1, x20
0050d0b7c 	str	x20, [x0, #24]!
0050d0b80 	bl	#-11796860 ; -> 0x4590a04 
0050d0b84 	adrp	x8, #87441408 ; -> 0xa434000 
0050d0b88 	ldr	x8, [x8, #1024]
0050d0b8c 	ldr	x0, [x8]
0050d0b90 	bl	#-11796116 ; -> 0x4590cfc 
0050d0b94 	mov	x1, xzr
0050d0b98 	mov	x20, x0
0050d0b9c 	bl	#60173264 ; -> 0x8a3376c GrowSlayer.EnterStageRequest::.ctor
0050d0ba0 	cbz	x20, #128 ; -> 0x50d0c20 
0050d0ba4 	mov	x22, x21
0050d0ba8 	mov	x1, x20
0050d0bac 	str	w19, [x20, #24]
0050d0bb0 	str	x20, [x22, #16]!
0050d0bb4 	mov	x0, x22
0050d0bb8 	bl	#-11796916 ; -> 0x4590a04 
0050d0bbc 	adrp	x8, #87166976 ; -> 0xa3f1000 
0050d0bc0 	ldr	x8, [x8, #2632]
0050d0bc4 	ldr	x0, [x8]
0050d0bc8 	bl	#-11796172 ; -> 0x4590cfc 
0050d0bcc 	adrp	x8, #87441408 ; -> 0xa434000 
0050d0bd0 	mov	x1, x21
0050d0bd4 	mov	x3, xzr
0050d0bd8 	ldr	x8, [x8, #1032]
0050d0bdc 	mov	x19, x0
0050d0be0 	ldr	x2, [x8]
0050d0be4 	bl	#23460368 ; -> 0x67305f4 
0050d0be8 	adrp	x8, #87154688 ; -> 0xa3ee000 
0050d0bec 	ldr	x8, [x8, #3648]
0050d0bf0 	ldr	x20, [x22]
0050d0bf4 	ldr	x0, [x8]
0050d0bf8 	ldr	w8, [x0, #228]
0050d0bfc 	cbnz	w8, #8 ; -> 0x50d0c04 
0050d0c00 	bl	#-11796512 ; -> 0x4590be0 
0050d0c04 	mov	x1, x19
0050d0c08 	mov	x2, x20
0050d0c0c 	mov	w0, #119
0050d0c10 	ldp	x20, x19, [sp, #32]
0050d0c14 	ldp	x22, x21, [sp, #16]
0050d0c18 	ldr	x30, [sp], #48
0050d0c1c 	b	#-61912 ; -> 0x50c1a44 APIManager::AddRequest
0050d0c20 	bl	#-11796244 ; -> 0x4590d0c 
