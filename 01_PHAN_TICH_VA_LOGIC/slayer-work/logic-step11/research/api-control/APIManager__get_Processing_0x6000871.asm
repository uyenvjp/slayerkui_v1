0050c1140 	stp	x30, x19, [sp, #-16]!
0050c1144 	adrp	x19, #95506432 ; -> 0xabd6000 
0050c1148 	ldrb	w8, [x19, #781]
0050c114c 	tbnz	w8, #0, #60 ; -> 0x50c1188 
0050c1150 	adrp	x0, #87216128 ; -> 0xa3ee000 
0050c1154 	ldr	x0, [x0, #3648]
0050c1158 	bl	#-11732728 ; -> 0x4590a60 
0050c115c 	adrp	x0, #87195648 ; -> 0xa3e9000 
0050c1160 	ldr	x0, [x0, #1384]
0050c1164 	bl	#-11732740 ; -> 0x4590a60 
0050c1168 	adrp	x0, #87228416 ; -> 0xa3f1000 
0050c116c 	ldr	x0, [x0, #2976]
0050c1170 	bl	#-11732752 ; -> 0x4590a60 
0050c1174 	adrp	x0, #87498752 ; -> 0xa433000 
0050c1178 	ldr	x0, [x0, #1776]
0050c117c 	bl	#-11732764 ; -> 0x4590a60 
0050c1180 	mov	w8, #1
0050c1184 	strb	w8, [x19, #781]
0050c1188 	mov	w0, #3445
0050c118c 	mov	x1, xzr
0050c1190 	bl	#-4692972 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
0050c1194 	tbz	w0, #0, #32 ; -> 0x50c11b4 
0050c1198 	mov	w0, #3445
0050c119c 	mov	x1, xzr
0050c11a0 	bl	#-4692808 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
0050c11a4 	cbz	x0, #160 ; -> 0x50c1244 
0050c11a8 	mov	x1, xzr
0050c11ac 	ldp	x30, x19, [sp], #16
0050c11b0 	b	#-5510444 ; -> 0x4b7fc84 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_31
0050c11b4 	adrp	x19, #87216128 ; -> 0xa3ee000 
0050c11b8 	ldr	x19, [x19, #3648]
0050c11bc 	ldr	x0, [x19]
0050c11c0 	ldr	w8, [x0, #228]
0050c11c4 	cbnz	w8, #12 ; -> 0x50c11d0 
0050c11c8 	bl	#-11732456 ; -> 0x4590be0 
0050c11cc 	ldr	x0, [x19]
0050c11d0 	ldr	x8, [x0, #184]
0050c11d4 	ldrb	w9, [x8]
0050c11d8 	cbnz	w9, #44 ; -> 0x50c1204 
0050c11dc 	ldr	w9, [x0, #228]
0050c11e0 	cbnz	w9, #16 ; -> 0x50c11f0 
0050c11e4 	bl	#-11732484 ; -> 0x4590be0 
0050c11e8 	ldr	x8, [x19]
0050c11ec 	ldr	x8, [x8, #184]
0050c11f0 	ldr	x8, [x8, #32]
0050c11f4 	cbz	x8, #80 ; -> 0x50c1244 
0050c11f8 	ldr	w8, [x8, #32]
0050c11fc 	cmp	w8, #1
0050c1200 	b.lt	#60 ; -> 0x50c123c 
0050c1204 	adrp	x8, #87195648 ; -> 0xa3e9000 
0050c1208 	ldr	x8, [x8, #1384]
0050c120c 	ldr	x0, [x8]
0050c1210 	ldr	w8, [x0, #228]
0050c1214 	cbnz	w8, #8 ; -> 0x50c121c 
0050c1218 	bl	#-11732536 ; -> 0x4590be0 
0050c121c 	adrp	x8, #87498752 ; -> 0xa433000 
0050c1220 	mov	x1, xzr
0050c1224 	ldr	x8, [x8, #1776]
0050c1228 	ldr	x0, [x8]
0050c122c 	bl	#-3571376 ; -> 0x4d5937c DatabaseManager::LogError
0050c1230 	mov	w0, #1
0050c1234 	ldp	x30, x19, [sp], #16
0050c1238 	ret
0050c123c 	mov	w0, wzr
0050c1240 	b	#-12 ; -> 0x50c1234 
0050c1244 	bl	#-11732280 ; -> 0x4590d0c 
