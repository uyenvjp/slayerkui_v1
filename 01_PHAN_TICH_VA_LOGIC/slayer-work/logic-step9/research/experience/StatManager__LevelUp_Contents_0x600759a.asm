004f15e50 	stp	x30, x21, [sp, #-32]!
004f15e54 	stp	x20, x19, [sp, #16]
004f15e58 	mov	x19, x1
004f15e5c 	mov	x20, x0
004f15e60 	mov	w0, #33180
004f15e64 	mov	x1, xzr
004f15e68 	bl	#-2943172 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004f15e6c 	tbz	w0, #0, #44 ; -> 0x4f15e98 
004f15e70 	mov	w0, #33180
004f15e74 	mov	x1, xzr
004f15e78 	bl	#-2943008 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004f15e7c 	cbz	x0, #124 ; -> 0x4f15ef8 
004f15e80 	mov	x1, x20
004f15e84 	mov	x2, x19
004f15e88 	mov	x3, xzr
004f15e8c 	ldp	x20, x19, [sp, #16]
004f15e90 	ldp	x30, x21, [sp], #32
004f15e94 	b	#-3765888 ; -> 0x4b7e814 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_4
004f15e98 	ldr	x0, [x20, #120]
004f15e9c 	cbz	x0, #92 ; -> 0x4f15ef8 
004f15ea0 	mov	w1, #1
004f15ea4 	mov	x2, xzr
004f15ea8 	bl	#78568748 ; -> 0x9a03bd4 UnityEngine.GameObject::SetActive
004f15eac 	ldr	x21, [x20, #128]
004f15eb0 	mov	x0, xzr
004f15eb4 	bl	#-6257380 ; -> 0x491e3d0 STR::get_CONTENTS_OPEN_TYPE_001
004f15eb8 	cbz	x21, #64 ; -> 0x4f15ef8 
004f15ebc 	ldr	x8, [x21]
004f15ec0 	mov	x1, x0
004f15ec4 	mov	x0, x21
004f15ec8 	ldr	x9, [x8, #1512]
004f15ecc 	ldr	x2, [x8, #1520]
004f15ed0 	blr	x9
004f15ed4 	ldr	x0, [x20, #136]
004f15ed8 	cbz	x0, #32 ; -> 0x4f15ef8 
004f15edc 	ldr	x8, [x0]
004f15ee0 	mov	x1, x19
004f15ee4 	ldp	x20, x19, [sp, #16]
004f15ee8 	ldr	x2, [x8, #1520]
004f15eec 	ldr	x3, [x8, #1512]
004f15ef0 	ldp	x30, x21, [sp], #32
004f15ef4 	br	x3
004f15ef8 	bl	#-9982444 ; -> 0x4590d0c 
