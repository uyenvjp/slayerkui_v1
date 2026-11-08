0051f10d0 	sub	sp, sp, #64
0051f10d4 	stp	x30, x21, [sp, #32]
0051f10d8 	stp	x20, x19, [sp, #48]
0051f10dc 	adrp	x21, #94261248 ; -> 0xabd6000 
0051f10e0 	mov	w19, w1
0051f10e4 	mov	w20, w0
0051f10e8 	ldrb	w8, [x21, #3157]
0051f10ec 	tbnz	w8, #0, #36 ; -> 0x51f1110 
0051f10f0 	adrp	x0, #86282240 ; -> 0xa43a000 
0051f10f4 	ldr	x0, [x0, #128]
0051f10f8 	bl	#-12977816 ; -> 0x4590a60 
0051f10fc 	adrp	x0, #85979136 ; -> 0xa3f0000 
0051f1100 	ldr	x0, [x0, #2048]
0051f1104 	bl	#-12977828 ; -> 0x4590a60 
0051f1108 	mov	w8, #1
0051f110c 	strb	w8, [x21, #3157]
0051f1110 	mov	w0, #8829
0051f1114 	mov	x1, xzr
0051f1118 	bl	#-5938036 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0051f111c 	tbz	w0, #0, #48 ; -> 0x51f114c 
0051f1120 	mov	w0, #8829
0051f1124 	mov	x1, xzr
0051f1128 	bl	#-5937872 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0051f112c 	cbz	x0, #132 ; -> 0x51f11b0 
0051f1130 	and	w2, w19, #0x1
0051f1134 	mov	w1, w20
0051f1138 	mov	x3, xzr
0051f113c 	ldp	x20, x19, [sp, #48]
0051f1140 	ldp	x30, x21, [sp, #32]
0051f1144 	add	sp, sp, #64
0051f1148 	b	#-6504960 ; -> 0x4bbcf48 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_1225
0051f114c 	adrp	x8, #86282240 ; -> 0xa43a000 
0051f1150 	adrp	x21, #85979136 ; -> 0xa3f0000 
0051f1154 	mov	x9, #-1
0051f1158 	ldr	x8, [x8, #128]
0051f115c 	add	x0, sp, #8
0051f1160 	mov	x1, xzr
0051f1164 	ldr	x8, [x8]
0051f1168 	str	x8, [sp, #8]
0051f116c 	ldr	x21, [x21, #2048]
0051f1170 	str	x9, [sp, #16]
0051f1174 	str	w20, [sp, #24]
0051f1178 	bl	#63694996 ; -> 0x8eafa0c System.Enum::ToString
0051f117c 	ldr	x8, [x21]
0051f1180 	mov	x20, x0
0051f1184 	ldr	w9, [x8, #228]
0051f1188 	cbnz	w9, #12 ; -> 0x51f1194 
0051f118c 	mov	x0, x8
0051f1190 	bl	#-12977584 ; -> 0x4590be0 
0051f1194 	and	w1, w19, #0x1
0051f1198 	mov	x0, x20
0051f119c 	bl	#24 ; -> 0x51f11b4 ServerPrefs::SetBool
0051f11a0 	ldp	x20, x19, [sp, #48]
0051f11a4 	ldp	x30, x21, [sp, #32]
0051f11a8 	add	sp, sp, #64
0051f11ac 	ret
0051f11b0 	bl	#-12977316 ; -> 0x4590d0c 
