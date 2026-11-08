004d46840 	str	x30, [sp, #-64]!
004d46844 	stp	x24, x23, [sp, #16]
004d46848 	stp	x22, x21, [sp, #32]
004d4684c 	stp	x20, x19, [sp, #48]
004d46850 	adrp	x23, #99147776 ; -> 0xabd4000 
004d46854 	mov	x20, x3
004d46858 	mov	x21, x2
004d4685c 	ldrb	w8, [x23, #2823]
004d46860 	mov	w19, w1
004d46864 	mov	x22, x0
004d46868 	tbnz	w8, #0, #48 ; -> 0x4d46898 
004d4686c 	adrp	x0, #90877952 ; -> 0xa3f1000 
004d46870 	ldr	x0, [x0, #3848]
004d46874 	bl	#-8085012 ; -> 0x4590a60 
004d46878 	adrp	x0, #90845184 ; -> 0xa3e9000 
004d4687c 	ldr	x0, [x0, #3552]
004d46880 	bl	#-8085024 ; -> 0x4590a60 
004d46884 	adrp	x0, #90869760 ; -> 0xa3ef000 
004d46888 	ldr	x0, [x0, #3632]
004d4688c 	bl	#-8085036 ; -> 0x4590a60 
004d46890 	mov	w8, #1
004d46894 	strb	w8, [x23, #2823]
004d46898 	mov	w0, #3965
004d4689c 	mov	x1, xzr
004d468a0 	bl	#-1045244 ; -> 0x4c475a4 IFix.WrappersManagerImpl::IsPatched
004d468a4 	tbz	w0, #0, #60 ; -> 0x4d468e0 
004d468a8 	mov	w0, #3965
004d468ac 	mov	x1, xzr
004d468b0 	bl	#-1045080 ; -> 0x4c47658 IFix.WrappersManagerImpl::GetPatch
004d468b4 	cbz	x0, #308 ; -> 0x4d469e8 
004d468b8 	mov	x1, x22
004d468bc 	mov	w2, w19
004d468c0 	mov	x3, x21
004d468c4 	mov	x4, x20
004d468c8 	ldp	x20, x19, [sp, #48]
004d468cc 	ldp	x22, x21, [sp, #32]
004d468d0 	mov	x5, xzr
004d468d4 	ldp	x24, x23, [sp, #16]
004d468d8 	ldr	x30, [sp], #64
004d468dc 	b	#-1745032 ; -> 0x4b9c854 IFix.ILFixDynamicMethodWrapper::__Gen_Wrap_576
004d468e0 	adrp	x8, #90877952 ; -> 0xa3f1000 
004d468e4 	ldr	x8, [x8, #3848]
004d468e8 	ldr	x0, [x8]
004d468ec 	ldr	w8, [x0, #228]
004d468f0 	cbnz	w8, #8 ; -> 0x4d468f8 
004d468f4 	bl	#-8084756 ; -> 0x4590be0 
004d468f8 	mov	w0, w19
004d468fc 	mov	x1, xzr
004d46900 	bl	#-115700 ; -> 0x4d2a50c BigIntegerCurrency::Get
004d46904 	cbz	x0, #208 ; -> 0x4d469d4 
004d46908 	mov	x1, xzr
004d4690c 	mov	x22, x0
004d46910 	bl	#-113744 ; -> 0x4d2acc0 BigIntegerCurrency::get_Value
004d46914 	adrp	x8, #90845184 ; -> 0xa3e9000 
004d46918 	mov	x23, x0
004d4691c 	mov	x24, x1
004d46920 	ldr	x8, [x8, #3552]
004d46924 	ldr	x0, [x8]
004d46928 	ldr	w8, [x0, #228]
004d4692c 	cbnz	w8, #8 ; -> 0x4d46934 
004d46930 	bl	#-8084816 ; -> 0x4590be0 
004d46934 	mov	x0, x23
004d46938 	mov	x1, x24
004d4693c 	mov	x2, x21
004d46940 	mov	x3, x20
004d46944 	mov	x4, xzr
004d46948 	bl	#71524800 ; -> 0x917cb08 System.Numerics.BigInteger::op_Subtraction
004d4694c 	mov	x2, x0
004d46950 	mov	x3, x1
004d46954 	mov	x0, x22
004d46958 	mov	x1, x2
004d4695c 	mov	x2, x3
004d46960 	mov	x3, xzr
004d46964 	bl	#-115156 ; -> 0x4d2a790 BigIntegerCurrency::set_Value
004d46968 	mov	x0, x22
004d4696c 	mov	x1, xzr
004d46970 	bl	#-113512 ; -> 0x4d2ae08 BigIntegerCurrency::get_TotalUsed
004d46974 	mov	x2, x21
004d46978 	mov	x3, x20
004d4697c 	mov	x4, xzr
004d46980 	bl	#71515544 ; -> 0x917a718 System.Numerics.BigInteger::op_Addition
004d46984 	mov	x2, x0
004d46988 	mov	x3, x1
004d4698c 	mov	x0, x22
004d46990 	mov	x1, x2
004d46994 	mov	x2, x3
004d46998 	mov	x3, xzr
004d4699c 	bl	#-114780 ; -> 0x4d2a940 BigIntegerCurrency::set_TotalUsed
004d469a0 	adrp	x8, #90869760 ; -> 0xa3ef000 
004d469a4 	ldr	x8, [x8, #3632]
004d469a8 	ldr	x8, [x8]
004d469ac 	ldr	x8, [x8, #184]
004d469b0 	ldr	x0, [x8]
004d469b4 	cbz	x0, #52 ; -> 0x4d469e8 
004d469b8 	mov	w1, w19
004d469bc 	ldp	x20, x19, [sp, #48]
004d469c0 	ldp	x22, x21, [sp, #32]
004d469c4 	mov	x2, xzr
004d469c8 	ldp	x24, x23, [sp, #16]
004d469cc 	ldr	x30, [sp], #64
004d469d0 	b	#1438876 ; -> 0x4ea5e6c GoodsDisplayManager::UpdateCurrency
004d469d4 	ldp	x20, x19, [sp, #48]
004d469d8 	ldp	x22, x21, [sp, #32]
004d469dc 	ldp	x24, x23, [sp, #16]
004d469e0 	ldr	x30, [sp], #64
004d469e4 	ret
004d469e8 	bl	#-8084700 ; -> 0x4590d0c 
