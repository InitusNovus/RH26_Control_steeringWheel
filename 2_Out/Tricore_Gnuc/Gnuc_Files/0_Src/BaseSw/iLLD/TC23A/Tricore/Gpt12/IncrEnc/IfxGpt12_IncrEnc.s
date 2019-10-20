	.file	"IfxGpt12_IncrEnc.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	__extendsfdf2
	.global	__adddf3
	.global	__muldf3
	.global	__truncdfsf2
.section .text.IfxGpt12_IncrEnc_getAbsolutePosition,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getAbsolutePosition
	.type	IfxGpt12_IncrEnc_getAbsolutePosition, @function
IfxGpt12_IncrEnc_getAbsolutePosition:
.LFB358:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gpt12/IncrEnc/IfxGpt12_IncrEnc.c"
	.loc 1 68 0
.LVL0:
	.loc 1 69 0
	ld.w	%d15, [%a4]0
	ld.w	%d4, [%a4] 8
	itof	%d2, %d15
	ld.w	%d15, [%a4] 24
	itof	%d4, %d4
	itof	%d15, %d15
	div.f	%d15, %d2, %d15
	add.f	%d4, %d4, %d15
	call	__extendsfdf2
.LVL1:
	mov	%e6, %d3, %d2
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL2:
	movh	%d7, 16393
	mov	%e4, %d3, %d2
	movh	%d6, 24576
	addi	%d7, %d7, 8699
	call	__muldf3
.LVL3:
	mov	%e4, %d3, %d2
	.loc 1 70 0
	j	__truncdfsf2
.LVL4:
.LFE358:
	.size	IfxGpt12_IncrEnc_getAbsolutePosition, .-IfxGpt12_IncrEnc_getAbsolutePosition
.section .text.IfxGpt12_IncrEnc_getDirection,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getDirection
	.type	IfxGpt12_IncrEnc_getDirection, @function
IfxGpt12_IncrEnc_getDirection:
.LFB359:
	.loc 1 74 0
.LVL5:
	.loc 1 76 0
	ld.bu	%d2, [%a4] 12
	ret
.LFE359:
	.size	IfxGpt12_IncrEnc_getDirection, .-IfxGpt12_IncrEnc_getDirection
.section .text.IfxGpt12_IncrEnc_getFault,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getFault
	.type	IfxGpt12_IncrEnc_getFault, @function
IfxGpt12_IncrEnc_getFault:
.LFB360:
	.loc 1 80 0
.LVL6:
	.loc 1 82 0
	ld.w	%d2, [%a4] 16
	ret
.LFE360:
	.size	IfxGpt12_IncrEnc_getFault, .-IfxGpt12_IncrEnc_getFault
.section .text.IfxGpt12_IncrEnc_getOffset,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getOffset
	.type	IfxGpt12_IncrEnc_getOffset, @function
IfxGpt12_IncrEnc_getOffset:
.LFB361:
	.loc 1 86 0
.LVL7:
	.loc 1 88 0
	ld.w	%d2, [%a4] 20
	ret
.LFE361:
	.size	IfxGpt12_IncrEnc_getOffset, .-IfxGpt12_IncrEnc_getOffset
.section .text.IfxGpt12_IncrEnc_getPeriodPerRotation,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getPeriodPerRotation
	.type	IfxGpt12_IncrEnc_getPeriodPerRotation, @function
IfxGpt12_IncrEnc_getPeriodPerRotation:
.LFB362:
	.loc 1 92 0
.LVL8:
	.loc 1 94 0
	mov	%d2, 1
	ret
.LFE362:
	.size	IfxGpt12_IncrEnc_getPeriodPerRotation, .-IfxGpt12_IncrEnc_getPeriodPerRotation
.section .text.IfxGpt12_IncrEnc_getPosition,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getPosition
	.type	IfxGpt12_IncrEnc_getPosition, @function
IfxGpt12_IncrEnc_getPosition:
.LFB363:
	.loc 1 98 0
.LVL9:
	.loc 1 99 0
	ld.w	%d2, [%a4]0
	ld.w	%d15, [%a4] 40
	itof	%d2, %d2
	.loc 1 100 0
	mul.f	%d2, %d2, %d15
	ret
.LFE363:
	.size	IfxGpt12_IncrEnc_getPosition, .-IfxGpt12_IncrEnc_getPosition
.section .text.IfxGpt12_IncrEnc_getRawPosition,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getRawPosition
	.type	IfxGpt12_IncrEnc_getRawPosition, @function
IfxGpt12_IncrEnc_getRawPosition:
.LFB364:
	.loc 1 104 0
.LVL10:
	.loc 1 106 0
	ld.w	%d2, [%a4]0
	ret
.LFE364:
	.size	IfxGpt12_IncrEnc_getRawPosition, .-IfxGpt12_IncrEnc_getRawPosition
.section .text.IfxGpt12_IncrEnc_getRefreshPeriod,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getRefreshPeriod
	.type	IfxGpt12_IncrEnc_getRefreshPeriod, @function
IfxGpt12_IncrEnc_getRefreshPeriod:
.LFB365:
	.loc 1 110 0
.LVL11:
	.loc 1 112 0
	ld.w	%d2, [%a4] 28
	ret
.LFE365:
	.size	IfxGpt12_IncrEnc_getRefreshPeriod, .-IfxGpt12_IncrEnc_getRefreshPeriod
.section .text.IfxGpt12_IncrEnc_getResolution,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getResolution
	.type	IfxGpt12_IncrEnc_getResolution, @function
IfxGpt12_IncrEnc_getResolution:
.LFB366:
	.loc 1 116 0
.LVL12:
	.loc 1 118 0
	ld.w	%d2, [%a4] 24
	ret
.LFE366:
	.size	IfxGpt12_IncrEnc_getResolution, .-IfxGpt12_IncrEnc_getResolution
.section .text.IfxGpt12_IncrEnc_getSensorType,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getSensorType
	.type	IfxGpt12_IncrEnc_getSensorType, @function
IfxGpt12_IncrEnc_getSensorType:
.LFB367:
	.loc 1 122 0
.LVL13:
	.loc 1 124 0
	mov	%d2, 0
	ret
.LFE367:
	.size	IfxGpt12_IncrEnc_getSensorType, .-IfxGpt12_IncrEnc_getSensorType
.section .text.IfxGpt12_IncrEnc_getSpeed,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getSpeed
	.type	IfxGpt12_IncrEnc_getSpeed, @function
IfxGpt12_IncrEnc_getSpeed:
.LFB368:
	.loc 1 128 0
.LVL14:
	.loc 1 130 0
	ld.w	%d2, [%a4] 4
	ret
.LFE368:
	.size	IfxGpt12_IncrEnc_getSpeed, .-IfxGpt12_IncrEnc_getSpeed
.section .text.IfxGpt12_IncrEnc_getTurn,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_getTurn
	.type	IfxGpt12_IncrEnc_getTurn, @function
IfxGpt12_IncrEnc_getTurn:
.LFB369:
	.loc 1 134 0
.LVL15:
	.loc 1 136 0
	ld.w	%d2, [%a4] 8
	ret
.LFE369:
	.size	IfxGpt12_IncrEnc_getTurn, .-IfxGpt12_IncrEnc_getTurn
.section .text.IfxGpt12_IncrEnc_onZeroIrq,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_onZeroIrq
	.type	IfxGpt12_IncrEnc_onZeroIrq, @function
IfxGpt12_IncrEnc_onZeroIrq:
.LFB372:
	.loc 1 303 0
.LVL16:
	.loc 1 304 0
	ld.w	%d15, [%a4] 16
	jz.t	%d15, 0, .L14
	.loc 1 306 0
	ld.bu	%d15, [%a4] 16
	andn	%d15, %d15, ~(-2)
	st.b	[%a4] 16, %d15
.L14:
	.loc 1 309 0
	ld.bu	%d15, [%a4] 12
	jz	%d15, .L21
	.loc 1 315 0
	ld.w	%d15, [%a4] 8
	add	%d15, -1
	st.w	[%a4] 8, %d15
	ret
.L21:
	.loc 1 311 0
	ld.w	%d15, [%a4] 8
	add	%d15, 1
	st.w	[%a4] 8, %d15
	ret
.LFE372:
	.size	IfxGpt12_IncrEnc_onZeroIrq, .-IfxGpt12_IncrEnc_onZeroIrq
.section .text.IfxGpt12_IncrEnc_reset,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_reset
	.type	IfxGpt12_IncrEnc_reset, @function
IfxGpt12_IncrEnc_reset:
.LFB373:
	.loc 1 321 0
.LVL17:
	.loc 1 322 0
	mov	%d15, 0
	.loc 1 325 0
	st.w	[%a4] 16, %d15
	.loc 1 322 0
	st.w	[%a4]0, %d15
	.loc 1 323 0
	st.w	[%a4] 8, %d15
	.loc 1 324 0
	mov	%d2, 0
	.loc 1 326 0
	mov	%d15, 1
	.loc 1 324 0
	st.w	[%a4] 4, %d2
	.loc 1 326 0
	st.b	[%a4] 16, %d15
	ret
.LFE373:
	.size	IfxGpt12_IncrEnc_reset, .-IfxGpt12_IncrEnc_reset
.section .text.IfxGpt12_IncrEnc_resetFaults,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_resetFaults
	.type	IfxGpt12_IncrEnc_resetFaults, @function
IfxGpt12_IncrEnc_resetFaults:
.LFB374:
	.loc 1 331 0
.LVL18:
	.loc 1 335 0
	mov	%d2, 0
	mov	%d3, -2
	ldmst	[%a4] 16, %e2
	ret
.LFE374:
	.size	IfxGpt12_IncrEnc_resetFaults, .-IfxGpt12_IncrEnc_resetFaults
.section .text.IfxGpt12_IncrEnc_setOffset,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_setOffset
	.type	IfxGpt12_IncrEnc_setOffset, @function
IfxGpt12_IncrEnc_setOffset:
.LFB375:
	.loc 1 340 0
.LVL19:
	.loc 1 342 0
	ld.bu	%d15, [%a4] 16
	.loc 1 341 0
	st.w	[%a4] 20, %d4
	.loc 1 342 0
	andn	%d15, %d15, ~(-2)
	st.b	[%a4] 16, %d15
	ret
.LFE375:
	.size	IfxGpt12_IncrEnc_setOffset, .-IfxGpt12_IncrEnc_setOffset
	.global	__floatsidf
	.global	__divdf3
	.global	__fixdfsi
.section .text.IfxGpt12_IncrEnc_setRefreshPeriod,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_setRefreshPeriod
	.type	IfxGpt12_IncrEnc_setRefreshPeriod, @function
IfxGpt12_IncrEnc_setRefreshPeriod:
.LFB376:
	.loc 1 347 0
.LVL20:
	.loc 1 349 0
	ld.w	%d10, [%a4] 24
	.loc 1 347 0
	mov.aa	%a15, %a4
	mov	%d15, %d4
	.loc 1 348 0
	st.w	[%a15] 28, %d4
	.loc 1 349 0
	mov	%d4, %d10
.LVL21:
	call	__floatsidf
.LVL22:
	movh	%d5, 16409
	mov	%e6, %d3, %d2
	addi	%d5, %d5, 8699
	movh	%d4, 24576
	call	__divdf3
.LVL23:
	mov	%d4, %d15
	mov	%e8, %d3, %d2
	call	__extendsfdf2
.LVL24:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	call	__divdf3
.LVL25:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL26:
	.loc 1 350 0
	itof	%d10, %d10
	ld.w	%d4, [%a15] 44
	.loc 1 349 0
	st.w	[%a15] 32, %d2
	.loc 1 350 0
	mul.f	%d4, %d10, %d4
	mul.f	%d4, %d4, %d15
	call	__extendsfdf2
.LVL27:
	movh	%d7, 16409
	mov	%e4, %d3, %d2
	movh	%d6, 24576
	addi	%d7, %d7, 8699
	call	__divdf3
.LVL28:
	mov	%e4, %d3, %d2
	call	__fixdfsi
.LVL29:
	st.w	[%a15] 48, %d2
	ret
.LFE376:
	.size	IfxGpt12_IncrEnc_setRefreshPeriod, .-IfxGpt12_IncrEnc_setRefreshPeriod
.section .text.IfxGpt12_IncrEnc_update,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_update
	.type	IfxGpt12_IncrEnc_update, @function
IfxGpt12_IncrEnc_update:
.LFB378:
	.loc 1 389 0
.LVL30:
	.loc 1 390 0
	ld.a	%a15, [%a4] 76
	ji	%a15
.LVL31:
.LFE378:
	.size	IfxGpt12_IncrEnc_update, .-IfxGpt12_IncrEnc_update
.section .text.IfxGpt12_IncrEnc_updateFromT2,"ax",@progbits
	.align 1
	.type	IfxGpt12_IncrEnc_updateFromT2, @function
IfxGpt12_IncrEnc_updateFromT2:
.LFB379:
	.loc 1 395 0
.LVL32:
	.loc 1 396 0
	ld.a	%a2, [%a4] 52
.LVL33:
	.loc 1 402 0
	ld.w	%d2, [%a4] 20
	.loc 1 395 0
	mov.aa	%a15, %a4
	.loc 1 398 0
	ld.w	%d3, [%a2] 16
	extr.u	%d3, %d3, 15, 1
	st.b	[%a4] 12, %d3
	.loc 1 400 0
	ld.w	%d15, [%a2] 52
.LVL34:
	.loc 1 402 0
	add	%d15, %d2
.LVL35:
	.loc 1 404 0
	ld.w	%d2, [%a4] 24
	jge	%d15, %d2, .L34
	.loc 1 410 0
	lt	%d4, %d15, 0
	cadd	%d15, %d4, %d15, %d2
.LVL36:
.L29:
.LBB98:
.LBB99:
	.loc 1 447 0
	jnz	%d3, .L30
	.loc 1 449 0
	ld.w	%d4, [%a15]0
	.loc 1 456 0
	add	%d2, -1
	.loc 1 449 0
	sub	%d4, %d15, %d4
	.loc 1 456 0
	and	%d4, %d2
	.loc 1 458 0
	utof	%d4, %d4
	ld.w	%d2, [%a15] 32
	mul.f	%d4, %d4, %d2
.LVL37:
	.loc 1 462 0
	ld.bu	%d2, [%a15] 80
	jnz	%d2, .L35
.L32:
	.loc 1 468 0
	st.w	[%a15] 4, %d4
.LBE99:
.LBE98:
	.loc 1 414 0
	st.w	[%a15]0, %d15
	ret
.LVL38:
.L30:
.LBB102:
.LBB100:
	.loc 1 453 0
	ld.w	%d3, [%a15]0
	.loc 1 456 0
	addi	%d4, %d2, -1
	.loc 1 453 0
	sub	%d3, %d15
.LVL39:
	.loc 1 456 0
	and	%d4, %d3
.LVL40:
	.loc 1 458 0
	ld.w	%d2, [%a15] 32
	utof	%d4, %d4
.LVL41:
	mul.f	%d4, %d4, %d2
.LVL42:
	.loc 1 462 0
	ld.bu	%d2, [%a15] 80
	.loc 1 460 0
	addih	%d4, %d4, 0x8000
.LVL43:
	.loc 1 462 0
	jz	%d2, .L32
.LVL44:
.L35:
	.loc 1 464 0
	lea	%a4, [%a15] 64
.LVL45:
	call	Ifx_LowPassPt1F32_do
.LVL46:
.LBE100:
.LBE102:
	.loc 1 414 0
	st.w	[%a15]0, %d15
.LBB103:
.LBB101:
	.loc 1 464 0
	st.w	[%a15] 4, %d2
.LBE101:
.LBE103:
	.loc 1 414 0
	ret
.LVL47:
.L34:
	.loc 1 406 0
	div	%e4, %d15, %d2
	mov	%d15, %d5
.LVL48:
	j	.L29
.LFE379:
	.size	IfxGpt12_IncrEnc_updateFromT2, .-IfxGpt12_IncrEnc_updateFromT2
.section .text.IfxGpt12_IncrEnc_updateFromT3,"ax",@progbits
	.align 1
	.type	IfxGpt12_IncrEnc_updateFromT3, @function
IfxGpt12_IncrEnc_updateFromT3:
.LFB380:
	.loc 1 419 0
.LVL49:
	.loc 1 420 0
	ld.a	%a2, [%a4] 52
.LVL50:
	.loc 1 426 0
	ld.w	%d3, [%a4] 20
	.loc 1 419 0
	mov.aa	%a15, %a4
	.loc 1 422 0
	ld.w	%d2, [%a2] 20
	extr.u	%d2, %d2, 15, 1
	st.b	[%a4] 12, %d2
	.loc 1 424 0
	ld.w	%d15, [%a2] 56
.LVL51:
	.loc 1 426 0
	add	%d15, %d3
.LVL52:
	.loc 1 428 0
	ld.w	%d3, [%a4] 24
	jge	%d15, %d3, .L50
	.loc 1 434 0
	lt	%d4, %d15, 0
	cadd	%d15, %d4, %d15, %d3
.LVL53:
.L38:
.LBB108:
.LBB109:
	.loc 1 480 0
	ld.w	%d5, [%a15]0
	.loc 1 478 0
	jnz	%d2, .L39
	.loc 1 480 0
	sub	%d5, %d15, %d5
.LVL54:
	.loc 1 487 0
	add	%d3, -1
	.loc 1 489 0
	ld.w	%d4, [%a15] 48
	.loc 1 487 0
	and	%d3, %d5
.LVL55:
	.loc 1 489 0
	jge.u	%d4, %d3, .L41
.L52:
	.loc 1 491 0
	utof	%d3, %d3
.LVL56:
	ld.w	%d4, [%a15] 32
	mul.f	%d4, %d3, %d4
.LVL57:
.L42:
	.loc 1 522 0
	addih	%d3, %d4, 0x8000
	sel	%d4, %d2, %d3, %d4
.LVL58:
	.loc 1 524 0
	ld.bu	%d2, [%a15] 80
	jnz	%d2, .L51
.L46:
	.loc 1 530 0
	st.w	[%a15] 4, %d4
.LBE109:
.LBE108:
	.loc 1 438 0
	st.w	[%a15]0, %d15
	ret
.LVL59:
.L39:
.LBB119:
.LBB115:
	.loc 1 484 0
	sub	%d5, %d15
.LVL60:
	.loc 1 487 0
	add	%d3, -1
	.loc 1 489 0
	ld.w	%d4, [%a15] 48
	.loc 1 487 0
	and	%d3, %d5
.LVL61:
	.loc 1 489 0
	jlt.u	%d4, %d3, .L52
.L41:
.LVL62:
.LBB110:
	.loc 1 498 0
	movh.a	%a3, 61444
	lea	%a3, [%a3] -31632
	ld.w	%d3, [%a3]0
.LVL63:
	jnz.t	%d3, 24, .L43
.LVL64:
.LBB111:
	.loc 1 503 0
	movh.a	%a3, 61444
	lea	%a3, [%a3] -31648
	ld.w	%d3, [%a3]0
	jz.t	%d3, 24, .L44
	.loc 1 506 0
	ld.w	%d2, [%a3]0
	insert	%d2, %d2, 15, 25, 1
	st.w	[%a3]0, %d2
	.loc 1 507 0
	ld.w	%d4, [%a2] 48
	ld.w	%d2, [%a15] 36
	extr.u	%d4, %d4, 0, 16
	itof	%d4, %d4
	div.f	%d4, %d2, %d4
.LVL65:
	ld.bu	%d2, [%a15] 12
.LBE111:
.LBE110:
	.loc 1 522 0
	addih	%d3, %d4, 0x8000
	sel	%d4, %d2, %d3, %d4
.LVL66:
	.loc 1 524 0
	ld.bu	%d2, [%a15] 80
	jz	%d2, .L46
.LVL67:
.L51:
	.loc 1 526 0
	lea	%a4, [%a15] 64
.LVL68:
	call	Ifx_LowPassPt1F32_do
.LVL69:
.LBE115:
.LBE119:
	.loc 1 438 0
	st.w	[%a15]0, %d15
.LBB120:
.LBB116:
	.loc 1 526 0
	st.w	[%a15] 4, %d2
.LBE116:
.LBE120:
	.loc 1 438 0
	ret
.LVL70:
.L43:
.LBB121:
.LBB117:
.LBB113:
	.loc 1 517 0
	ld.w	%d2, [%a3]0
	.loc 1 518 0
	mov	%d4, 0
	.loc 1 517 0
	insert	%d2, %d2, 15, 25, 1
	st.w	[%a3]0, %d2
.LVL71:
	ld.bu	%d2, [%a15] 12
	j	.L42
.LVL72:
.L50:
.LBE113:
.LBE117:
.LBE121:
	.loc 1 430 0
	div	%e4, %d15, %d3
	mov	%d15, %d5
.LVL73:
	j	.L38
.LVL74:
.L44:
.LBB122:
.LBB118:
.LBB114:
.LBB112:
	.loc 1 511 0
	ld.w	%d4, [%a15] 4
.LVL75:
	j	.L42
.LBE112:
.LBE114:
.LBE118:
.LBE122:
.LFE380:
	.size	IfxGpt12_IncrEnc_updateFromT3, .-IfxGpt12_IncrEnc_updateFromT3
.section .text.IfxGpt12_IncrEnc_init,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_init
	.type	IfxGpt12_IncrEnc_init, @function
IfxGpt12_IncrEnc_init:
.LFB370:
	.loc 1 140 0
.LVL76:
	.loc 1 146 0
	ld.w	%d15, [%a5]0
	.loc 1 142 0
	ld.a	%a12, [%a5] 40
.LVL77:
	.loc 1 147 0
	ld.w	%d2, [%a5] 8
	.loc 1 146 0
	st.w	[%a4] 20, %d15
	.loc 1 147 0
	ld.bu	%d15, [%a5] 14
	.loc 1 144 0
	st.a	[%a4] 52, %a12
	.loc 1 147 0
	mul	%d15, %d2
	.loc 1 140 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 140 0
	mov.aa	%a13, %a4
	.loc 1 148 0
	itof	%d12, %d15
	.loc 1 147 0
	st.w	[%a4] 24, %d15
	.loc 1 148 0
	mov	%d4, %d12
	.loc 1 140 0
	mov.aa	%a15, %a5
	.loc 1 148 0
	call	__extendsfdf2
.LVL78:
	imask	%e4, 0, 20, 10
	mov	%e6, %d3, %d2
	call	__divdf3
.LVL79:
	mov	%e6, %d3, %d2
	mov	%e4, %d3, %d2
	call	__adddf3
.LVL80:
	movh	%d7, 16393
	mov	%e4, %d3, %d2
	movh	%d6, 24576
	addi	%d7, %d7, 8699
	call	__muldf3
.LVL81:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL82:
	.loc 1 149 0
	ld.w	%d11, [%a15] 20
	.loc 1 150 0
	ld.w	%d10, [%a15] 16
.LVL83:
.LBB123:
.LBB124:
	.loc 1 349 0
	mov	%d4, %d15
.LBE124:
.LBE123:
	.loc 1 148 0
	st.w	[%a13] 40, %d2
	.loc 1 149 0
	st.w	[%a13] 44, %d11
.LBB128:
.LBB125:
	.loc 1 348 0
	st.w	[%a13] 28, %d10
	.loc 1 349 0
	call	__floatsidf
.LVL84:
	movh	%d5, 16409
	mov	%e6, %d3, %d2
	addi	%d5, %d5, 8699
	movh	%d4, 24576
	call	__divdf3
.LVL85:
	mov	%d4, %d10
	mov	%e8, %d3, %d2
	call	__extendsfdf2
.LVL86:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
.LBE125:
.LBE128:
	.loc 1 152 0
	mov	%d15, 0
.LBB129:
.LBB126:
	.loc 1 349 0
	call	__divdf3
.LVL87:
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL88:
	.loc 1 350 0
	mul.f	%d4, %d12, %d11
	.loc 1 349 0
	st.w	[%a13] 32, %d2
	.loc 1 350 0
	mul.f	%d4, %d10, %d4
	call	__extendsfdf2
.LVL89:
	movh	%d7, 16409
	mov	%e4, %d3, %d2
	movh	%d6, 24576
	addi	%d7, %d7, 8699
	call	__divdf3
.LVL90:
	mov	%e4, %d3, %d2
	call	__fixdfsi
.LVL91:
.LBE126:
.LBE129:
	.loc 1 152 0
	st.w	[%a13] 16, %d15
.LBB130:
.LBB127:
	.loc 1 350 0
	st.w	[%a13] 48, %d2
.LBE127:
.LBE130:
	.loc 1 153 0
	mov	%d2, 1
	st.b	[%a13] 16, %d2
	.loc 1 154 0
	ld.w	%d2, [%a15] 24
	.loc 1 162 0
	ld.a	%a4, [%a15] 44
	.loc 1 154 0
	st.w	[%a13] 56, %d2
	.loc 1 155 0
	ld.w	%d2, [%a15] 28
	.loc 1 157 0
	st.w	[%a13]0, %d15
	.loc 1 155 0
	st.w	[%a13] 60, %d2
	.loc 1 158 0
	mov	%d2, 0
	st.w	[%a13] 4, %d2
	.loc 1 159 0
	mov	%d2, 2
	st.b	[%a13] 12, %d2
	.loc 1 160 0
	st.w	[%a13] 8, %d15
	.loc 1 162 0
	ld.bu	%d2, [%a4] 4
	jeq	%d2, 3, .L87
	.loc 1 141 0
	mov	%d15, 1
	.loc 1 219 0
	jeq	%d2, 2, .L88
.LVL92:
.L61:
	.loc 1 256 0
	ld.b	%d4, [%a15] 56
	ld.bu	%d5, [%a15] 61
	call	IfxGpt12_initTxInPinWithPadLevel
.LVL93:
	.loc 1 257 0
	ld.a	%a4, [%a15] 48
	ld.b	%d4, [%a15] 56
	ld.bu	%d5, [%a15] 61
	call	IfxGpt12_initTxEudInPinWithPadLevel
.LVL94:
	.loc 1 259 0
	ld.a	%a4, [%a15] 52
	jz.a	%a4, .L66
	.loc 1 261 0
	ld.b	%d4, [%a15] 56
	ld.bu	%d5, [%a15] 61
	call	IfxGpt12_initTxInPinWithPadLevel
.LVL95:
.L66:
	.loc 1 265 0
	ld.w	%d4, [%a15] 8
	sh	%d4, 1
	call	__floatsidf
.LVL96:
	movh	%d5, 16409
	mov	%e6, %d3, %d2
	addi	%d5, %d5, 8699
	movh	%d4, 24576
	call	__divdf3
.LVL97:
	mov.aa	%a4, %a12
	mov	%e8, %d3, %d2
	call	IfxGpt12_T5_getFrequency
.LVL98:
	mov	%d4, %d2
	call	__extendsfdf2
.LVL99:
	mov	%e4, %d9, %d8
	mov	%e6, %d3, %d2
	call	__muldf3
.LVL100:
	.loc 1 264 0
	mov	%e4, %d3, %d2
	call	__truncdfsf2
.LVL101:
	st.w	[%a13] 36, %d2
	.loc 1 267 0
	ld.bu	%d2, [%a15] 32
	st.b	[%a13] 80, %d2
	.loc 1 269 0
	ld.bu	%d2, [%a15] 32
	jz	%d2, .L67
.LBB131:
	.loc 1 272 0
	movh	%d2, 16256
	st.w	[%SP] 8, %d2
	.loc 1 273 0
	ld.w	%d2, [%a15] 36
	.loc 1 275 0
	lea	%a4, [%a13] 64
	.loc 1 273 0
	st.w	[%SP] 4, %d2
	.loc 1 274 0
	ld.w	%d2, [%a15] 16
	.loc 1 275 0
	lea	%a5, [%SP] 4
	.loc 1 274 0
	st.w	[%SP] 12, %d2
	.loc 1 275 0
	call	Ifx_LowPassPt1F32_init
.LVL102:
.L67:
.LBE131:
	.loc 1 279 0
	mov	%d2, %d15
	ret
.LVL103:
.L87:
.LBB132:
.LBB133:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gpt12/Std/IfxGpt12.h"
	.loc 2 1219 0
	ld.w	%d15, [%a12] 20
	or	%d15, %d15, 56
	st.w	[%a12] 20, %d15
.LBE133:
.LBE132:
	.loc 1 167 0
	ld.bu	%d15, [%a15] 14
	jeq	%d15, 2, .L56
	jne	%d15, 4, .L89
.LVL104:
.LBB134:
.LBB135:
	.loc 2 1206 0
	ld.w	%d15, [%a12] 20
	insert	%d15, %d15, 3, 0, 3
	st.w	[%a12] 20, %d15
.LBE135:
.LBE134:
	.loc 1 141 0
	mov	%d15, 1
.LVL105:
.L55:
.LBB136:
.LBB137:
	.loc 2 1194 0
	ld.w	%d2, [%a12] 20
	or	%d2, %d2, 256
	st.w	[%a12] 20, %d2
.LBE137:
.LBE136:
	.loc 1 181 0
	ld.bu	%d2, [%a15] 4
.LVL106:
.LBB138:
.LBB139:
	.loc 2 1225 0
	eq	%d2, %d2, 0
.LVL107:
	sh	%d3, %d2, 7
	ld.w	%d2, [%a12] 20
	andn	%d2, %d2, ~(-129)
	or	%d2, %d3
	st.w	[%a12] 20, %d2
.LVL108:
.LBE139:
.LBE138:
.LBB140:
.LBB141:
	.loc 2 1157 0
	ld.w	%d2, [%a12] 20
	insert	%d2, %d2, 0, 9, 1
	st.w	[%a12] 20, %d2
.LVL109:
.LBE141:
.LBE140:
.LBB142:
.LBB143:
	.loc 2 1181 0
	ld.w	%d2, [%a12] 20
	or	%d2, %d2, 64
	st.w	[%a12] 20, %d2
.LBE143:
.LBE142:
	.loc 1 185 0
	ld.w	%d2, [%a15] 52
	jz	%d2, .L59
.LVL110:
.LBB144:
.LBB145:
	.loc 2 1321 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 5, 3, 3
	st.w	[%a12] 24, %d2
.LVL111:
.LBE145:
.LBE144:
.LBB146:
.LBB147:
	.loc 2 1279 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 1, 0, 3
	st.w	[%a12] 24, %d2
.LVL112:
.LBE147:
.LBE146:
.LBB148:
.LBB149:
	.loc 2 1243 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 0, 10, 1
	st.w	[%a12] 24, %d2
.LVL113:
.LBE149:
.LBE148:
.LBB150:
.LBB151:
	.loc 2 1249 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 15, 11, 1
	st.w	[%a12] 24, %d2
.LVL114:
.LBE151:
.LBE150:
.LBB152:
.LBB153:
	.loc 2 1315 0
	ld.hu	%d3, [%a15] 58
	mov	%d2, 4096
	seln	%d3, %d3, %d2, 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 0, 12, 1
	or	%d2, %d3
	st.w	[%a12] 24, %d2
.LVL115:
.LBE153:
.LBE152:
.LBB154:
.LBB155:
	.loc 2 1333 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 0, 9, 1
	st.w	[%a12] 24, %d2
.LVL116:
.LBE155:
.LBE154:
.LBB156:
.LBB157:
	.loc 2 1273 0
	ld.w	%d2, [%a12] 24
	andn	%d2, %d2, ~(-65)
	st.w	[%a12] 24, %d2
.LBE157:
.LBE156:
	.loc 1 196 0
	ld.hu	%d2, [%a15] 58
	jz	%d2, .L59
.LVL117:
.LBB158:
.LBB159:
.LBB160:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Src/Std/IfxSrc.h"
	.loc 3 256 0
	movh.a	%a2, 61444
	lea	%a2, [%a2] -31636
	ld.w	%d3, [%a2]0
	and	%d2, %d2, 255
	andn	%d3, %d3, ~(-256)
	or	%d3, %d2
.LBE160:
.LBE159:
	.loc 1 200 0
	ld.bu	%d4, [%a15] 60
.LVL118:
.LBB164:
.LBB163:
	.loc 3 256 0
	st.w	[%a2]0, %d3
.LVL119:
	.loc 3 257 0
	ld.w	%d2, [%a2]0
	ins.t	%d2, %d2,11, %d4,0
	st.w	[%a2]0, %d2
.LVL120:
.LBB161:
.LBB162:
	.loc 3 232 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 25, 1
	st.w	[%a2]0, %d2
.LVL121:
.LBE162:
.LBE161:
.LBE163:
.LBE164:
.LBB165:
.LBB166:
	.loc 3 250 0
	ld.w	%d2, [%a2]0
	insert	%d2, %d2, 15, 10, 1
	st.w	[%a2]0, %d2
.LVL122:
.L59:
.LBE166:
.LBE165:
.LBE158:
.LBB167:
.LBB168:
	.loc 2 1432 0
	ld.w	%d2, [%a12] 28
	andn	%d2, %d2, ~(-57)
	st.w	[%a12] 28, %d2
.LVL123:
.LBE168:
.LBE167:
.LBB169:
.LBB170:
	.loc 2 1450 0
	ld.w	%d2, [%a12] 28
	insert	%d2, %d2, 2, 0, 3
	st.w	[%a12] 28, %d2
.LVL124:
.LBE170:
.LBE169:
.LBB171:
.LBB172:
	.loc 2 1387 0
	ld.w	%d2, [%a12] 28
	insert	%d2, %d2, 15, 10, 1
	st.w	[%a12] 28, %d2
.LVL125:
.LBE172:
.LBE171:
.LBB173:
.LBB174:
	.loc 2 1399 0
	ld.w	%d2, [%a12] 28
	insert	%d2, %d2, 1, 12, 2
	st.w	[%a12] 28, %d2
.LVL126:
.LBE174:
.LBE173:
.LBB175:
.LBB176:
	.loc 2 1357 0
	ld.w	%d2, [%a12] 28
	insert	%d2, %d2, 15, 14, 1
	st.w	[%a12] 28, %d2
.LVL127:
.LBE176:
.LBE175:
.LBB177:
.LBB178:
	.loc 2 1393 0
	ld.w	%d2, [%a12] 28
	insert	%d2, %d2, 15, 15, 1
	st.w	[%a12] 28, %d2
.LVL128:
.LBE178:
.LBE177:
.LBB179:
.LBB180:
	.loc 2 1438 0
	ld.w	%d2, [%a12] 28
	insert	%d2, %d2, 0, 9, 1
	st.w	[%a12] 28, %d2
.LVL129:
.LBE180:
.LBE179:
.LBB181:
.LBB182:
	.loc 2 1411 0
	ld.w	%d2, [%a12] 28
	andn	%d2, %d2, ~(-257)
	st.w	[%a12] 28, %d2
.LVL130:
.LBE182:
.LBE181:
.LBB183:
.LBB184:
	.loc 2 1444 0
	ld.w	%d2, [%a12] 28
	andn	%d2, %d2, ~(-129)
	st.w	[%a12] 28, %d2
.LVL131:
.LBE184:
.LBE183:
.LBB185:
.LBB186:
	.loc 2 1381 0
	ld.w	%d2, [%a12] 28
	or	%d2, %d2, 64
	st.w	[%a12] 28, %d2
.LBE186:
.LBE185:
	.loc 1 217 0
	movh	%d2, hi:IfxGpt12_IncrEnc_updateFromT3
	addi	%d2, %d2, lo:IfxGpt12_IncrEnc_updateFromT3
	st.w	[%a13] 76, %d2
	ld.a	%a4, [%a15] 44
	j	.L61
.LVL132:
.L88:
.LBB187:
.LBB188:
	.loc 2 1121 0
	ld.w	%d2, [%a12] 16
	or	%d2, %d2, 56
	st.w	[%a12] 16, %d2
.LBE188:
.LBE187:
	.loc 1 224 0
	ld.bu	%d2, [%a15] 14
	jeq	%d2, 2, .L63
	jne	%d2, 4, .L90
.LVL133:
.LBB189:
.LBB190:
	.loc 2 1102 0
	ld.w	%d2, [%a12] 16
	insert	%d2, %d2, 3, 0, 3
	st.w	[%a12] 16, %d2
.LVL134:
.L62:
.LBE190:
.LBE189:
.LBB191:
.LBB192:
	.loc 2 1089 0
	ld.w	%d2, [%a12] 16
	or	%d2, %d2, 256
	st.w	[%a12] 16, %d2
.LBE192:
.LBE191:
	.loc 1 238 0
	ld.bu	%d2, [%a15] 4
.LVL135:
.LBB193:
.LBB194:
	.loc 2 1139 0
	eq	%d2, %d2, 0
.LVL136:
	sh	%d3, %d2, 7
	ld.w	%d2, [%a12] 16
	andn	%d2, %d2, ~(-129)
	or	%d2, %d3
	st.w	[%a12] 16, %d2
.LVL137:
.LBE194:
.LBE193:
.LBB195:
.LBB196:
	.loc 2 1071 0
	ld.w	%d2, [%a12] 16
	or	%d2, %d2, 64
	st.w	[%a12] 16, %d2
.LBE196:
.LBE195:
	.loc 1 241 0
	ld.w	%d2, [%a15] 52
	jz	%d2, .L65
.LVL138:
.LBB197:
.LBB198:
	.loc 2 1321 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 5, 3, 3
	st.w	[%a12] 24, %d2
.LVL139:
.LBE198:
.LBE197:
.LBB199:
.LBB200:
	.loc 2 1279 0
	ld.w	%d2, [%a12] 24
	andn	%d2, %d2, ~(-8)
	st.w	[%a12] 24, %d2
.LVL140:
.LBE200:
.LBE199:
.LBB201:
.LBB202:
	.loc 2 1243 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 15, 10, 1
	st.w	[%a12] 24, %d2
.LVL141:
.LBE202:
.LBE201:
.LBB203:
.LBB204:
	.loc 2 1249 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 0, 11, 1
	st.w	[%a12] 24, %d2
.LVL142:
.LBE204:
.LBE203:
.LBB205:
.LBB206:
	.loc 2 1315 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 15, 12, 1
	st.w	[%a12] 24, %d2
.LVL143:
.LBE206:
.LBE205:
.LBB207:
.LBB208:
	.loc 2 1333 0
	ld.w	%d2, [%a12] 24
	insert	%d2, %d2, 0, 9, 1
	st.w	[%a12] 24, %d2
.LVL144:
.LBE208:
.LBE207:
.LBB209:
.LBB210:
	.loc 2 1273 0
	ld.w	%d2, [%a12] 24
	andn	%d2, %d2, ~(-65)
	st.w	[%a12] 24, %d2
.LVL145:
.L65:
.LBE210:
.LBE209:
	.loc 1 253 0
	movh	%d2, hi:IfxGpt12_IncrEnc_updateFromT2
	addi	%d2, %d2, lo:IfxGpt12_IncrEnc_updateFromT2
	st.w	[%a13] 76, %d2
	ld.a	%a4, [%a15] 44
	j	.L61
.LVL146:
.L56:
.LBB211:
.LBB212:
	.loc 2 1206 0
	ld.w	%d15, [%a12] 20
	insert	%d15, %d15, 1, 0, 3
	st.w	[%a12] 20, %d15
.LBE212:
.LBE211:
	.loc 1 141 0
	mov	%d15, 1
	j	.L55
.LVL147:
.L63:
.LBB213:
.LBB214:
	.loc 2 1102 0
	ld.w	%d2, [%a12] 16
	insert	%d2, %d2, 1, 0, 3
	st.w	[%a12] 16, %d2
	j	.L62
.LVL148:
.L89:
.LBE214:
.LBE213:
	.loc 1 176 0
	mov	%d15, 0
	j	.L55
.LVL149:
.L90:
	.loc 1 233 0
	mov	%d15, 0
	j	.L62
.LFE370:
	.size	IfxGpt12_IncrEnc_init, .-IfxGpt12_IncrEnc_init
.section .text.IfxGpt12_IncrEnc_initConfig,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_initConfig
	.type	IfxGpt12_IncrEnc_initConfig, @function
IfxGpt12_IncrEnc_initConfig:
.LFB371:
	.loc 1 283 0
.LVL150:
	.loc 1 283 0
	mov.aa	%a15, %a4
	.loc 1 285 0
	mov	%d15, 2
	.loc 1 283 0
	mov.aa	%a12, %a5
	.loc 1 284 0
	call	IfxStdIf_Pos_initConfig
.LVL151:
	.loc 1 285 0
	st.b	[%a15] 14, %d15
	.loc 1 286 0
	movh	%d15, 15830
	addi	%d15, %d15, 30544
	st.w	[%a15] 24, %d15
	.loc 1 287 0
	movh	%d15, 17667
	addi	%d15, %d15, -6573
	st.w	[%a15] 28, %d15
	.loc 1 288 0
	mov	%d15, 1
	st.b	[%a15] 32, %d15
	.loc 1 289 0
	movh	%d15, 18177
	addi	%d15, %d15, -32081
	.loc 1 296 0
	mov	%d2, 0
	.loc 1 289 0
	st.w	[%a15] 36, %d15
	.loc 1 291 0
	mov	%d15, 0
	st.w	[%a15] 44, %d15
	.loc 1 292 0
	st.w	[%a15] 48, %d15
	.loc 1 293 0
	st.w	[%a15] 52, %d15
	.loc 1 294 0
	st.b	[%a15] 56, %d15
	.loc 1 295 0
	st.a	[%a15] 40, %a12
	.loc 1 296 0
	st.h	[%a15] 58, %d15
	.loc 1 297 0
	st.b	[%a15] 60, %d2
	.loc 1 298 0
	st.b	[%a15] 61, %d2
	ret
.LFE371:
	.size	IfxGpt12_IncrEnc_initConfig, .-IfxGpt12_IncrEnc_initConfig
.section .text.IfxGpt12_IncrEnc_stdIfPosInit,"ax",@progbits
	.align 1
	.global	IfxGpt12_IncrEnc_stdIfPosInit
	.type	IfxGpt12_IncrEnc_stdIfPosInit, @function
IfxGpt12_IncrEnc_stdIfPosInit:
.LFB377:
	.loc 1 355 0
.LVL152:
	.loc 1 357 0
	mov.aa	%a2, %a4
	mov	%d15, 0
	lea	%a15, 92-1
	0:
	st.b	[%a2+]1, %d15
	loop	%a15, 0b
	.loc 1 364 0
	movh	%d15, hi:IfxGpt12_IncrEnc_onZeroIrq
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_onZeroIrq
	st.w	[%a4] 4, %d15
	.loc 1 365 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getAbsolutePosition
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getAbsolutePosition
	st.w	[%a4] 8, %d15
	.loc 1 366 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getDirection
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getDirection
	st.w	[%a4] 20, %d15
	.loc 1 367 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getFault
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getFault
	st.w	[%a4] 24, %d15
	.loc 1 368 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getOffset
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getOffset
	st.w	[%a4] 12, %d15
	.loc 1 369 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getPeriodPerRotation
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getPeriodPerRotation
	st.w	[%a4] 32, %d15
	.loc 1 370 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getPosition
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getPosition
	st.w	[%a4] 16, %d15
	.loc 1 371 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getRawPosition
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getRawPosition
	st.w	[%a4] 28, %d15
	.loc 1 372 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getRefreshPeriod
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getRefreshPeriod
	st.w	[%a4] 36, %d15
	.loc 1 373 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getResolution
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getResolution
	st.w	[%a4] 40, %d15
	.loc 1 374 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getSensorType
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getSensorType
	st.w	[%a4] 44, %d15
	.loc 1 375 0
	movh	%d15, hi:IfxGpt12_IncrEnc_reset
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_reset
	st.w	[%a4] 56, %d15
	.loc 1 376 0
	movh	%d15, hi:IfxGpt12_IncrEnc_resetFaults
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_resetFaults
	st.w	[%a4] 60, %d15
	.loc 1 377 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getSpeed
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getSpeed
	st.w	[%a4] 64, %d15
	.loc 1 378 0
	movh	%d15, hi:IfxGpt12_IncrEnc_update
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_update
	st.w	[%a4] 68, %d15
	.loc 1 379 0
	movh	%d15, hi:IfxGpt12_IncrEnc_setOffset
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_setOffset
	st.w	[%a4] 72, %d15
	.loc 1 380 0
	movh	%d15, hi:IfxGpt12_IncrEnc_setRefreshPeriod
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_setRefreshPeriod
	st.w	[%a4] 88, %d15
	.loc 1 381 0
	movh	%d15, hi:IfxGpt12_IncrEnc_getTurn
	addi	%d15, %d15, lo:IfxGpt12_IncrEnc_getTurn
	.loc 1 360 0
	st.a	[%a4]0, %a5
	.loc 1 381 0
	st.w	[%a4] 48, %d15
	.loc 1 385 0
	mov	%d2, 1
	ret
.LFE377:
	.size	IfxGpt12_IncrEnc_stdIfPosInit, .-IfxGpt12_IncrEnc_stdIfPosInit
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x3
	.string	""
	.uleb128 0x1
	.sleb128 1
	.uleb128 0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.byte	0x4
	.uaword	.LCFI0-.LFB370
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.align 2
.LEFDE44:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf.h"
	.file 7 "0_Src/BaseSw/Service/CpuGeneric/StdIf/IfxStdIf_Pos.h"
	.file 8 "0_Src/BaseSw/Service/CpuGeneric/SysSe/Math/Ifx_LowPassPt1F32.h"
	.file 9 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxSrc_cfg.h"
	.file 10 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
	.file 11 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxPort_regdef.h"
	.file 12 "0_Src/BaseSw/iLLD/TC23A/Tricore/Port/Std/IfxPort.h"
	.file 13 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxGpt12_regdef.h"
	.file 14 "0_Src/BaseSw/iLLD/TC23A/Tricore/_PinMap/IfxGpt12_PinMap.h"
	.file 15 "0_Src/BaseSw/iLLD/TC23A/Tricore/Gpt12/IncrEnc/IfxGpt12_IncrEnc.h"
	.file 16 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7d4e
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Gpt12/IncrEnc/IfxGpt12_IncrEnc.c"
	.string	"C:\\\\Google drive\\\\RH_Workspace\\\\_AccumuatorManager_TC237"
	.uaword	.Ldebug_ranges0+0xc8
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x59
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1ff
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x18f
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x19b
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x240
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x68
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x29d
	.uleb128 0x6
	.uleb128 0x3
	.string	"Ifx_Priority"
	.byte	0x5
	.byte	0x4f
	.uaword	0x1f1
	.uleb128 0x7
	.byte	0x1
	.byte	0x5
	.byte	0x6b
	.uaword	0x32b
	.uleb128 0x8
	.string	"Ifx_RxSel_a"
	.sleb128 0
	.uleb128 0x8
	.string	"Ifx_RxSel_b"
	.sleb128 1
	.uleb128 0x8
	.string	"Ifx_RxSel_c"
	.sleb128 2
	.uleb128 0x8
	.string	"Ifx_RxSel_d"
	.sleb128 3
	.uleb128 0x8
	.string	"Ifx_RxSel_e"
	.sleb128 4
	.uleb128 0x8
	.string	"Ifx_RxSel_f"
	.sleb128 5
	.uleb128 0x8
	.string	"Ifx_RxSel_g"
	.sleb128 6
	.uleb128 0x8
	.string	"Ifx_RxSel_h"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_RxSel"
	.byte	0x5
	.byte	0x74
	.uaword	0x2b2
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.byte	0x77
	.uaword	0x35f
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x5
	.byte	0x79
	.uaword	0x297
	.byte	0
	.uleb128 0xb
	.string	"index"
	.byte	0x5
	.byte	0x7a
	.uaword	0x215
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x7b
	.uaword	0x33c
	.uleb128 0x3
	.string	"IfxStdIf_InterfaceDriver"
	.byte	0x6
	.byte	0x61
	.uaword	0x295
	.uleb128 0x5
	.byte	0x4
	.uaword	0x39f
	.uleb128 0xc
	.byte	0x1
	.uaword	0x215
	.uaword	0x3af
	.uleb128 0xd
	.uaword	0x379
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x3b5
	.uleb128 0xe
	.byte	0x1
	.uaword	0x3c1
	.uleb128 0xd
	.uaword	0x379
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x39
	.uaword	0x443
	.uleb128 0x8
	.string	"IfxStdIf_Pos_ResolutionFactor_oneFold"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxStdIf_Pos_ResolutionFactor_twoFold"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxStdIf_Pos_ResolutionFactor_fourFold"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_ResolutionFactor"
	.byte	0x7
	.byte	0x3d
	.uaword	0x3c1
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x41
	.uaword	0x539
	.uleb128 0x8
	.string	"IfxStdIf_Pos_SensorType_encoder"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxStdIf_Pos_SensorType_hall"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxStdIf_Pos_SensorType_resolver"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxStdIf_Pos_SensorType_angletrk"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxStdIf_Pos_SensorType_igmr"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxStdIf_Pos_SensorType_virtual"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SensorType"
	.byte	0x7
	.byte	0x48
	.uaword	0x468
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x4c
	.uaword	0x5b3
	.uleb128 0x8
	.string	"IfxStdIf_Pos_Dir_forward"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxStdIf_Pos_Dir_backward"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxStdIf_Pos_Dir_unknown"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Dir"
	.byte	0x7
	.byte	0x50
	.uaword	0x558
	.uleb128 0x9
	.byte	0x1
	.byte	0x7
	.byte	0x56
	.uaword	0x64f
	.uleb128 0xf
	.string	"notSynchronised"
	.byte	0x7
	.byte	0x58
	.uaword	0x223
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"signalLoss"
	.byte	0x7
	.byte	0x59
	.uaword	0x223
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"signalDegradation"
	.byte	0x7
	.byte	0x5a
	.uaword	0x223
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"trackingLoss"
	.byte	0x7
	.byte	0x5b
	.uaword	0x223
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"commError"
	.byte	0x7
	.byte	0x5c
	.uaword	0x223
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.byte	0x53
	.uaword	0x66c
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x7
	.byte	0x55
	.uaword	0x223
	.uleb128 0x12
	.string	"B"
	.byte	0x7
	.byte	0x5d
	.uaword	0x5cb
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Status"
	.byte	0x7
	.byte	0x5e
	.uaword	0x64f
	.uleb128 0x3
	.string	"IfxStdIf_Pos"
	.byte	0x7
	.byte	0x63
	.uaword	0x69b
	.uleb128 0x13
	.string	"IfxStdIf_Pos_"
	.byte	0x5c
	.byte	0x7
	.uahalf	0x10a
	.uaword	0x893
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x7
	.uahalf	0x10c
	.uaword	0x379
	.byte	0
	.uleb128 0x15
	.string	"onZeroIrq"
	.byte	0x7
	.uahalf	0x10d
	.uaword	0x8d1
	.byte	0x4
	.uleb128 0x15
	.string	"getAbsolutePosition"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0x893
	.byte	0x8
	.uleb128 0x15
	.string	"getOffset"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0x8ef
	.byte	0xc
	.uleb128 0x15
	.string	"getPosition"
	.byte	0x7
	.uahalf	0x110
	.uaword	0x90d
	.byte	0x10
	.uleb128 0x15
	.string	"getDirection"
	.byte	0x7
	.uahalf	0x111
	.uaword	0x92d
	.byte	0x14
	.uleb128 0x15
	.string	"getFault"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x964
	.byte	0x18
	.uleb128 0x15
	.string	"getRawPosition"
	.byte	0x7
	.uahalf	0x113
	.uaword	0x9d6
	.byte	0x1c
	.uleb128 0x15
	.string	"getPeriodPerRotation"
	.byte	0x7
	.uahalf	0x114
	.uaword	0x997
	.byte	0x20
	.uleb128 0x15
	.string	"getRefreshPeriod"
	.byte	0x7
	.uahalf	0x115
	.uaword	0x9f9
	.byte	0x24
	.uleb128 0x15
	.string	"getResolution"
	.byte	0x7
	.uahalf	0x116
	.uaword	0xa1e
	.byte	0x28
	.uleb128 0x15
	.string	"getSensorType"
	.byte	0x7
	.uahalf	0x117
	.uaword	0xa40
	.byte	0x2c
	.uleb128 0x15
	.string	"getTurn"
	.byte	0x7
	.uahalf	0x118
	.uaword	0xa95
	.byte	0x30
	.uleb128 0x15
	.string	"onEventA"
	.byte	0x7
	.uahalf	0x119
	.uaword	0xab1
	.byte	0x34
	.uleb128 0x15
	.string	"reset"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0xae9
	.byte	0x38
	.uleb128 0x15
	.string	"resetFaults"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0xb03
	.byte	0x3c
	.uleb128 0x15
	.string	"getSpeed"
	.byte	0x7
	.uahalf	0x11c
	.uaword	0xa78
	.byte	0x40
	.uleb128 0x15
	.string	"update"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0xace
	.byte	0x44
	.uleb128 0x15
	.string	"setOffset"
	.byte	0x7
	.uahalf	0x11e
	.uaword	0xb23
	.byte	0x48
	.uleb128 0x15
	.string	"setPosition"
	.byte	0x7
	.uahalf	0x11f
	.uaword	0xb58
	.byte	0x4c
	.uleb128 0x15
	.string	"setRawPosition"
	.byte	0x7
	.uahalf	0x120
	.uaword	0xb8f
	.byte	0x50
	.uleb128 0x15
	.string	"setSpeed"
	.byte	0x7
	.uahalf	0x121
	.uaword	0xbb2
	.byte	0x54
	.uleb128 0x15
	.string	"setRefreshPeriod"
	.byte	0x7
	.uahalf	0x122
	.uaword	0xbcf
	.byte	0x58
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetAbsolutePosition"
	.byte	0x7
	.byte	0x6d
	.uaword	0x8bb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x8c1
	.uleb128 0xc
	.byte	0x1
	.uaword	0x231
	.uaword	0x8d1
	.uleb128 0xd
	.uaword	0x379
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_OnZeroIrq"
	.byte	0x7
	.byte	0x73
	.uaword	0x3af
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetOffset"
	.byte	0x7
	.byte	0x7a
	.uaword	0x399
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetPosition"
	.byte	0x7
	.byte	0x84
	.uaword	0x8bb
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetDirection"
	.byte	0x7
	.byte	0x8d
	.uaword	0x94e
	.uleb128 0x5
	.byte	0x4
	.uaword	0x954
	.uleb128 0xc
	.byte	0x1
	.uaword	0x5b3
	.uaword	0x964
	.uleb128 0xd
	.uaword	0x379
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetFault"
	.byte	0x7
	.byte	0x94
	.uaword	0x981
	.uleb128 0x5
	.byte	0x4
	.uaword	0x987
	.uleb128 0xc
	.byte	0x1
	.uaword	0x66c
	.uaword	0x997
	.uleb128 0xd
	.uaword	0x379
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetPeriodPerRotation"
	.byte	0x7
	.byte	0x9b
	.uaword	0x9c0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x9c6
	.uleb128 0xc
	.byte	0x1
	.uaword	0x1f1
	.uaword	0x9d6
	.uleb128 0xd
	.uaword	0x379
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetRawPosition"
	.byte	0x7
	.byte	0xa4
	.uaword	0x399
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetRefreshPeriod"
	.byte	0x7
	.byte	0xaa
	.uaword	0x8bb
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetResolution"
	.byte	0x7
	.byte	0xb0
	.uaword	0x399
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetSensorType"
	.byte	0x7
	.byte	0xb6
	.uaword	0xa62
	.uleb128 0x5
	.byte	0x4
	.uaword	0xa68
	.uleb128 0xc
	.byte	0x1
	.uaword	0x539
	.uaword	0xa78
	.uleb128 0xd
	.uaword	0x379
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetSpeed"
	.byte	0x7
	.byte	0xbc
	.uaword	0x8bb
	.uleb128 0x3
	.string	"IfxStdIf_Pos_GetTurn"
	.byte	0x7
	.byte	0xc2
	.uaword	0x399
	.uleb128 0x3
	.string	"IfxStdIf_Pos_OnEventA"
	.byte	0x7
	.byte	0xc9
	.uaword	0x3af
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Update"
	.byte	0x7
	.byte	0xd2
	.uaword	0x3af
	.uleb128 0x3
	.string	"IfxStdIf_Pos_Reset"
	.byte	0x7
	.byte	0xdb
	.uaword	0x3af
	.uleb128 0x3
	.string	"IfxStdIf_Pos_ResetFaults"
	.byte	0x7
	.byte	0xe4
	.uaword	0x3af
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SetOffset"
	.byte	0x7
	.byte	0xeb
	.uaword	0xb41
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb47
	.uleb128 0xe
	.byte	0x1
	.uaword	0xb58
	.uleb128 0xd
	.uaword	0x379
	.uleb128 0xd
	.uaword	0x215
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SetPosition"
	.byte	0x7
	.byte	0xf2
	.uaword	0xb78
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb7e
	.uleb128 0xe
	.byte	0x1
	.uaword	0xb8f
	.uleb128 0xd
	.uaword	0x379
	.uleb128 0xd
	.uaword	0x231
	.byte	0
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SetRawPosition"
	.byte	0x7
	.byte	0xf8
	.uaword	0xb41
	.uleb128 0x3
	.string	"IfxStdIf_Pos_SetSpeed"
	.byte	0x7
	.byte	0xff
	.uaword	0xb78
	.uleb128 0x16
	.string	"IfxStdIf_Pos_SetRefreshPeriod"
	.byte	0x7
	.uahalf	0x106
	.uaword	0xb78
	.uleb128 0x17
	.byte	0x28
	.byte	0x7
	.uahalf	0x126
	.uaword	0xcc4
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x7
	.uahalf	0x128
	.uaword	0x215
	.byte	0
	.uleb128 0x15
	.string	"reversed"
	.byte	0x7
	.uahalf	0x129
	.uaword	0x253
	.byte	0x4
	.uleb128 0x14
	.uaword	.LASF4
	.byte	0x7
	.uahalf	0x12a
	.uaword	0x215
	.byte	0x8
	.uleb128 0x15
	.string	"periodPerRotation"
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x1f1
	.byte	0xc
	.uleb128 0x15
	.string	"resolutionFactor"
	.byte	0x7
	.uahalf	0x12c
	.uaword	0x443
	.byte	0xe
	.uleb128 0x14
	.uaword	.LASF5
	.byte	0x7
	.uahalf	0x12d
	.uaword	0x231
	.byte	0x10
	.uleb128 0x14
	.uaword	.LASF6
	.byte	0x7
	.uahalf	0x12e
	.uaword	0x231
	.byte	0x14
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x7
	.uahalf	0x12f
	.uaword	0x231
	.byte	0x18
	.uleb128 0x14
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x130
	.uaword	0x231
	.byte	0x1c
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x7
	.uahalf	0x131
	.uaword	0x253
	.byte	0x20
	.uleb128 0x15
	.string	"speedFilerCutOffFrequency"
	.byte	0x7
	.uahalf	0x132
	.uaword	0x231
	.byte	0x24
	.byte	0
	.uleb128 0x16
	.string	"IfxStdIf_Pos_Config"
	.byte	0x7
	.uahalf	0x133
	.uaword	0xbf5
	.uleb128 0x9
	.byte	0xc
	.byte	0x8
	.byte	0x2c
	.uaword	0xd09
	.uleb128 0xb
	.string	"a"
	.byte	0x8
	.byte	0x2e
	.uaword	0x231
	.byte	0
	.uleb128 0xb
	.string	"b"
	.byte	0x8
	.byte	0x2f
	.uaword	0x231
	.byte	0x4
	.uleb128 0xb
	.string	"out"
	.byte	0x8
	.byte	0x30
	.uaword	0x231
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_LowPassPt1F32"
	.byte	0x8
	.byte	0x31
	.uaword	0xce0
	.uleb128 0x9
	.byte	0xc
	.byte	0x8
	.byte	0x34
	.uaword	0xd65
	.uleb128 0xb
	.string	"cutOffFrequency"
	.byte	0x8
	.byte	0x36
	.uaword	0x231
	.byte	0
	.uleb128 0xb
	.string	"gain"
	.byte	0x8
	.byte	0x37
	.uaword	0x231
	.byte	0x4
	.uleb128 0xb
	.string	"samplingTime"
	.byte	0x8
	.byte	0x38
	.uaword	0x231
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_LowPassPt1F32_Config"
	.byte	0x8
	.byte	0x39
	.uaword	0xd22
	.uleb128 0x7
	.byte	0x1
	.byte	0x9
	.byte	0x32
	.uaword	0xdb1
	.uleb128 0x8
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxSrc_Tos_dma"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x9
	.byte	0x35
	.uaword	0xd85
	.uleb128 0x18
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0xa
	.byte	0x2d
	.uaword	0xed9
	.uleb128 0xf
	.string	"SRPN"
	.byte	0xa
	.byte	0x2f
	.uaword	0xed9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.uaword	.LASF10
	.byte	0xa
	.byte	0x30
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"SRE"
	.byte	0xa
	.byte	0x31
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"TOS"
	.byte	0xa
	.byte	0x32
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x19
	.uaword	.LASF11
	.byte	0xa
	.byte	0x33
	.uaword	0xed9
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"ECC"
	.byte	0xa
	.byte	0x34
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"reserved_21"
	.byte	0xa
	.byte	0x35
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"SRR"
	.byte	0xa
	.byte	0x36
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"CLRR"
	.byte	0xa
	.byte	0x37
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"SETR"
	.byte	0xa
	.byte	0x38
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"IOV"
	.byte	0xa
	.byte	0x39
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"IOVCLR"
	.byte	0xa
	.byte	0x3a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"SWS"
	.byte	0xa
	.byte	0x3b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"SWSCLR"
	.byte	0xa
	.byte	0x3c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"reserved_31"
	.byte	0xa
	.byte	0x3d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0xa
	.byte	0x3e
	.uaword	0xdc3
	.uleb128 0x10
	.byte	0x4
	.byte	0xa
	.byte	0x46
	.uaword	0xf26
	.uleb128 0x12
	.string	"U"
	.byte	0xa
	.byte	0x48
	.uaword	0xed9
	.uleb128 0x12
	.string	"I"
	.byte	0xa
	.byte	0x49
	.uaword	0x1b0
	.uleb128 0x12
	.string	"B"
	.byte	0xa
	.byte	0x4a
	.uaword	0xee9
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0xa
	.byte	0x4b
	.uaword	0xf02
	.uleb128 0x18
	.string	"_Ifx_SRC_ASCLIN"
	.byte	0xc
	.byte	0xa
	.byte	0x56
	.uaword	0xf75
	.uleb128 0xb
	.string	"TX"
	.byte	0xa
	.byte	0x58
	.uaword	0xf26
	.byte	0
	.uleb128 0xb
	.string	"RX"
	.byte	0xa
	.byte	0x59
	.uaword	0xf26
	.byte	0x4
	.uleb128 0xb
	.string	"ERR"
	.byte	0xa
	.byte	0x5a
	.uaword	0xf26
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ASCLIN"
	.byte	0xa
	.byte	0x5b
	.uaword	0xf8b
	.uleb128 0x1a
	.uaword	0xf3a
	.uleb128 0x18
	.string	"_Ifx_SRC_BCUSPB"
	.byte	0x4
	.byte	0xa
	.byte	0x5e
	.uaword	0xfb7
	.uleb128 0xb
	.string	"SBSRC"
	.byte	0xa
	.byte	0x60
	.uaword	0xf26
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_BCUSPB"
	.byte	0xa
	.byte	0x61
	.uaword	0xfcd
	.uleb128 0x1a
	.uaword	0xf90
	.uleb128 0x18
	.string	"_Ifx_SRC_CAN"
	.byte	0x40
	.byte	0xa
	.byte	0x64
	.uaword	0xff4
	.uleb128 0xb
	.string	"INT"
	.byte	0xa
	.byte	0x66
	.uaword	0xff4
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0xf26
	.uaword	0x1004
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"Ifx_SRC_CAN"
	.byte	0xa
	.byte	0x67
	.uaword	0x1023
	.uleb128 0x1a
	.uaword	0xfd2
	.uleb128 0x18
	.string	"_Ifx_SRC_CAN1"
	.byte	0x20
	.byte	0xa
	.byte	0x6a
	.uaword	0x104b
	.uleb128 0xb
	.string	"INT"
	.byte	0xa
	.byte	0x6c
	.uaword	0x104b
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0xf26
	.uaword	0x105b
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CAN1"
	.byte	0xa
	.byte	0x6d
	.uaword	0x106f
	.uleb128 0x1a
	.uaword	0x1028
	.uleb128 0x18
	.string	"_Ifx_SRC_CCU6"
	.byte	0x10
	.byte	0xa
	.byte	0x70
	.uaword	0x10bb
	.uleb128 0xb
	.string	"SR0"
	.byte	0xa
	.byte	0x72
	.uaword	0xf26
	.byte	0
	.uleb128 0xb
	.string	"SR1"
	.byte	0xa
	.byte	0x73
	.uaword	0xf26
	.byte	0x4
	.uleb128 0xb
	.string	"SR2"
	.byte	0xa
	.byte	0x74
	.uaword	0xf26
	.byte	0x8
	.uleb128 0xb
	.string	"SR3"
	.byte	0xa
	.byte	0x75
	.uaword	0xf26
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CCU6"
	.byte	0xa
	.byte	0x76
	.uaword	0x10cf
	.uleb128 0x1a
	.uaword	0x1074
	.uleb128 0x18
	.string	"_Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0xa
	.byte	0x79
	.uaword	0x10fa
	.uleb128 0xb
	.string	"SR"
	.byte	0xa
	.byte	0x7b
	.uaword	0x10fa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0xf26
	.uaword	0x110a
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CERBERUS"
	.byte	0xa
	.byte	0x7c
	.uaword	0x1122
	.uleb128 0x1a
	.uaword	0x10d4
	.uleb128 0x18
	.string	"_Ifx_SRC_CPU"
	.byte	0x20
	.byte	0xa
	.byte	0x7f
	.uaword	0x1157
	.uleb128 0xb
	.string	"SBSRC"
	.byte	0xa
	.byte	0x81
	.uaword	0xf26
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0xa
	.byte	0x82
	.uaword	0x1157
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x1167
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x1b
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CPU"
	.byte	0xa
	.byte	0x83
	.uaword	0x117a
	.uleb128 0x1a
	.uaword	0x1127
	.uleb128 0x18
	.string	"_Ifx_SRC_DMA"
	.byte	0x50
	.byte	0xa
	.byte	0x86
	.uaword	0x11b8
	.uleb128 0xb
	.string	"ERR"
	.byte	0xa
	.byte	0x88
	.uaword	0xf26
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0xa
	.byte	0x89
	.uaword	0x11b8
	.byte	0x4
	.uleb128 0xb
	.string	"CH"
	.byte	0xa
	.byte	0x8a
	.uaword	0xff4
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x11c8
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0xb
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DMA"
	.byte	0xa
	.byte	0x8b
	.uaword	0x11db
	.uleb128 0x1a
	.uaword	0x117f
	.uleb128 0x18
	.string	"_Ifx_SRC_EMEM"
	.byte	0x4
	.byte	0xa
	.byte	0x8e
	.uaword	0x1202
	.uleb128 0xb
	.string	"SR"
	.byte	0xa
	.byte	0x90
	.uaword	0xf26
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_EMEM"
	.byte	0xa
	.byte	0x91
	.uaword	0x1216
	.uleb128 0x1a
	.uaword	0x11e0
	.uleb128 0x18
	.string	"_Ifx_SRC_ERAY"
	.byte	0x50
	.byte	0xa
	.byte	0x94
	.uaword	0x128d
	.uleb128 0xb
	.string	"INT"
	.byte	0xa
	.byte	0x96
	.uaword	0x10fa
	.byte	0
	.uleb128 0xb
	.string	"TINT"
	.byte	0xa
	.byte	0x97
	.uaword	0x10fa
	.byte	0x8
	.uleb128 0xb
	.string	"NDAT"
	.byte	0xa
	.byte	0x98
	.uaword	0x10fa
	.byte	0x10
	.uleb128 0xb
	.string	"MBSC"
	.byte	0xa
	.byte	0x99
	.uaword	0x10fa
	.byte	0x18
	.uleb128 0xb
	.string	"OBUSY"
	.byte	0xa
	.byte	0x9a
	.uaword	0xf26
	.byte	0x20
	.uleb128 0xb
	.string	"IBUSY"
	.byte	0xa
	.byte	0x9b
	.uaword	0xf26
	.byte	0x24
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0xa
	.byte	0x9c
	.uaword	0x128d
	.byte	0x28
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x129d
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x27
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ERAY"
	.byte	0xa
	.byte	0x9d
	.uaword	0x12b1
	.uleb128 0x1a
	.uaword	0x121b
	.uleb128 0x18
	.string	"_Ifx_SRC_ETH"
	.byte	0x4
	.byte	0xa
	.byte	0xa0
	.uaword	0x12d7
	.uleb128 0xb
	.string	"SR"
	.byte	0xa
	.byte	0xa2
	.uaword	0xf26
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ETH"
	.byte	0xa
	.byte	0xa3
	.uaword	0x12ea
	.uleb128 0x1a
	.uaword	0x12b6
	.uleb128 0x18
	.string	"_Ifx_SRC_EVR"
	.byte	0x8
	.byte	0xa
	.byte	0xa6
	.uaword	0x131e
	.uleb128 0xb
	.string	"WUT"
	.byte	0xa
	.byte	0xa8
	.uaword	0xf26
	.byte	0
	.uleb128 0xb
	.string	"SCDC"
	.byte	0xa
	.byte	0xa9
	.uaword	0xf26
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_EVR"
	.byte	0xa
	.byte	0xaa
	.uaword	0x1331
	.uleb128 0x1a
	.uaword	0x12ef
	.uleb128 0x18
	.string	"_Ifx_SRC_FFT"
	.byte	0xc
	.byte	0xa
	.byte	0xad
	.uaword	0x1371
	.uleb128 0xb
	.string	"DONE"
	.byte	0xa
	.byte	0xaf
	.uaword	0xf26
	.byte	0
	.uleb128 0xb
	.string	"ERR"
	.byte	0xa
	.byte	0xb0
	.uaword	0xf26
	.byte	0x4
	.uleb128 0xb
	.string	"RFS"
	.byte	0xa
	.byte	0xb1
	.uaword	0xf26
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_FFT"
	.byte	0xa
	.byte	0xb2
	.uaword	0x1384
	.uleb128 0x1a
	.uaword	0x1336
	.uleb128 0x1d
	.string	"_Ifx_SRC_GPSR"
	.uahalf	0x600
	.byte	0xa
	.byte	0xb5
	.uaword	0x13dd
	.uleb128 0xb
	.string	"SR0"
	.byte	0xa
	.byte	0xb7
	.uaword	0xf26
	.byte	0
	.uleb128 0xb
	.string	"SR1"
	.byte	0xa
	.byte	0xb8
	.uaword	0xf26
	.byte	0x4
	.uleb128 0xb
	.string	"SR2"
	.byte	0xa
	.byte	0xb9
	.uaword	0xf26
	.byte	0x8
	.uleb128 0xb
	.string	"SR3"
	.byte	0xa
	.byte	0xba
	.uaword	0xf26
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF14
	.byte	0xa
	.byte	0xbb
	.uaword	0x13dd
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x13ee
	.uleb128 0x1e
	.uaword	0x1004
	.uahalf	0x5ef
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPSR"
	.byte	0xa
	.byte	0xbc
	.uaword	0x1402
	.uleb128 0x1a
	.uaword	0x1389
	.uleb128 0x18
	.string	"_Ifx_SRC_GPT12"
	.byte	0x30
	.byte	0xa
	.byte	0xbf
	.uaword	0x1477
	.uleb128 0xb
	.string	"CIRQ"
	.byte	0xa
	.byte	0xc1
	.uaword	0xf26
	.byte	0
	.uleb128 0xb
	.string	"T2"
	.byte	0xa
	.byte	0xc2
	.uaword	0xf26
	.byte	0x4
	.uleb128 0xb
	.string	"T3"
	.byte	0xa
	.byte	0xc3
	.uaword	0xf26
	.byte	0x8
	.uleb128 0xb
	.string	"T4"
	.byte	0xa
	.byte	0xc4
	.uaword	0xf26
	.byte	0xc
	.uleb128 0xb
	.string	"T5"
	.byte	0xa
	.byte	0xc5
	.uaword	0xf26
	.byte	0x10
	.uleb128 0xb
	.string	"T6"
	.byte	0xa
	.byte	0xc6
	.uaword	0xf26
	.byte	0x14
	.uleb128 0xb
	.string	"reserved_18"
	.byte	0xa
	.byte	0xc7
	.uaword	0x1477
	.byte	0x18
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x1487
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x17
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPT12"
	.byte	0xa
	.byte	0xc8
	.uaword	0x149c
	.uleb128 0x1a
	.uaword	0x1407
	.uleb128 0x1d
	.string	"_Ifx_SRC_GTM"
	.uahalf	0x5c0
	.byte	0xa
	.byte	0xcb
	.uaword	0x1526
	.uleb128 0xb
	.string	"AEIIRQ"
	.byte	0xa
	.byte	0xcd
	.uaword	0xf26
	.byte	0
	.uleb128 0xa
	.uaword	.LASF12
	.byte	0xa
	.byte	0xce
	.uaword	0x1526
	.byte	0x4
	.uleb128 0x1f
	.string	"ERR"
	.byte	0xa
	.byte	0xcf
	.uaword	0xf26
	.uahalf	0x170
	.uleb128 0x1f
	.string	"reserved_174"
	.byte	0xa
	.byte	0xd0
	.uaword	0x11b8
	.uahalf	0x174
	.uleb128 0x1f
	.string	"TIM"
	.byte	0xa
	.byte	0xd1
	.uaword	0x1537
	.uahalf	0x180
	.uleb128 0x1f
	.string	"reserved_1A0"
	.byte	0xa
	.byte	0xd2
	.uaword	0x154d
	.uahalf	0x1a0
	.uleb128 0x1f
	.string	"TOM"
	.byte	0xa
	.byte	0xd3
	.uaword	0x155e
	.uahalf	0x580
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x1537
	.uleb128 0x1e
	.uaword	0x1004
	.uahalf	0x16b
	.byte	0
	.uleb128 0x1b
	.uaword	0xf26
	.uaword	0x154d
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x155e
	.uleb128 0x1e
	.uaword	0x1004
	.uahalf	0x3df
	.byte	0
	.uleb128 0x1b
	.uaword	0xf26
	.uaword	0x1574
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x1
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GTM"
	.byte	0xa
	.byte	0xd4
	.uaword	0x1587
	.uleb128 0x1a
	.uaword	0x14a1
	.uleb128 0x18
	.string	"_Ifx_SRC_HSM"
	.byte	0x8
	.byte	0xa
	.byte	0xd7
	.uaword	0x15ae
	.uleb128 0xb
	.string	"HSM"
	.byte	0xa
	.byte	0xd9
	.uaword	0x10fa
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_HSM"
	.byte	0xa
	.byte	0xda
	.uaword	0x15c1
	.uleb128 0x1a
	.uaword	0x158c
	.uleb128 0x18
	.string	"_Ifx_SRC_LMU"
	.byte	0x4
	.byte	0xa
	.byte	0xdd
	.uaword	0x15e7
	.uleb128 0xb
	.string	"SR"
	.byte	0xa
	.byte	0xdf
	.uaword	0xf26
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_LMU"
	.byte	0xa
	.byte	0xe0
	.uaword	0x15fa
	.uleb128 0x1a
	.uaword	0x15c6
	.uleb128 0x18
	.string	"_Ifx_SRC_PMU"
	.byte	0x4
	.byte	0xa
	.byte	0xe3
	.uaword	0x1620
	.uleb128 0xb
	.string	"SR"
	.byte	0xa
	.byte	0xe5
	.uaword	0xf26
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_PMU"
	.byte	0xa
	.byte	0xe6
	.uaword	0x1633
	.uleb128 0x1a
	.uaword	0x15ff
	.uleb128 0x18
	.string	"_Ifx_SRC_QSPI"
	.byte	0x18
	.byte	0xa
	.byte	0xe9
	.uaword	0x1691
	.uleb128 0xb
	.string	"TX"
	.byte	0xa
	.byte	0xeb
	.uaword	0xf26
	.byte	0
	.uleb128 0xb
	.string	"RX"
	.byte	0xa
	.byte	0xec
	.uaword	0xf26
	.byte	0x4
	.uleb128 0xb
	.string	"ERR"
	.byte	0xa
	.byte	0xed
	.uaword	0xf26
	.byte	0x8
	.uleb128 0xb
	.string	"PT"
	.byte	0xa
	.byte	0xee
	.uaword	0xf26
	.byte	0xc
	.uleb128 0xb
	.string	"HC"
	.byte	0xa
	.byte	0xef
	.uaword	0xf26
	.byte	0x10
	.uleb128 0xb
	.string	"U"
	.byte	0xa
	.byte	0xf0
	.uaword	0xf26
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_QSPI"
	.byte	0xa
	.byte	0xf1
	.uaword	0x16a5
	.uleb128 0x1a
	.uaword	0x1638
	.uleb128 0x18
	.string	"_Ifx_SRC_SCU"
	.byte	0x14
	.byte	0xa
	.byte	0xf4
	.uaword	0x16d8
	.uleb128 0xb
	.string	"DTS"
	.byte	0xa
	.byte	0xf6
	.uaword	0xf26
	.byte	0
	.uleb128 0xb
	.string	"ERU"
	.byte	0xa
	.byte	0xf7
	.uaword	0x16d8
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.uaword	0xf26
	.uaword	0x16e8
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SCU"
	.byte	0xa
	.byte	0xf8
	.uaword	0x16fb
	.uleb128 0x1a
	.uaword	0x16aa
	.uleb128 0x18
	.string	"_Ifx_SRC_SENT"
	.byte	0x10
	.byte	0xa
	.byte	0xfb
	.uaword	0x1722
	.uleb128 0xb
	.string	"SR"
	.byte	0xa
	.byte	0xfd
	.uaword	0x16d8
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SENT"
	.byte	0xa
	.byte	0xfe
	.uaword	0x1736
	.uleb128 0x1a
	.uaword	0x1700
	.uleb128 0x13
	.string	"_Ifx_SRC_SMU"
	.byte	0xc
	.byte	0xa
	.uahalf	0x101
	.uaword	0x175e
	.uleb128 0x15
	.string	"SR"
	.byte	0xa
	.uahalf	0x103
	.uaword	0x175e
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0xf26
	.uaword	0x176e
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_SMU"
	.byte	0xa
	.uahalf	0x104
	.uaword	0x1782
	.uleb128 0x1a
	.uaword	0x173b
	.uleb128 0x13
	.string	"_Ifx_SRC_STM"
	.byte	0x60
	.byte	0xa
	.uahalf	0x107
	.uaword	0x17c5
	.uleb128 0x15
	.string	"SR0"
	.byte	0xa
	.uahalf	0x109
	.uaword	0xf26
	.byte	0
	.uleb128 0x15
	.string	"SR1"
	.byte	0xa
	.uahalf	0x10a
	.uaword	0xf26
	.byte	0x4
	.uleb128 0x14
	.uaword	.LASF10
	.byte	0xa
	.uahalf	0x10b
	.uaword	0x17c5
	.byte	0x8
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x17d5
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x57
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_STM"
	.byte	0xa
	.uahalf	0x10c
	.uaword	0x17e9
	.uleb128 0x1a
	.uaword	0x1787
	.uleb128 0x20
	.string	"_Ifx_SRC_VADCCG"
	.uahalf	0x140
	.byte	0xa
	.uahalf	0x10f
	.uaword	0x184a
	.uleb128 0x15
	.string	"SR0"
	.byte	0xa
	.uahalf	0x111
	.uaword	0xf26
	.byte	0
	.uleb128 0x15
	.string	"SR1"
	.byte	0xa
	.uahalf	0x112
	.uaword	0xf26
	.byte	0x4
	.uleb128 0x15
	.string	"SR2"
	.byte	0xa
	.uahalf	0x113
	.uaword	0xf26
	.byte	0x8
	.uleb128 0x15
	.string	"SR3"
	.byte	0xa
	.uahalf	0x114
	.uaword	0xf26
	.byte	0xc
	.uleb128 0x14
	.uaword	.LASF14
	.byte	0xa
	.uahalf	0x115
	.uaword	0x184a
	.byte	0x10
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x185b
	.uleb128 0x1e
	.uaword	0x1004
	.uahalf	0x12f
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_VADCCG"
	.byte	0xa
	.uahalf	0x116
	.uaword	0x1872
	.uleb128 0x1a
	.uaword	0x17ee
	.uleb128 0x13
	.string	"_Ifx_SRC_VADCG"
	.byte	0x10
	.byte	0xa
	.uahalf	0x119
	.uaword	0x18c4
	.uleb128 0x15
	.string	"SR0"
	.byte	0xa
	.uahalf	0x11b
	.uaword	0xf26
	.byte	0
	.uleb128 0x15
	.string	"SR1"
	.byte	0xa
	.uahalf	0x11c
	.uaword	0xf26
	.byte	0x4
	.uleb128 0x15
	.string	"SR2"
	.byte	0xa
	.uahalf	0x11d
	.uaword	0xf26
	.byte	0x8
	.uleb128 0x15
	.string	"SR3"
	.byte	0xa
	.uahalf	0x11e
	.uaword	0xf26
	.byte	0xc
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_VADCG"
	.byte	0xa
	.uahalf	0x11f
	.uaword	0x18da
	.uleb128 0x1a
	.uaword	0x1877
	.uleb128 0x13
	.string	"_Ifx_SRC_XBAR"
	.byte	0x4
	.byte	0xa
	.uahalf	0x122
	.uaword	0x1904
	.uleb128 0x15
	.string	"SRC"
	.byte	0xa
	.uahalf	0x124
	.uaword	0xf26
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_XBAR"
	.byte	0xa
	.uahalf	0x125
	.uaword	0x1919
	.uleb128 0x1a
	.uaword	0x18df
	.uleb128 0x13
	.string	"_Ifx_SRC_GASCLIN"
	.byte	0x18
	.byte	0xa
	.uahalf	0x132
	.uaword	0x1949
	.uleb128 0x15
	.string	"ASCLIN"
	.byte	0xa
	.uahalf	0x134
	.uaword	0x1959
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0xf75
	.uaword	0x1959
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.uaword	0x1949
	.uleb128 0x16
	.string	"Ifx_SRC_GASCLIN"
	.byte	0xa
	.uahalf	0x135
	.uaword	0x1976
	.uleb128 0x1a
	.uaword	0x191e
	.uleb128 0x13
	.string	"_Ifx_SRC_GBCU"
	.byte	0x4
	.byte	0xa
	.uahalf	0x138
	.uaword	0x19a0
	.uleb128 0x15
	.string	"SPB"
	.byte	0xa
	.uahalf	0x13a
	.uaword	0xfb7
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_GBCU"
	.byte	0xa
	.uahalf	0x13b
	.uaword	0x19b5
	.uleb128 0x1a
	.uaword	0x197b
	.uleb128 0x13
	.string	"_Ifx_SRC_GCAN"
	.byte	0x60
	.byte	0xa
	.uahalf	0x13e
	.uaword	0x19ed
	.uleb128 0x15
	.string	"CAN"
	.byte	0xa
	.uahalf	0x140
	.uaword	0x19fd
	.byte	0
	.uleb128 0x15
	.string	"CAN1"
	.byte	0xa
	.uahalf	0x141
	.uaword	0x1a12
	.byte	0x40
	.byte	0
	.uleb128 0x1b
	.uaword	0x1010
	.uaword	0x19fd
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x19ed
	.uleb128 0x1b
	.uaword	0x105b
	.uaword	0x1a12
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1a02
	.uleb128 0x16
	.string	"Ifx_SRC_GCAN"
	.byte	0xa
	.uahalf	0x142
	.uaword	0x1a2c
	.uleb128 0x1a
	.uaword	0x19ba
	.uleb128 0x13
	.string	"_Ifx_SRC_GCCU6"
	.byte	0x20
	.byte	0xa
	.uahalf	0x145
	.uaword	0x1a58
	.uleb128 0x15
	.string	"CCU6"
	.byte	0xa
	.uahalf	0x147
	.uaword	0x1a68
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x10bb
	.uaword	0x1a68
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.uaword	0x1a58
	.uleb128 0x16
	.string	"Ifx_SRC_GCCU6"
	.byte	0xa
	.uahalf	0x148
	.uaword	0x1a83
	.uleb128 0x1a
	.uaword	0x1a31
	.uleb128 0x13
	.string	"_Ifx_SRC_GCERBERUS"
	.byte	0x8
	.byte	0xa
	.uahalf	0x14b
	.uaword	0x1ab2
	.uleb128 0x14
	.uaword	.LASF15
	.byte	0xa
	.uahalf	0x14d
	.uaword	0x110a
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_GCERBERUS"
	.byte	0xa
	.uahalf	0x14e
	.uaword	0x1acc
	.uleb128 0x1a
	.uaword	0x1a88
	.uleb128 0x13
	.string	"_Ifx_SRC_GCPU"
	.byte	0x20
	.byte	0xa
	.uahalf	0x151
	.uaword	0x1af6
	.uleb128 0x15
	.string	"CPU"
	.byte	0xa
	.uahalf	0x153
	.uaword	0x1b06
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1167
	.uaword	0x1b06
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1af6
	.uleb128 0x16
	.string	"Ifx_SRC_GCPU"
	.byte	0xa
	.uahalf	0x154
	.uaword	0x1b20
	.uleb128 0x1a
	.uaword	0x1ad1
	.uleb128 0x13
	.string	"_Ifx_SRC_GDMA"
	.byte	0x50
	.byte	0xa
	.uahalf	0x157
	.uaword	0x1b4a
	.uleb128 0x15
	.string	"DMA"
	.byte	0xa
	.uahalf	0x159
	.uaword	0x1b5a
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x11c8
	.uaword	0x1b5a
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1b4a
	.uleb128 0x16
	.string	"Ifx_SRC_GDMA"
	.byte	0xa
	.uahalf	0x15a
	.uaword	0x1b74
	.uleb128 0x1a
	.uaword	0x1b25
	.uleb128 0x13
	.string	"_Ifx_SRC_GEMEM"
	.byte	0x4
	.byte	0xa
	.uahalf	0x15d
	.uaword	0x1ba0
	.uleb128 0x15
	.string	"EMEM"
	.byte	0xa
	.uahalf	0x15f
	.uaword	0x1bb0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1202
	.uaword	0x1bb0
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1ba0
	.uleb128 0x16
	.string	"Ifx_SRC_GEMEM"
	.byte	0xa
	.uahalf	0x160
	.uaword	0x1bcb
	.uleb128 0x1a
	.uaword	0x1b79
	.uleb128 0x13
	.string	"_Ifx_SRC_GERAY"
	.byte	0x50
	.byte	0xa
	.uahalf	0x163
	.uaword	0x1bf7
	.uleb128 0x15
	.string	"ERAY"
	.byte	0xa
	.uahalf	0x165
	.uaword	0x1c07
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x129d
	.uaword	0x1c07
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1bf7
	.uleb128 0x16
	.string	"Ifx_SRC_GERAY"
	.byte	0xa
	.uahalf	0x166
	.uaword	0x1c22
	.uleb128 0x1a
	.uaword	0x1bd0
	.uleb128 0x13
	.string	"_Ifx_SRC_GETH"
	.byte	0x4
	.byte	0xa
	.uahalf	0x169
	.uaword	0x1c4c
	.uleb128 0x15
	.string	"ETH"
	.byte	0xa
	.uahalf	0x16b
	.uaword	0x1c5c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x12d7
	.uaword	0x1c5c
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1c4c
	.uleb128 0x16
	.string	"Ifx_SRC_GETH"
	.byte	0xa
	.uahalf	0x16c
	.uaword	0x1c76
	.uleb128 0x1a
	.uaword	0x1c27
	.uleb128 0x13
	.string	"_Ifx_SRC_GEVR"
	.byte	0x8
	.byte	0xa
	.uahalf	0x16f
	.uaword	0x1ca0
	.uleb128 0x15
	.string	"EVR"
	.byte	0xa
	.uahalf	0x171
	.uaword	0x1cb0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x131e
	.uaword	0x1cb0
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1ca0
	.uleb128 0x16
	.string	"Ifx_SRC_GEVR"
	.byte	0xa
	.uahalf	0x172
	.uaword	0x1cca
	.uleb128 0x1a
	.uaword	0x1c7b
	.uleb128 0x13
	.string	"_Ifx_SRC_GFFT"
	.byte	0xc
	.byte	0xa
	.uahalf	0x175
	.uaword	0x1cf4
	.uleb128 0x15
	.string	"FFT"
	.byte	0xa
	.uahalf	0x177
	.uaword	0x1d04
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1371
	.uaword	0x1d04
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1cf4
	.uleb128 0x16
	.string	"Ifx_SRC_GFFT"
	.byte	0xa
	.uahalf	0x178
	.uaword	0x1d1e
	.uleb128 0x1a
	.uaword	0x1ccf
	.uleb128 0x20
	.string	"_Ifx_SRC_GGPSR"
	.uahalf	0x600
	.byte	0xa
	.uahalf	0x17b
	.uaword	0x1d4b
	.uleb128 0x15
	.string	"GPSR"
	.byte	0xa
	.uahalf	0x17d
	.uaword	0x1d5b
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x13ee
	.uaword	0x1d5b
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1d4b
	.uleb128 0x16
	.string	"Ifx_SRC_GGPSR"
	.byte	0xa
	.uahalf	0x17e
	.uaword	0x1d76
	.uleb128 0x1a
	.uaword	0x1d23
	.uleb128 0x13
	.string	"_Ifx_SRC_GGPT12"
	.byte	0x30
	.byte	0xa
	.uahalf	0x181
	.uaword	0x1da4
	.uleb128 0x15
	.string	"GPT12"
	.byte	0xa
	.uahalf	0x183
	.uaword	0x1db4
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1487
	.uaword	0x1db4
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1da4
	.uleb128 0x16
	.string	"Ifx_SRC_GGPT12"
	.byte	0xa
	.uahalf	0x184
	.uaword	0x1dd0
	.uleb128 0x1a
	.uaword	0x1d7b
	.uleb128 0x20
	.string	"_Ifx_SRC_GGTM"
	.uahalf	0x5c0
	.byte	0xa
	.uahalf	0x187
	.uaword	0x1dfb
	.uleb128 0x15
	.string	"GTM"
	.byte	0xa
	.uahalf	0x189
	.uaword	0x1e0b
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1574
	.uaword	0x1e0b
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1dfb
	.uleb128 0x16
	.string	"Ifx_SRC_GGTM"
	.byte	0xa
	.uahalf	0x18a
	.uaword	0x1e25
	.uleb128 0x1a
	.uaword	0x1dd5
	.uleb128 0x13
	.string	"_Ifx_SRC_GHSM"
	.byte	0x8
	.byte	0xa
	.uahalf	0x18d
	.uaword	0x1e4f
	.uleb128 0x15
	.string	"HSM"
	.byte	0xa
	.uahalf	0x18f
	.uaword	0x1e5f
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x15ae
	.uaword	0x1e5f
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1e4f
	.uleb128 0x16
	.string	"Ifx_SRC_GHSM"
	.byte	0xa
	.uahalf	0x190
	.uaword	0x1e79
	.uleb128 0x1a
	.uaword	0x1e2a
	.uleb128 0x13
	.string	"_Ifx_SRC_GLMU"
	.byte	0x4
	.byte	0xa
	.uahalf	0x193
	.uaword	0x1ea3
	.uleb128 0x15
	.string	"LMU"
	.byte	0xa
	.uahalf	0x195
	.uaword	0x1eb3
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x15e7
	.uaword	0x1eb3
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1ea3
	.uleb128 0x16
	.string	"Ifx_SRC_GLMU"
	.byte	0xa
	.uahalf	0x196
	.uaword	0x1ecd
	.uleb128 0x1a
	.uaword	0x1e7e
	.uleb128 0x13
	.string	"_Ifx_SRC_GPMU"
	.byte	0x8
	.byte	0xa
	.uahalf	0x199
	.uaword	0x1ef7
	.uleb128 0x15
	.string	"PMU"
	.byte	0xa
	.uahalf	0x19b
	.uaword	0x1f07
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1620
	.uaword	0x1f07
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x1
	.byte	0
	.uleb128 0x1a
	.uaword	0x1ef7
	.uleb128 0x16
	.string	"Ifx_SRC_GPMU"
	.byte	0xa
	.uahalf	0x19c
	.uaword	0x1f21
	.uleb128 0x1a
	.uaword	0x1ed2
	.uleb128 0x13
	.string	"_Ifx_SRC_GQSPI"
	.byte	0x60
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x1f4d
	.uleb128 0x15
	.string	"QSPI"
	.byte	0xa
	.uahalf	0x1a1
	.uaword	0x1f5d
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1691
	.uaword	0x1f5d
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.uaword	0x1f4d
	.uleb128 0x16
	.string	"Ifx_SRC_GQSPI"
	.byte	0xa
	.uahalf	0x1a2
	.uaword	0x1f78
	.uleb128 0x1a
	.uaword	0x1f26
	.uleb128 0x13
	.string	"_Ifx_SRC_GSCU"
	.byte	0x14
	.byte	0xa
	.uahalf	0x1a5
	.uaword	0x1fa2
	.uleb128 0x15
	.string	"SCU"
	.byte	0xa
	.uahalf	0x1a7
	.uaword	0x16e8
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_GSCU"
	.byte	0xa
	.uahalf	0x1a8
	.uaword	0x1fb7
	.uleb128 0x1a
	.uaword	0x1f7d
	.uleb128 0x13
	.string	"_Ifx_SRC_GSENT"
	.byte	0x10
	.byte	0xa
	.uahalf	0x1ab
	.uaword	0x1fe3
	.uleb128 0x15
	.string	"SENT"
	.byte	0xa
	.uahalf	0x1ad
	.uaword	0x1ff3
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1722
	.uaword	0x1ff3
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x1fe3
	.uleb128 0x16
	.string	"Ifx_SRC_GSENT"
	.byte	0xa
	.uahalf	0x1ae
	.uaword	0x200e
	.uleb128 0x1a
	.uaword	0x1fbc
	.uleb128 0x13
	.string	"_Ifx_SRC_GSMU"
	.byte	0xc
	.byte	0xa
	.uahalf	0x1b1
	.uaword	0x2038
	.uleb128 0x15
	.string	"SMU"
	.byte	0xa
	.uahalf	0x1b3
	.uaword	0x2048
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x176e
	.uaword	0x2048
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x2038
	.uleb128 0x16
	.string	"Ifx_SRC_GSMU"
	.byte	0xa
	.uahalf	0x1b4
	.uaword	0x2062
	.uleb128 0x1a
	.uaword	0x2013
	.uleb128 0x13
	.string	"_Ifx_SRC_GSTM"
	.byte	0x60
	.byte	0xa
	.uahalf	0x1b7
	.uaword	0x208c
	.uleb128 0x15
	.string	"STM"
	.byte	0xa
	.uahalf	0x1b9
	.uaword	0x209c
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x17d5
	.uaword	0x209c
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x208c
	.uleb128 0x16
	.string	"Ifx_SRC_GSTM"
	.byte	0xa
	.uahalf	0x1ba
	.uaword	0x20b6
	.uleb128 0x1a
	.uaword	0x2067
	.uleb128 0x20
	.string	"_Ifx_SRC_GVADC"
	.uahalf	0x260
	.byte	0xa
	.uahalf	0x1bd
	.uaword	0x2102
	.uleb128 0x15
	.string	"G"
	.byte	0xa
	.uahalf	0x1bf
	.uaword	0x2112
	.byte	0
	.uleb128 0x15
	.string	"reserved_40"
	.byte	0xa
	.uahalf	0x1c0
	.uaword	0x2117
	.byte	0x40
	.uleb128 0x21
	.string	"CG"
	.byte	0xa
	.uahalf	0x1c1
	.uaword	0x2137
	.uahalf	0x120
	.byte	0
	.uleb128 0x1b
	.uaword	0x18c4
	.uaword	0x2112
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.uaword	0x2102
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2127
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0xdf
	.byte	0
	.uleb128 0x1b
	.uaword	0x185b
	.uaword	0x2137
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x2127
	.uleb128 0x16
	.string	"Ifx_SRC_GVADC"
	.byte	0xa
	.uahalf	0x1c2
	.uaword	0x2152
	.uleb128 0x1a
	.uaword	0x20bb
	.uleb128 0x13
	.string	"_Ifx_SRC_GXBAR"
	.byte	0x4
	.byte	0xa
	.uahalf	0x1c5
	.uaword	0x217e
	.uleb128 0x15
	.string	"XBAR"
	.byte	0xa
	.uahalf	0x1c7
	.uaword	0x1904
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC_GXBAR"
	.byte	0xa
	.uahalf	0x1c8
	.uaword	0x2194
	.uleb128 0x1a
	.uaword	0x2157
	.uleb128 0x20
	.string	"_Ifx_SRC"
	.uahalf	0x2000
	.byte	0xa
	.uahalf	0x1d5
	.uaword	0x24ae
	.uleb128 0x15
	.string	"CPU"
	.byte	0xa
	.uahalf	0x1d7
	.uaword	0x1b0b
	.byte	0
	.uleb128 0x15
	.string	"EMEM"
	.byte	0xa
	.uahalf	0x1d8
	.uaword	0x1bb5
	.byte	0x20
	.uleb128 0x14
	.uaword	.LASF16
	.byte	0xa
	.uahalf	0x1d9
	.uaword	0x1157
	.byte	0x24
	.uleb128 0x15
	.string	"BCU"
	.byte	0xa
	.uahalf	0x1da
	.uaword	0x19a0
	.byte	0x40
	.uleb128 0x15
	.string	"reserved_44"
	.byte	0xa
	.uahalf	0x1db
	.uaword	0x24ae
	.byte	0x44
	.uleb128 0x15
	.string	"XBAR"
	.byte	0xa
	.uahalf	0x1dc
	.uaword	0x217e
	.byte	0x48
	.uleb128 0x15
	.string	"reserved_4C"
	.byte	0xa
	.uahalf	0x1dd
	.uaword	0x24ae
	.byte	0x4c
	.uleb128 0x14
	.uaword	.LASF15
	.byte	0xa
	.uahalf	0x1de
	.uaword	0x1ab2
	.byte	0x50
	.uleb128 0x15
	.string	"reserved_58"
	.byte	0xa
	.uahalf	0x1df
	.uaword	0x128d
	.byte	0x58
	.uleb128 0x15
	.string	"ASCLIN"
	.byte	0xa
	.uahalf	0x1e0
	.uaword	0x195e
	.byte	0x80
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xa
	.uahalf	0x1e1
	.uaword	0x24be
	.byte	0x98
	.uleb128 0x21
	.string	"QSPI"
	.byte	0xa
	.uahalf	0x1e2
	.uaword	0x1f62
	.uahalf	0x190
	.uleb128 0x21
	.string	"reserved_1F0"
	.byte	0xa
	.uahalf	0x1e3
	.uaword	0x24ce
	.uahalf	0x1f0
	.uleb128 0x21
	.string	"SENT"
	.byte	0xa
	.uahalf	0x1e4
	.uaword	0x1ff8
	.uahalf	0x350
	.uleb128 0x21
	.string	"reserved_360"
	.byte	0xa
	.uahalf	0x1e5
	.uaword	0x24df
	.uahalf	0x360
	.uleb128 0x21
	.string	"CCU6"
	.byte	0xa
	.uahalf	0x1e6
	.uaword	0x1a6d
	.uahalf	0x420
	.uleb128 0x21
	.string	"reserved_440"
	.byte	0xa
	.uahalf	0x1e7
	.uaword	0x24ef
	.uahalf	0x440
	.uleb128 0x21
	.string	"GPT12"
	.byte	0xa
	.uahalf	0x1e8
	.uaword	0x1db9
	.uahalf	0x460
	.uleb128 0x21
	.string	"STM"
	.byte	0xa
	.uahalf	0x1e9
	.uaword	0x20a1
	.uahalf	0x490
	.uleb128 0x21
	.string	"DMA"
	.byte	0xa
	.uahalf	0x1ea
	.uaword	0x1b5f
	.uahalf	0x4f0
	.uleb128 0x21
	.string	"reserved_540"
	.byte	0xa
	.uahalf	0x1eb
	.uaword	0x24ff
	.uahalf	0x540
	.uleb128 0x21
	.string	"ETH"
	.byte	0xa
	.uahalf	0x1ec
	.uaword	0x1c61
	.uahalf	0x8f0
	.uleb128 0x21
	.string	"reserved_8F4"
	.byte	0xa
	.uahalf	0x1ed
	.uaword	0x11b8
	.uahalf	0x8f4
	.uleb128 0x21
	.string	"CAN"
	.byte	0xa
	.uahalf	0x1ee
	.uaword	0x1a17
	.uahalf	0x900
	.uleb128 0x21
	.string	"reserved_960"
	.byte	0xa
	.uahalf	0x1ef
	.uaword	0x24ef
	.uahalf	0x960
	.uleb128 0x21
	.string	"VADC"
	.byte	0xa
	.uahalf	0x1f0
	.uaword	0x213c
	.uahalf	0x980
	.uleb128 0x21
	.string	"ERAY"
	.byte	0xa
	.uahalf	0x1f1
	.uaword	0x1c0c
	.uahalf	0xbe0
	.uleb128 0x21
	.string	"PMU"
	.byte	0xa
	.uahalf	0x1f2
	.uaword	0x1f0c
	.uahalf	0xc30
	.uleb128 0x21
	.string	"reserved_C38"
	.byte	0xa
	.uahalf	0x1f3
	.uaword	0x2510
	.uahalf	0xc38
	.uleb128 0x21
	.string	"HSM"
	.byte	0xa
	.uahalf	0x1f4
	.uaword	0x1e64
	.uahalf	0xcc0
	.uleb128 0x21
	.string	"reserved_CC8"
	.byte	0xa
	.uahalf	0x1f5
	.uaword	0x2520
	.uahalf	0xcc8
	.uleb128 0x21
	.string	"SCU"
	.byte	0xa
	.uahalf	0x1f6
	.uaword	0x1fa2
	.uahalf	0xcd0
	.uleb128 0x21
	.string	"reserved_CE4"
	.byte	0xa
	.uahalf	0x1f7
	.uaword	0x2530
	.uahalf	0xce4
	.uleb128 0x21
	.string	"SMU"
	.byte	0xa
	.uahalf	0x1f8
	.uaword	0x204d
	.uahalf	0xd10
	.uleb128 0x21
	.string	"reserved_D1C"
	.byte	0xa
	.uahalf	0x1f9
	.uaword	0x2540
	.uahalf	0xd1c
	.uleb128 0x21
	.string	"LMU"
	.byte	0xa
	.uahalf	0x1fa
	.uaword	0x1eb8
	.uahalf	0xde0
	.uleb128 0x21
	.string	"reserved_DE4"
	.byte	0xa
	.uahalf	0x1fb
	.uaword	0x2550
	.uahalf	0xde4
	.uleb128 0x21
	.string	"EVR"
	.byte	0xa
	.uahalf	0x1fc
	.uaword	0x1cb5
	.uahalf	0xfb0
	.uleb128 0x21
	.string	"reserved_FB8"
	.byte	0xa
	.uahalf	0x1fd
	.uaword	0x2520
	.uahalf	0xfb8
	.uleb128 0x21
	.string	"FFT"
	.byte	0xa
	.uahalf	0x1fe
	.uaword	0x1d09
	.uahalf	0xfc0
	.uleb128 0x21
	.string	"reserved_FCC"
	.byte	0xa
	.uahalf	0x1ff
	.uaword	0x2561
	.uahalf	0xfcc
	.uleb128 0x21
	.string	"GPSR"
	.byte	0xa
	.uahalf	0x200
	.uaword	0x1d60
	.uahalf	0x1000
	.uleb128 0x21
	.string	"GTM"
	.byte	0xa
	.uahalf	0x201
	.uaword	0x1e10
	.uahalf	0x1600
	.uleb128 0x21
	.string	"reserved_1BC0"
	.byte	0xa
	.uahalf	0x202
	.uaword	0x2571
	.uahalf	0x1bc0
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x24be
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x3
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x24ce
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0xf7
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x24df
	.uleb128 0x1e
	.uaword	0x1004
	.uahalf	0x15f
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x24ef
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0xbf
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x24ff
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x1f
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2510
	.uleb128 0x1e
	.uaword	0x1004
	.uahalf	0x3af
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2520
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x87
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2530
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x7
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2540
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x2b
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2550
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0xc3
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2561
	.uleb128 0x1e
	.uaword	0x1004
	.uahalf	0x1cb
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2571
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x33
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x2582
	.uleb128 0x1e
	.uaword	0x1004
	.uahalf	0x43f
	.byte	0
	.uleb128 0x16
	.string	"Ifx_SRC"
	.byte	0xa
	.uahalf	0x203
	.uaword	0x2592
	.uleb128 0x1a
	.uaword	0x2199
	.uleb128 0x18
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x2d
	.uaword	0x27a9
	.uleb128 0xf
	.string	"EN0"
	.byte	0xb
	.byte	0x2f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"EN1"
	.byte	0xb
	.byte	0x30
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"EN2"
	.byte	0xb
	.byte	0x31
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"EN3"
	.byte	0xb
	.byte	0x32
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"EN4"
	.byte	0xb
	.byte	0x33
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"EN5"
	.byte	0xb
	.byte	0x34
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"EN6"
	.byte	0xb
	.byte	0x35
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"EN7"
	.byte	0xb
	.byte	0x36
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"EN8"
	.byte	0xb
	.byte	0x37
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"EN9"
	.byte	0xb
	.byte	0x38
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"EN10"
	.byte	0xb
	.byte	0x39
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"EN11"
	.byte	0xb
	.byte	0x3a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"EN12"
	.byte	0xb
	.byte	0x3b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"EN13"
	.byte	0xb
	.byte	0x3c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"EN14"
	.byte	0xb
	.byte	0x3d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"EN15"
	.byte	0xb
	.byte	0x3e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"EN16"
	.byte	0xb
	.byte	0x3f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"EN17"
	.byte	0xb
	.byte	0x40
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"EN18"
	.byte	0xb
	.byte	0x41
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"EN19"
	.byte	0xb
	.byte	0x42
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"EN20"
	.byte	0xb
	.byte	0x43
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"EN21"
	.byte	0xb
	.byte	0x44
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"EN22"
	.byte	0xb
	.byte	0x45
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"EN23"
	.byte	0xb
	.byte	0x46
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"EN24"
	.byte	0xb
	.byte	0x47
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"EN25"
	.byte	0xb
	.byte	0x48
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"EN26"
	.byte	0xb
	.byte	0x49
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"EN27"
	.byte	0xb
	.byte	0x4a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"EN28"
	.byte	0xb
	.byte	0x4b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"EN29"
	.byte	0xb
	.byte	0x4c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"EN30"
	.byte	0xb
	.byte	0x4d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"EN31"
	.byte	0xb
	.byte	0x4e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0xb
	.byte	0x4f
	.uaword	0x2597
	.uleb128 0x18
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x52
	.uaword	0x27ed
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0x54
	.uaword	0xed9
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0xb
	.byte	0x55
	.uaword	0x27c2
	.uleb128 0x18
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x58
	.uaword	0x2924
	.uleb128 0xf
	.string	"EN0"
	.byte	0xb
	.byte	0x5a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"EN1"
	.byte	0xb
	.byte	0x5b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"EN2"
	.byte	0xb
	.byte	0x5c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"EN3"
	.byte	0xb
	.byte	0x5d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"EN4"
	.byte	0xb
	.byte	0x5e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"EN5"
	.byte	0xb
	.byte	0x5f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"EN6"
	.byte	0xb
	.byte	0x60
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"EN7"
	.byte	0xb
	.byte	0x61
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"EN8"
	.byte	0xb
	.byte	0x62
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"EN9"
	.byte	0xb
	.byte	0x63
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"EN10"
	.byte	0xb
	.byte	0x64
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"EN11"
	.byte	0xb
	.byte	0x65
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"EN12"
	.byte	0xb
	.byte	0x66
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"EN13"
	.byte	0xb
	.byte	0x67
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"EN14"
	.byte	0xb
	.byte	0x68
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"EN15"
	.byte	0xb
	.byte	0x69
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xb
	.byte	0x6a
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0xb
	.byte	0x6b
	.uaword	0x2806
	.uleb128 0x18
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x6e
	.uaword	0x2986
	.uleb128 0xf
	.string	"MODREV"
	.byte	0xb
	.byte	0x70
	.uaword	0xed9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0xb
	.byte	0x71
	.uaword	0xed9
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF20
	.byte	0xb
	.byte	0x72
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0xb
	.byte	0x73
	.uaword	0x293a
	.uleb128 0x18
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x76
	.uaword	0x2aa8
	.uleb128 0xf
	.string	"P0"
	.byte	0xb
	.byte	0x78
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"P1"
	.byte	0xb
	.byte	0x79
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"P2"
	.byte	0xb
	.byte	0x7a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"P3"
	.byte	0xb
	.byte	0x7b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"P4"
	.byte	0xb
	.byte	0x7c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"P5"
	.byte	0xb
	.byte	0x7d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"P6"
	.byte	0xb
	.byte	0x7e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"P7"
	.byte	0xb
	.byte	0x7f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"P8"
	.byte	0xb
	.byte	0x80
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"P9"
	.byte	0xb
	.byte	0x81
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"P10"
	.byte	0xb
	.byte	0x82
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"P11"
	.byte	0xb
	.byte	0x83
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"P12"
	.byte	0xb
	.byte	0x84
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"P13"
	.byte	0xb
	.byte	0x85
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"P14"
	.byte	0xb
	.byte	0x86
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"P15"
	.byte	0xb
	.byte	0x87
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xb
	.byte	0x88
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0xb
	.byte	0x89
	.uaword	0x299b
	.uleb128 0x18
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x8c
	.uaword	0x2b50
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0x8e
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PC0"
	.byte	0xb
	.byte	0x8f
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.uaword	.LASF10
	.byte	0xb
	.byte	0x90
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PC1"
	.byte	0xb
	.byte	0x91
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xb
	.byte	0x92
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PC2"
	.byte	0xb
	.byte	0x93
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.uaword	.LASF16
	.byte	0xb
	.byte	0x94
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PC3"
	.byte	0xb
	.byte	0x95
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0xb
	.byte	0x96
	.uaword	0x2abd
	.uleb128 0x18
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0x99
	.uaword	0x2c00
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0x9b
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PC12"
	.byte	0xb
	.byte	0x9c
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.uaword	.LASF10
	.byte	0xb
	.byte	0x9d
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PC13"
	.byte	0xb
	.byte	0x9e
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xb
	.byte	0x9f
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PC14"
	.byte	0xb
	.byte	0xa0
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.uaword	.LASF16
	.byte	0xb
	.byte	0xa1
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PC15"
	.byte	0xb
	.byte	0xa2
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0xb
	.byte	0xa3
	.uaword	0x2b68
	.uleb128 0x18
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xa6
	.uaword	0x2cac
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0xa8
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PC4"
	.byte	0xb
	.byte	0xa9
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.uaword	.LASF10
	.byte	0xb
	.byte	0xaa
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PC5"
	.byte	0xb
	.byte	0xab
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xb
	.byte	0xac
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PC6"
	.byte	0xb
	.byte	0xad
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.uaword	.LASF16
	.byte	0xb
	.byte	0xae
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PC7"
	.byte	0xb
	.byte	0xaf
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0xb
	.byte	0xb0
	.uaword	0x2c19
	.uleb128 0x18
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xb3
	.uaword	0x2d59
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0xb5
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"PC8"
	.byte	0xb
	.byte	0xb6
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0
	.uleb128 0x19
	.uaword	.LASF10
	.byte	0xb
	.byte	0xb7
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"PC9"
	.byte	0xb
	.byte	0xb8
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xb
	.byte	0xb9
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PC10"
	.byte	0xb
	.byte	0xba
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.uaword	.LASF16
	.byte	0xb
	.byte	0xbb
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PC11"
	.byte	0xb
	.byte	0xbc
	.uaword	0xed9
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0xb
	.byte	0xbd
	.uaword	0x2cc4
	.uleb128 0x18
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xc0
	.uaword	0x2dea
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0xc2
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PCL0"
	.byte	0xb
	.byte	0xc3
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"PCL1"
	.byte	0xb
	.byte	0xc4
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"PCL2"
	.byte	0xb
	.byte	0xc5
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PCL3"
	.byte	0xb
	.byte	0xc6
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x19
	.uaword	.LASF21
	.byte	0xb
	.byte	0xc7
	.uaword	0xed9
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0xb
	.byte	0xc8
	.uaword	0x2d71
	.uleb128 0x18
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xcb
	.uaword	0x2e71
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0xcd
	.uaword	0xed9
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PCL12"
	.byte	0xb
	.byte	0xce
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"PCL13"
	.byte	0xb
	.byte	0xcf
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"PCL14"
	.byte	0xb
	.byte	0xd0
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PCL15"
	.byte	0xb
	.byte	0xd1
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0xb
	.byte	0xd2
	.uaword	0x2e02
	.uleb128 0x18
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xd5
	.uaword	0x2f03
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0xd7
	.uaword	0xed9
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0xb
	.byte	0xd8
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0xb
	.byte	0xd9
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0xb
	.byte	0xda
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0xb
	.byte	0xdb
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x19
	.uaword	.LASF16
	.byte	0xb
	.byte	0xdc
	.uaword	0xed9
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0xb
	.byte	0xdd
	.uaword	0x2e8a
	.uleb128 0x18
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xe0
	.uaword	0x2f96
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0xe2
	.uaword	0xed9
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0xb
	.byte	0xe3
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0xb
	.byte	0xe4
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0xb
	.byte	0xe5
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0xb
	.byte	0xe6
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.uaword	.LASF13
	.byte	0xb
	.byte	0xe7
	.uaword	0xed9
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0xb
	.byte	0xe8
	.uaword	0x2f1b
	.uleb128 0x18
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0xb
	.byte	0xeb
	.uaword	0x30dd
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xb
	.byte	0xed
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"PCL0"
	.byte	0xb
	.byte	0xee
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"PCL1"
	.byte	0xb
	.byte	0xef
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"PCL2"
	.byte	0xb
	.byte	0xf0
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"PCL3"
	.byte	0xb
	.byte	0xf1
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0xb
	.byte	0xf2
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0xb
	.byte	0xf3
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0xb
	.byte	0xf4
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0xb
	.byte	0xf5
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0xb
	.byte	0xf6
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0xb
	.byte	0xf7
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0xb
	.byte	0xf8
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0xb
	.byte	0xf9
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"PCL12"
	.byte	0xb
	.byte	0xfa
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"PCL13"
	.byte	0xb
	.byte	0xfb
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"PCL14"
	.byte	0xb
	.byte	0xfc
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"PCL15"
	.byte	0xb
	.byte	0xfd
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR_Bits"
	.byte	0xb
	.byte	0xfe
	.uaword	0x2fae
	.uleb128 0x13
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x101
	.uaword	0x332a
	.uleb128 0x22
	.string	"PS0"
	.byte	0xb
	.uahalf	0x103
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.string	"PS1"
	.byte	0xb
	.uahalf	0x104
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x22
	.string	"PS2"
	.byte	0xb
	.uahalf	0x105
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"PS3"
	.byte	0xb
	.uahalf	0x106
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x22
	.string	"PS4"
	.byte	0xb
	.uahalf	0x107
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x22
	.string	"PS5"
	.byte	0xb
	.uahalf	0x108
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x22
	.string	"PS6"
	.byte	0xb
	.uahalf	0x109
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.string	"PS7"
	.byte	0xb
	.uahalf	0x10a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x22
	.string	"PS8"
	.byte	0xb
	.uahalf	0x10b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.string	"PS9"
	.byte	0xb
	.uahalf	0x10c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x22
	.string	"PS10"
	.byte	0xb
	.uahalf	0x10d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x22
	.string	"PS11"
	.byte	0xb
	.uahalf	0x10e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x22
	.string	"PS12"
	.byte	0xb
	.uahalf	0x10f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x22
	.string	"PS13"
	.byte	0xb
	.uahalf	0x110
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x22
	.string	"PS14"
	.byte	0xb
	.uahalf	0x111
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.string	"PS15"
	.byte	0xb
	.uahalf	0x112
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x22
	.string	"PCL0"
	.byte	0xb
	.uahalf	0x113
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x22
	.string	"PCL1"
	.byte	0xb
	.uahalf	0x114
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x22
	.string	"PCL2"
	.byte	0xb
	.uahalf	0x115
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x22
	.string	"PCL3"
	.byte	0xb
	.uahalf	0x116
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x22
	.string	"PCL4"
	.byte	0xb
	.uahalf	0x117
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x22
	.string	"PCL5"
	.byte	0xb
	.uahalf	0x118
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x22
	.string	"PCL6"
	.byte	0xb
	.uahalf	0x119
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x22
	.string	"PCL7"
	.byte	0xb
	.uahalf	0x11a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.string	"PCL8"
	.byte	0xb
	.uahalf	0x11b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x22
	.string	"PCL9"
	.byte	0xb
	.uahalf	0x11c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x22
	.string	"PCL10"
	.byte	0xb
	.uahalf	0x11d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x22
	.string	"PCL11"
	.byte	0xb
	.uahalf	0x11e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.string	"PCL12"
	.byte	0xb
	.uahalf	0x11f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x22
	.string	"PCL13"
	.byte	0xb
	.uahalf	0x120
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x22
	.string	"PCL14"
	.byte	0xb
	.uahalf	0x121
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.string	"PCL15"
	.byte	0xb
	.uahalf	0x122
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMR_Bits"
	.byte	0xb
	.uahalf	0x123
	.uaword	0x30f4
	.uleb128 0x13
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x126
	.uaword	0x33ad
	.uleb128 0x22
	.string	"PS0"
	.byte	0xb
	.uahalf	0x128
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.string	"PS1"
	.byte	0xb
	.uahalf	0x129
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x22
	.string	"PS2"
	.byte	0xb
	.uahalf	0x12a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"PS3"
	.byte	0xb
	.uahalf	0x12b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x23
	.uaword	.LASF12
	.byte	0xb
	.uahalf	0x12c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0xb
	.uahalf	0x12d
	.uaword	0x3341
	.uleb128 0x13
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x130
	.uaword	0x3447
	.uleb128 0x23
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x132
	.uaword	0xed9
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0x22
	.string	"PS12"
	.byte	0xb
	.uahalf	0x133
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x22
	.string	"PS13"
	.byte	0xb
	.uahalf	0x134
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x22
	.string	"PS14"
	.byte	0xb
	.uahalf	0x135
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.string	"PS15"
	.byte	0xb
	.uahalf	0x136
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x137
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0xb
	.uahalf	0x138
	.uaword	0x33c6
	.uleb128 0x13
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x13b
	.uaword	0x34dd
	.uleb128 0x23
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x13d
	.uaword	0xed9
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0x22
	.string	"PS4"
	.byte	0xb
	.uahalf	0x13e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x22
	.string	"PS5"
	.byte	0xb
	.uahalf	0x13f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x22
	.string	"PS6"
	.byte	0xb
	.uahalf	0x140
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.string	"PS7"
	.byte	0xb
	.uahalf	0x141
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x23
	.uaword	.LASF10
	.byte	0xb
	.uahalf	0x142
	.uaword	0xed9
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0xb
	.uahalf	0x143
	.uaword	0x3461
	.uleb128 0x13
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x146
	.uaword	0x3574
	.uleb128 0x23
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x148
	.uaword	0xed9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x22
	.string	"PS8"
	.byte	0xb
	.uahalf	0x149
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.string	"PS9"
	.byte	0xb
	.uahalf	0x14a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x22
	.string	"PS10"
	.byte	0xb
	.uahalf	0x14b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x22
	.string	"PS11"
	.byte	0xb
	.uahalf	0x14c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x23
	.uaword	.LASF11
	.byte	0xb
	.uahalf	0x14d
	.uaword	0xed9
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0xb
	.uahalf	0x14e
	.uaword	0x34f6
	.uleb128 0x13
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x151
	.uaword	0x36be
	.uleb128 0x22
	.string	"PS0"
	.byte	0xb
	.uahalf	0x153
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.string	"PS1"
	.byte	0xb
	.uahalf	0x154
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x22
	.string	"PS2"
	.byte	0xb
	.uahalf	0x155
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"PS3"
	.byte	0xb
	.uahalf	0x156
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x22
	.string	"PS4"
	.byte	0xb
	.uahalf	0x157
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x22
	.string	"PS5"
	.byte	0xb
	.uahalf	0x158
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x22
	.string	"PS6"
	.byte	0xb
	.uahalf	0x159
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.string	"PS7"
	.byte	0xb
	.uahalf	0x15a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x22
	.string	"PS8"
	.byte	0xb
	.uahalf	0x15b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.string	"PS9"
	.byte	0xb
	.uahalf	0x15c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x22
	.string	"PS10"
	.byte	0xb
	.uahalf	0x15d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x22
	.string	"PS11"
	.byte	0xb
	.uahalf	0x15e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x22
	.string	"PS12"
	.byte	0xb
	.uahalf	0x15f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x22
	.string	"PS13"
	.byte	0xb
	.uahalf	0x160
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x22
	.string	"PS14"
	.byte	0xb
	.uahalf	0x161
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.string	"PS15"
	.byte	0xb
	.uahalf	0x162
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x163
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR_Bits"
	.byte	0xb
	.uahalf	0x164
	.uaword	0x358d
	.uleb128 0x13
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x167
	.uaword	0x37f6
	.uleb128 0x22
	.string	"P0"
	.byte	0xb
	.uahalf	0x169
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.string	"P1"
	.byte	0xb
	.uahalf	0x16a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x22
	.string	"P2"
	.byte	0xb
	.uahalf	0x16b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"P3"
	.byte	0xb
	.uahalf	0x16c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x22
	.string	"P4"
	.byte	0xb
	.uahalf	0x16d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x22
	.string	"P5"
	.byte	0xb
	.uahalf	0x16e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x22
	.string	"P6"
	.byte	0xb
	.uahalf	0x16f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.string	"P7"
	.byte	0xb
	.uahalf	0x170
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x22
	.string	"P8"
	.byte	0xb
	.uahalf	0x171
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.string	"P9"
	.byte	0xb
	.uahalf	0x172
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x22
	.string	"P10"
	.byte	0xb
	.uahalf	0x173
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x22
	.string	"P11"
	.byte	0xb
	.uahalf	0x174
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x22
	.string	"P12"
	.byte	0xb
	.uahalf	0x175
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x22
	.string	"P13"
	.byte	0xb
	.uahalf	0x176
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x22
	.string	"P14"
	.byte	0xb
	.uahalf	0x177
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.string	"P15"
	.byte	0xb
	.uahalf	0x178
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x179
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OUT_Bits"
	.byte	0xb
	.uahalf	0x17a
	.uaword	0x36d6
	.uleb128 0x13
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x17d
	.uaword	0x38b4
	.uleb128 0x23
	.uaword	.LASF18
	.byte	0xb
	.uahalf	0x17f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.string	"SEL1"
	.byte	0xb
	.uahalf	0x180
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x22
	.string	"SEL2"
	.byte	0xb
	.uahalf	0x181
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"reserved_3"
	.byte	0xb
	.uahalf	0x182
	.uaword	0xed9
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.string	"SEL9"
	.byte	0xb
	.uahalf	0x183
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x22
	.string	"SEL10"
	.byte	0xb
	.uahalf	0x184
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x23
	.uaword	.LASF22
	.byte	0xb
	.uahalf	0x185
	.uaword	0xed9
	.byte	0x4
	.byte	0x14
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.string	"LCK"
	.byte	0xb
	.uahalf	0x186
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_PCSR_Bits"
	.byte	0xb
	.uahalf	0x187
	.uaword	0x380d
	.uleb128 0x13
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x18a
	.uaword	0x3a1e
	.uleb128 0x22
	.string	"PDIS0"
	.byte	0xb
	.uahalf	0x18c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x22
	.string	"PDIS1"
	.byte	0xb
	.uahalf	0x18d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x22
	.string	"PDIS2"
	.byte	0xb
	.uahalf	0x18e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"PDIS3"
	.byte	0xb
	.uahalf	0x18f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x22
	.string	"PDIS4"
	.byte	0xb
	.uahalf	0x190
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x22
	.string	"PDIS5"
	.byte	0xb
	.uahalf	0x191
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x22
	.string	"PDIS6"
	.byte	0xb
	.uahalf	0x192
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.string	"PDIS7"
	.byte	0xb
	.uahalf	0x193
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x22
	.string	"PDIS8"
	.byte	0xb
	.uahalf	0x194
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.string	"PDIS9"
	.byte	0xb
	.uahalf	0x195
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x22
	.string	"PDIS10"
	.byte	0xb
	.uahalf	0x196
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x22
	.string	"PDIS11"
	.byte	0xb
	.uahalf	0x197
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x22
	.string	"PDIS12"
	.byte	0xb
	.uahalf	0x198
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x22
	.string	"PDIS13"
	.byte	0xb
	.uahalf	0x199
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x22
	.string	"PDIS14"
	.byte	0xb
	.uahalf	0x19a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.string	"PDIS15"
	.byte	0xb
	.uahalf	0x19b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0xb
	.uahalf	0x19c
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_PDISC_Bits"
	.byte	0xb
	.uahalf	0x19d
	.uaword	0x38cc
	.uleb128 0x13
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1a0
	.uaword	0x3b52
	.uleb128 0x22
	.string	"PD0"
	.byte	0xb
	.uahalf	0x1a2
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"PL0"
	.byte	0xb
	.uahalf	0x1a3
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x22
	.string	"PD1"
	.byte	0xb
	.uahalf	0x1a4
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.string	"PL1"
	.byte	0xb
	.uahalf	0x1a5
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x22
	.string	"PD2"
	.byte	0xb
	.uahalf	0x1a6
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x22
	.string	"PL2"
	.byte	0xb
	.uahalf	0x1a7
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x22
	.string	"PD3"
	.byte	0xb
	.uahalf	0x1a8
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.string	"PL3"
	.byte	0xb
	.uahalf	0x1a9
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x22
	.string	"PD4"
	.byte	0xb
	.uahalf	0x1aa
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x22
	.string	"PL4"
	.byte	0xb
	.uahalf	0x1ab
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x22
	.string	"PD5"
	.byte	0xb
	.uahalf	0x1ac
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x22
	.string	"PL5"
	.byte	0xb
	.uahalf	0x1ad
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.string	"PD6"
	.byte	0xb
	.uahalf	0x1ae
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x22
	.string	"PL6"
	.byte	0xb
	.uahalf	0x1af
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.string	"PD7"
	.byte	0xb
	.uahalf	0x1b0
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.string	"PL7"
	.byte	0xb
	.uahalf	0x1b1
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_PDR0_Bits"
	.byte	0xb
	.uahalf	0x1b2
	.uaword	0x3a37
	.uleb128 0x13
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0xb
	.uahalf	0x1b5
	.uaword	0x3c91
	.uleb128 0x22
	.string	"PD8"
	.byte	0xb
	.uahalf	0x1b7
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"PL8"
	.byte	0xb
	.uahalf	0x1b8
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x22
	.string	"PD9"
	.byte	0xb
	.uahalf	0x1b9
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.string	"PL9"
	.byte	0xb
	.uahalf	0x1ba
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x22
	.string	"PD10"
	.byte	0xb
	.uahalf	0x1bb
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0
	.uleb128 0x22
	.string	"PL10"
	.byte	0xb
	.uahalf	0x1bc
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x22
	.string	"PD11"
	.byte	0xb
	.uahalf	0x1bd
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.string	"PL11"
	.byte	0xb
	.uahalf	0x1be
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x22
	.string	"PD12"
	.byte	0xb
	.uahalf	0x1bf
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0
	.uleb128 0x22
	.string	"PL12"
	.byte	0xb
	.uahalf	0x1c0
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x22
	.string	"PD13"
	.byte	0xb
	.uahalf	0x1c1
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0
	.uleb128 0x22
	.string	"PL13"
	.byte	0xb
	.uahalf	0x1c2
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x22
	.string	"PD14"
	.byte	0xb
	.uahalf	0x1c3
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0
	.uleb128 0x22
	.string	"PL14"
	.byte	0xb
	.uahalf	0x1c4
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.string	"PD15"
	.byte	0xb
	.uahalf	0x1c5
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x22
	.string	"PL15"
	.byte	0xb
	.uahalf	0x1c6
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_PDR1_Bits"
	.byte	0xb
	.uahalf	0x1c7
	.uaword	0x3b6a
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x1cf
	.uaword	0x3cd1
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x1d1
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x1d2
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x1d3
	.uaword	0x27a9
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_ACCEN0"
	.byte	0xb
	.uahalf	0x1d4
	.uaword	0x3ca9
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x1d7
	.uaword	0x3d0e
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x1d9
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x1da
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x1db
	.uaword	0x27ed
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_ACCEN1"
	.byte	0xb
	.uahalf	0x1dc
	.uaword	0x3ce6
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x1df
	.uaword	0x3d4b
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x1e1
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x1e2
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x1e3
	.uaword	0x2924
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_ESR"
	.byte	0xb
	.uahalf	0x1e4
	.uaword	0x3d23
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x1e7
	.uaword	0x3d85
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x1e9
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x1ea
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x1eb
	.uaword	0x2986
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_ID"
	.byte	0xb
	.uahalf	0x1ec
	.uaword	0x3d5d
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x1ef
	.uaword	0x3dbe
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x1f1
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x1f2
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x1f3
	.uaword	0x2aa8
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_IN"
	.byte	0xb
	.uahalf	0x1f4
	.uaword	0x3d96
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x1f7
	.uaword	0x3df7
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x1f9
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x1fa
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x1fb
	.uaword	0x2b50
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_IOCR0"
	.byte	0xb
	.uahalf	0x1fc
	.uaword	0x3dcf
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x1ff
	.uaword	0x3e33
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x201
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x202
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x203
	.uaword	0x2c00
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_IOCR12"
	.byte	0xb
	.uahalf	0x204
	.uaword	0x3e0b
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x207
	.uaword	0x3e70
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x209
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x20a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x20b
	.uaword	0x2cac
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_IOCR4"
	.byte	0xb
	.uahalf	0x20c
	.uaword	0x3e48
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x20f
	.uaword	0x3eac
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x211
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x212
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x213
	.uaword	0x2d59
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_IOCR8"
	.byte	0xb
	.uahalf	0x214
	.uaword	0x3e84
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x217
	.uaword	0x3ee8
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x219
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x21a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x21b
	.uaword	0x30dd
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMCR"
	.byte	0xb
	.uahalf	0x21c
	.uaword	0x3ec0
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x21f
	.uaword	0x3f23
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x221
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x222
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x223
	.uaword	0x2dea
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMCR0"
	.byte	0xb
	.uahalf	0x224
	.uaword	0x3efb
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x227
	.uaword	0x3f5f
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x229
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x22a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x22b
	.uaword	0x2e71
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMCR12"
	.byte	0xb
	.uahalf	0x22c
	.uaword	0x3f37
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x22f
	.uaword	0x3f9c
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x231
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x232
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x233
	.uaword	0x2f03
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMCR4"
	.byte	0xb
	.uahalf	0x234
	.uaword	0x3f74
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x237
	.uaword	0x3fd8
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x239
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x23a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x23b
	.uaword	0x2f96
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMCR8"
	.byte	0xb
	.uahalf	0x23c
	.uaword	0x3fb0
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x23f
	.uaword	0x4014
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x241
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x242
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x243
	.uaword	0x332a
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMR"
	.byte	0xb
	.uahalf	0x244
	.uaword	0x3fec
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x247
	.uaword	0x404e
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x249
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x24a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x24b
	.uaword	0x36be
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR"
	.byte	0xb
	.uahalf	0x24c
	.uaword	0x4026
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x24f
	.uaword	0x4089
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x251
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x252
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x253
	.uaword	0x33ad
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR0"
	.byte	0xb
	.uahalf	0x254
	.uaword	0x4061
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x257
	.uaword	0x40c5
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x259
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x25a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x25b
	.uaword	0x3447
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR12"
	.byte	0xb
	.uahalf	0x25c
	.uaword	0x409d
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x25f
	.uaword	0x4102
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x261
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x262
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x263
	.uaword	0x34dd
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR4"
	.byte	0xb
	.uahalf	0x264
	.uaword	0x40da
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x267
	.uaword	0x413e
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x269
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x26a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x26b
	.uaword	0x3574
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OMSR8"
	.byte	0xb
	.uahalf	0x26c
	.uaword	0x4116
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x26f
	.uaword	0x417a
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x271
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x272
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x273
	.uaword	0x37f6
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_OUT"
	.byte	0xb
	.uahalf	0x274
	.uaword	0x4152
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x277
	.uaword	0x41b4
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x279
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x27a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x27b
	.uaword	0x38b4
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_PCSR"
	.byte	0xb
	.uahalf	0x27c
	.uaword	0x418c
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x27f
	.uaword	0x41ef
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x281
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x282
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x283
	.uaword	0x3a1e
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_PDISC"
	.byte	0xb
	.uahalf	0x284
	.uaword	0x41c7
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x287
	.uaword	0x422b
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x289
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x28a
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x28b
	.uaword	0x3b52
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_PDR0"
	.byte	0xb
	.uahalf	0x28c
	.uaword	0x4203
	.uleb128 0x24
	.byte	0x4
	.byte	0xb
	.uahalf	0x28f
	.uaword	0x4266
	.uleb128 0x25
	.string	"U"
	.byte	0xb
	.uahalf	0x291
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xb
	.uahalf	0x292
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xb
	.uahalf	0x293
	.uaword	0x3c91
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P_PDR1"
	.byte	0xb
	.uahalf	0x294
	.uaword	0x423e
	.uleb128 0x20
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0xb
	.uahalf	0x29f
	.uaword	0x4461
	.uleb128 0x15
	.string	"OUT"
	.byte	0xb
	.uahalf	0x2a1
	.uaword	0x417a
	.byte	0
	.uleb128 0x15
	.string	"OMR"
	.byte	0xb
	.uahalf	0x2a2
	.uaword	0x4014
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0xb
	.uahalf	0x2a3
	.uaword	0x3d85
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0xb
	.uahalf	0x2a4
	.uaword	0x24ae
	.byte	0xc
	.uleb128 0x15
	.string	"IOCR0"
	.byte	0xb
	.uahalf	0x2a5
	.uaword	0x3df7
	.byte	0x10
	.uleb128 0x15
	.string	"IOCR4"
	.byte	0xb
	.uahalf	0x2a6
	.uaword	0x3e70
	.byte	0x14
	.uleb128 0x15
	.string	"IOCR8"
	.byte	0xb
	.uahalf	0x2a7
	.uaword	0x3eac
	.byte	0x18
	.uleb128 0x15
	.string	"IOCR12"
	.byte	0xb
	.uahalf	0x2a8
	.uaword	0x3e33
	.byte	0x1c
	.uleb128 0x14
	.uaword	.LASF21
	.byte	0xb
	.uahalf	0x2a9
	.uaword	0x24ae
	.byte	0x20
	.uleb128 0x15
	.string	"IN"
	.byte	0xb
	.uahalf	0x2aa
	.uaword	0x3dbe
	.byte	0x24
	.uleb128 0x14
	.uaword	.LASF13
	.byte	0xb
	.uahalf	0x2ab
	.uaword	0x1477
	.byte	0x28
	.uleb128 0x15
	.string	"PDR0"
	.byte	0xb
	.uahalf	0x2ac
	.uaword	0x422b
	.byte	0x40
	.uleb128 0x15
	.string	"PDR1"
	.byte	0xb
	.uahalf	0x2ad
	.uaword	0x4266
	.byte	0x44
	.uleb128 0x14
	.uaword	.LASF24
	.byte	0xb
	.uahalf	0x2ae
	.uaword	0x2520
	.byte	0x48
	.uleb128 0x15
	.string	"ESR"
	.byte	0xb
	.uahalf	0x2af
	.uaword	0x3d4b
	.byte	0x50
	.uleb128 0x15
	.string	"reserved_54"
	.byte	0xb
	.uahalf	0x2b0
	.uaword	0x11b8
	.byte	0x54
	.uleb128 0x15
	.string	"PDISC"
	.byte	0xb
	.uahalf	0x2b1
	.uaword	0x41ef
	.byte	0x60
	.uleb128 0x15
	.string	"PCSR"
	.byte	0xb
	.uahalf	0x2b2
	.uaword	0x41b4
	.byte	0x64
	.uleb128 0x15
	.string	"reserved_64"
	.byte	0xb
	.uahalf	0x2b3
	.uaword	0x2520
	.byte	0x68
	.uleb128 0x15
	.string	"OMSR0"
	.byte	0xb
	.uahalf	0x2b4
	.uaword	0x4089
	.byte	0x70
	.uleb128 0x15
	.string	"OMSR4"
	.byte	0xb
	.uahalf	0x2b5
	.uaword	0x4102
	.byte	0x74
	.uleb128 0x15
	.string	"OMSR8"
	.byte	0xb
	.uahalf	0x2b6
	.uaword	0x413e
	.byte	0x78
	.uleb128 0x15
	.string	"OMSR12"
	.byte	0xb
	.uahalf	0x2b7
	.uaword	0x40c5
	.byte	0x7c
	.uleb128 0x15
	.string	"OMCR0"
	.byte	0xb
	.uahalf	0x2b8
	.uaword	0x3f23
	.byte	0x80
	.uleb128 0x15
	.string	"OMCR4"
	.byte	0xb
	.uahalf	0x2b9
	.uaword	0x3f9c
	.byte	0x84
	.uleb128 0x15
	.string	"OMCR8"
	.byte	0xb
	.uahalf	0x2ba
	.uaword	0x3fd8
	.byte	0x88
	.uleb128 0x15
	.string	"OMCR12"
	.byte	0xb
	.uahalf	0x2bb
	.uaword	0x3f5f
	.byte	0x8c
	.uleb128 0x15
	.string	"OMSR"
	.byte	0xb
	.uahalf	0x2bc
	.uaword	0x404e
	.byte	0x90
	.uleb128 0x15
	.string	"OMCR"
	.byte	0xb
	.uahalf	0x2bd
	.uaword	0x3ee8
	.byte	0x94
	.uleb128 0x14
	.uaword	.LASF17
	.byte	0xb
	.uahalf	0x2be
	.uaword	0x4461
	.byte	0x98
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0xb
	.uahalf	0x2bf
	.uaword	0x3d0e
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0xb
	.uahalf	0x2c0
	.uaword	0x3cd1
	.byte	0xfc
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x4471
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x5f
	.byte	0
	.uleb128 0x16
	.string	"Ifx_P"
	.byte	0xb
	.uahalf	0x2c1
	.uaword	0x447f
	.uleb128 0x1a
	.uaword	0x4279
	.uleb128 0x5
	.byte	0x4
	.uaword	0x4471
	.uleb128 0x7
	.byte	0x1
	.byte	0xc
	.byte	0x37
	.uaword	0x450a
	.uleb128 0x8
	.string	"IfxPort_InputMode_undefined"
	.sleb128 -1
	.uleb128 0x8
	.string	"IfxPort_InputMode_noPullDevice"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxPort_InputMode_pullDown"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxPort_InputMode_pullUp"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_InputMode"
	.byte	0xc
	.byte	0x3c
	.uaword	0x448a
	.uleb128 0x7
	.byte	0x1
	.byte	0xc
	.byte	0x74
	.uaword	0x4648
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed1"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed2"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed3"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxPort_PadDriver_cmosAutomotiveSpeed4"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed1"
	.sleb128 8
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed2"
	.sleb128 9
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed3"
	.sleb128 10
	.uleb128 0x8
	.string	"IfxPort_PadDriver_ttlSpeed4"
	.sleb128 11
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_PadDriver"
	.byte	0xc
	.byte	0x7d
	.uaword	0x4523
	.uleb128 0x9
	.byte	0x8
	.byte	0xc
	.byte	0x95
	.uaword	0x4688
	.uleb128 0xb
	.string	"port"
	.byte	0xc
	.byte	0x97
	.uaword	0x4484
	.byte	0
	.uleb128 0xb
	.string	"pinIndex"
	.byte	0xc
	.byte	0x98
	.uaword	0x1c6
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxPort_Pin"
	.byte	0xc
	.byte	0x99
	.uaword	0x4661
	.uleb128 0x18
	.string	"_Ifx_GPT12_ACCEN0_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x2d
	.uaword	0x48b1
	.uleb128 0xf
	.string	"EN0"
	.byte	0xd
	.byte	0x2f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"EN1"
	.byte	0xd
	.byte	0x30
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"EN2"
	.byte	0xd
	.byte	0x31
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"EN3"
	.byte	0xd
	.byte	0x32
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"EN4"
	.byte	0xd
	.byte	0x33
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0xf
	.string	"EN5"
	.byte	0xd
	.byte	0x34
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"EN6"
	.byte	0xd
	.byte	0x35
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"EN7"
	.byte	0xd
	.byte	0x36
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"EN8"
	.byte	0xd
	.byte	0x37
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"EN9"
	.byte	0xd
	.byte	0x38
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"EN10"
	.byte	0xd
	.byte	0x39
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"EN11"
	.byte	0xd
	.byte	0x3a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"EN12"
	.byte	0xd
	.byte	0x3b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"EN13"
	.byte	0xd
	.byte	0x3c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"EN14"
	.byte	0xd
	.byte	0x3d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"EN15"
	.byte	0xd
	.byte	0x3e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.string	"EN16"
	.byte	0xd
	.byte	0x3f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0xf
	.string	"EN17"
	.byte	0xd
	.byte	0x40
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xf
	.string	"EN18"
	.byte	0xd
	.byte	0x41
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xf
	.string	"EN19"
	.byte	0xd
	.byte	0x42
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.string	"EN20"
	.byte	0xd
	.byte	0x43
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xf
	.string	"EN21"
	.byte	0xd
	.byte	0x44
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.string	"EN22"
	.byte	0xd
	.byte	0x45
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xf
	.string	"EN23"
	.byte	0xd
	.byte	0x46
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"EN24"
	.byte	0xd
	.byte	0x47
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xf
	.string	"EN25"
	.byte	0xd
	.byte	0x48
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xf
	.string	"EN26"
	.byte	0xd
	.byte	0x49
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xf
	.string	"EN27"
	.byte	0xd
	.byte	0x4a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"EN28"
	.byte	0xd
	.byte	0x4b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"EN29"
	.byte	0xd
	.byte	0x4c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"EN30"
	.byte	0xd
	.byte	0x4d
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xf
	.string	"EN31"
	.byte	0xd
	.byte	0x4e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_ACCEN0_Bits"
	.byte	0xd
	.byte	0x4f
	.uaword	0x469b
	.uleb128 0x18
	.string	"_Ifx_GPT12_ACCEN1_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x52
	.uaword	0x48fd
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xd
	.byte	0x54
	.uaword	0xed9
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_ACCEN1_Bits"
	.byte	0xd
	.byte	0x55
	.uaword	0x48ce
	.uleb128 0x18
	.string	"_Ifx_GPT12_CAPREL_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x58
	.uaword	0x495b
	.uleb128 0xf
	.string	"CAPREL"
	.byte	0xd
	.byte	0x5a
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0x5b
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_CAPREL_Bits"
	.byte	0xd
	.byte	0x5c
	.uaword	0x491a
	.uleb128 0x18
	.string	"_Ifx_GPT12_CLC_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x5f
	.uaword	0x49e3
	.uleb128 0xf
	.string	"DISR"
	.byte	0xd
	.byte	0x61
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"DISS"
	.byte	0xd
	.byte	0x62
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x19
	.uaword	.LASF25
	.byte	0xd
	.byte	0x63
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"EDIS"
	.byte	0xd
	.byte	0x64
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x19
	.uaword	.LASF12
	.byte	0xd
	.byte	0x65
	.uaword	0xed9
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_CLC_Bits"
	.byte	0xd
	.byte	0x66
	.uaword	0x4978
	.uleb128 0x18
	.string	"_Ifx_GPT12_ID_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x69
	.uaword	0x4a4d
	.uleb128 0xf
	.string	"MODREV"
	.byte	0xd
	.byte	0x6b
	.uaword	0xed9
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0xd
	.byte	0x6c
	.uaword	0xed9
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF20
	.byte	0xd
	.byte	0x6d
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_ID_Bits"
	.byte	0xd
	.byte	0x6e
	.uaword	0x49fd
	.uleb128 0x18
	.string	"_Ifx_GPT12_KRST0_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x71
	.uaword	0x4ab6
	.uleb128 0xf
	.string	"RST"
	.byte	0xd
	.byte	0x73
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"RSTSTAT"
	.byte	0xd
	.byte	0x74
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x19
	.uaword	.LASF25
	.byte	0xd
	.byte	0x75
	.uaword	0xed9
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_KRST0_Bits"
	.byte	0xd
	.byte	0x76
	.uaword	0x4a66
	.uleb128 0x18
	.string	"_Ifx_GPT12_KRST1_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x79
	.uaword	0x4b0f
	.uleb128 0xf
	.string	"RST"
	.byte	0xd
	.byte	0x7b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.uaword	.LASF26
	.byte	0xd
	.byte	0x7c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_KRST1_Bits"
	.byte	0xd
	.byte	0x7d
	.uaword	0x4ad2
	.uleb128 0x18
	.string	"_Ifx_GPT12_KRSTCLR_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x80
	.uaword	0x4b6a
	.uleb128 0xf
	.string	"CLR"
	.byte	0xd
	.byte	0x82
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x19
	.uaword	.LASF26
	.byte	0xd
	.byte	0x83
	.uaword	0xed9
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_KRSTCLR_Bits"
	.byte	0xd
	.byte	0x84
	.uaword	0x4b2b
	.uleb128 0x18
	.string	"_Ifx_GPT12_OCS_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x87
	.uaword	0x4bfd
	.uleb128 0x19
	.uaword	.LASF18
	.byte	0xd
	.byte	0x89
	.uaword	0xed9
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.string	"SUS"
	.byte	0xd
	.byte	0x8a
	.uaword	0xed9
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.string	"SUS_P"
	.byte	0xd
	.byte	0x8b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.string	"SUSSTA"
	.byte	0xd
	.byte	0x8c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xf
	.string	"reserved_30"
	.byte	0xd
	.byte	0x8d
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_OCS_Bits"
	.byte	0xd
	.byte	0x8e
	.uaword	0x4b88
	.uleb128 0x18
	.string	"_Ifx_GPT12_PISEL_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0x91
	.uaword	0x4d11
	.uleb128 0xf
	.string	"IST2IN"
	.byte	0xd
	.byte	0x93
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xf
	.string	"IST2EUD"
	.byte	0xd
	.byte	0x94
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xf
	.string	"IST3IN"
	.byte	0xd
	.byte	0x95
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.string	"IST3EUD"
	.byte	0xd
	.byte	0x96
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"IST4IN"
	.byte	0xd
	.byte	0x97
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"IST4EUD"
	.byte	0xd
	.byte	0x98
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"IST5IN"
	.byte	0xd
	.byte	0x99
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"IST5EUD"
	.byte	0xd
	.byte	0x9a
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"IST6IN"
	.byte	0xd
	.byte	0x9b
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"IST6EUD"
	.byte	0xd
	.byte	0x9c
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"ISCAPIN"
	.byte	0xd
	.byte	0x9d
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0x9e
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_PISEL_Bits"
	.byte	0xd
	.byte	0x9f
	.uaword	0x4c17
	.uleb128 0x18
	.string	"_Ifx_GPT12_T2_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xa2
	.uaword	0x4d66
	.uleb128 0xf
	.string	"T2"
	.byte	0xd
	.byte	0xa4
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0xa5
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T2_Bits"
	.byte	0xd
	.byte	0xa6
	.uaword	0x4d2d
	.uleb128 0x18
	.string	"_Ifx_GPT12_T2CON_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xa9
	.uaword	0x4e64
	.uleb128 0xf
	.string	"T2I"
	.byte	0xd
	.byte	0xab
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"T2M"
	.byte	0xd
	.byte	0xac
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"T2R"
	.byte	0xd
	.byte	0xad
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"T2UD"
	.byte	0xd
	.byte	0xae
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"T2UDE"
	.byte	0xd
	.byte	0xaf
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"T2RC"
	.byte	0xd
	.byte	0xb0
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x19
	.uaword	.LASF14
	.byte	0xd
	.byte	0xb1
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"T2IRDIS"
	.byte	0xd
	.byte	0xb2
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"T2EDGE"
	.byte	0xd
	.byte	0xb3
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"T2CHDIR"
	.byte	0xd
	.byte	0xb4
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"T2RDIR"
	.byte	0xd
	.byte	0xb5
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0xb6
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T2CON_Bits"
	.byte	0xd
	.byte	0xb7
	.uaword	0x4d7f
	.uleb128 0x18
	.string	"_Ifx_GPT12_T3_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xba
	.uaword	0x4eb9
	.uleb128 0xf
	.string	"T3"
	.byte	0xd
	.byte	0xbc
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0xbd
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T3_Bits"
	.byte	0xd
	.byte	0xbe
	.uaword	0x4e80
	.uleb128 0x18
	.string	"_Ifx_GPT12_T3CON_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xc1
	.uaword	0x4fb6
	.uleb128 0xf
	.string	"T3I"
	.byte	0xd
	.byte	0xc3
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"T3M"
	.byte	0xd
	.byte	0xc4
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"T3R"
	.byte	0xd
	.byte	0xc5
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"T3UD"
	.byte	0xd
	.byte	0xc6
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"T3UDE"
	.byte	0xd
	.byte	0xc7
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"T3OE"
	.byte	0xd
	.byte	0xc8
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"T3OTL"
	.byte	0xd
	.byte	0xc9
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"BPS1"
	.byte	0xd
	.byte	0xca
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"T3EDGE"
	.byte	0xd
	.byte	0xcb
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"T3CHDIR"
	.byte	0xd
	.byte	0xcc
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"T3RDIR"
	.byte	0xd
	.byte	0xcd
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0xce
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T3CON_Bits"
	.byte	0xd
	.byte	0xcf
	.uaword	0x4ed2
	.uleb128 0x18
	.string	"_Ifx_GPT12_T4_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xd2
	.uaword	0x500b
	.uleb128 0xf
	.string	"T4"
	.byte	0xd
	.byte	0xd4
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0xd5
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T4_Bits"
	.byte	0xd
	.byte	0xd6
	.uaword	0x4fd2
	.uleb128 0x18
	.string	"_Ifx_GPT12_T4CON_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xd9
	.uaword	0x5120
	.uleb128 0xf
	.string	"T4I"
	.byte	0xd
	.byte	0xdb
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"T4M"
	.byte	0xd
	.byte	0xdc
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"T4R"
	.byte	0xd
	.byte	0xdd
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"T4UD"
	.byte	0xd
	.byte	0xde
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"T4UDE"
	.byte	0xd
	.byte	0xdf
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"T4RC"
	.byte	0xd
	.byte	0xe0
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"CLRT2EN"
	.byte	0xd
	.byte	0xe1
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0xf
	.string	"CLRT3EN"
	.byte	0xd
	.byte	0xe2
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"T4IRDIS"
	.byte	0xd
	.byte	0xe3
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0xf
	.string	"T4EDGE"
	.byte	0xd
	.byte	0xe4
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"T4CHDIR"
	.byte	0xd
	.byte	0xe5
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"T4RDIR"
	.byte	0xd
	.byte	0xe6
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0xe7
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T4CON_Bits"
	.byte	0xd
	.byte	0xe8
	.uaword	0x5024
	.uleb128 0x18
	.string	"_Ifx_GPT12_T5_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xeb
	.uaword	0x5175
	.uleb128 0xf
	.string	"T5"
	.byte	0xd
	.byte	0xed
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0xee
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_GPT12_T5_Bits"
	.byte	0xd
	.byte	0xef
	.uaword	0x513c
	.uleb128 0x18
	.string	"_Ifx_GPT12_T5CON_Bits"
	.byte	0x4
	.byte	0xd
	.byte	0xf2
	.uaword	0x5267
	.uleb128 0xf
	.string	"T5I"
	.byte	0xd
	.byte	0xf4
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xf
	.string	"T5M"
	.byte	0xd
	.byte	0xf5
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0xf
	.string	"T5R"
	.byte	0xd
	.byte	0xf6
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xf
	.string	"T5UD"
	.byte	0xd
	.byte	0xf7
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0xf
	.string	"T5UDE"
	.byte	0xd
	.byte	0xf8
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0xf
	.string	"T5RC"
	.byte	0xd
	.byte	0xf9
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0xf
	.string	"CT3"
	.byte	0xd
	.byte	0xfa
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x19
	.uaword	.LASF22
	.byte	0xd
	.byte	0xfb
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xf
	.string	"CI"
	.byte	0xd
	.byte	0xfc
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.uleb128 0xf
	.string	"T5CLR"
	.byte	0xd
	.byte	0xfd
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0xf
	.string	"T5SC"
	.byte	0xd
	.byte	0xfe
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x19
	.uaword	.LASF19
	.byte	0xd
	.byte	0xff
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T5CON_Bits"
	.byte	0xd
	.uahalf	0x100
	.uaword	0x518e
	.uleb128 0x13
	.string	"_Ifx_GPT12_T6_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x103
	.uaword	0x52c0
	.uleb128 0x22
	.string	"T6"
	.byte	0xd
	.uahalf	0x105
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0xd
	.uahalf	0x106
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T6_Bits"
	.byte	0xd
	.uahalf	0x107
	.uaword	0x5284
	.uleb128 0x13
	.string	"_Ifx_GPT12_T6CON_Bits"
	.byte	0x4
	.byte	0xd
	.uahalf	0x10a
	.uaword	0x53cc
	.uleb128 0x22
	.string	"T6I"
	.byte	0xd
	.uahalf	0x10c
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0x22
	.string	"T6M"
	.byte	0xd
	.uahalf	0x10d
	.uaword	0xed9
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0
	.uleb128 0x22
	.string	"T6R"
	.byte	0xd
	.uahalf	0x10e
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.string	"T6UD"
	.byte	0xd
	.uahalf	0x10f
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x22
	.string	"T6UDE"
	.byte	0xd
	.uahalf	0x110
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x22
	.string	"T6OE"
	.byte	0xd
	.uahalf	0x111
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x22
	.string	"T6OTL"
	.byte	0xd
	.uahalf	0x112
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x22
	.string	"BPS2"
	.byte	0xd
	.uahalf	0x113
	.uaword	0xed9
	.byte	0x4
	.byte	0x2
	.byte	0x13
	.byte	0
	.uleb128 0x22
	.string	"reserved_13"
	.byte	0xd
	.uahalf	0x114
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x22
	.string	"T6CLR"
	.byte	0xd
	.uahalf	0x115
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x22
	.string	"T6SR"
	.byte	0xd
	.uahalf	0x116
	.uaword	0xed9
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x23
	.uaword	.LASF19
	.byte	0xd
	.uahalf	0x117
	.uaword	0xed9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T6CON_Bits"
	.byte	0xd
	.uahalf	0x118
	.uaword	0x52da
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x120
	.uaword	0x5411
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x122
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x123
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x124
	.uaword	0x48b1
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_ACCEN0"
	.byte	0xd
	.uahalf	0x125
	.uaword	0x53e9
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x128
	.uaword	0x5452
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x12a
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x12b
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x12c
	.uaword	0x48fd
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_ACCEN1"
	.byte	0xd
	.uahalf	0x12d
	.uaword	0x542a
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x130
	.uaword	0x5493
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x132
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x133
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x134
	.uaword	0x495b
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_CAPREL"
	.byte	0xd
	.uahalf	0x135
	.uaword	0x546b
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x138
	.uaword	0x54d4
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x13a
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x13b
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x13c
	.uaword	0x49e3
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_CLC"
	.byte	0xd
	.uahalf	0x13d
	.uaword	0x54ac
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x140
	.uaword	0x5512
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x142
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x143
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x144
	.uaword	0x4a4d
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_ID"
	.byte	0xd
	.uahalf	0x145
	.uaword	0x54ea
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x148
	.uaword	0x554f
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x14a
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x14b
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x14c
	.uaword	0x4ab6
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_KRST0"
	.byte	0xd
	.uahalf	0x14d
	.uaword	0x5527
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x150
	.uaword	0x558f
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x152
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x153
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x154
	.uaword	0x4b0f
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_KRST1"
	.byte	0xd
	.uahalf	0x155
	.uaword	0x5567
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x158
	.uaword	0x55cf
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x15a
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x15b
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x15c
	.uaword	0x4b6a
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_KRSTCLR"
	.byte	0xd
	.uahalf	0x15d
	.uaword	0x55a7
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x160
	.uaword	0x5611
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x162
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x163
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x164
	.uaword	0x4bfd
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_OCS"
	.byte	0xd
	.uahalf	0x165
	.uaword	0x55e9
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x168
	.uaword	0x564f
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x16a
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x16b
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x16c
	.uaword	0x4d11
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_PISEL"
	.byte	0xd
	.uahalf	0x16d
	.uaword	0x5627
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x170
	.uaword	0x568f
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x172
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x173
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x174
	.uaword	0x4d66
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T2"
	.byte	0xd
	.uahalf	0x175
	.uaword	0x5667
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x178
	.uaword	0x56cc
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x17a
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x17b
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x17c
	.uaword	0x4e64
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T2CON"
	.byte	0xd
	.uahalf	0x17d
	.uaword	0x56a4
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x180
	.uaword	0x570c
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x182
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x183
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x184
	.uaword	0x4eb9
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T3"
	.byte	0xd
	.uahalf	0x185
	.uaword	0x56e4
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x188
	.uaword	0x5749
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x18a
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x18b
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x18c
	.uaword	0x4fb6
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T3CON"
	.byte	0xd
	.uahalf	0x18d
	.uaword	0x5721
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x190
	.uaword	0x5789
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x192
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x193
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x194
	.uaword	0x500b
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T4"
	.byte	0xd
	.uahalf	0x195
	.uaword	0x5761
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x198
	.uaword	0x57c6
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x19a
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x19b
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x19c
	.uaword	0x5120
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T4CON"
	.byte	0xd
	.uahalf	0x19d
	.uaword	0x579e
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x1a0
	.uaword	0x5806
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x1a2
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x1a3
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x1a4
	.uaword	0x5175
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T5"
	.byte	0xd
	.uahalf	0x1a5
	.uaword	0x57de
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x1a8
	.uaword	0x5843
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x1aa
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x1ab
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x1ac
	.uaword	0x5267
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T5CON"
	.byte	0xd
	.uahalf	0x1ad
	.uaword	0x581b
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x1b0
	.uaword	0x5883
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x1b2
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x1b3
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x1b4
	.uaword	0x52c0
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T6"
	.byte	0xd
	.uahalf	0x1b5
	.uaword	0x585b
	.uleb128 0x24
	.byte	0x4
	.byte	0xd
	.uahalf	0x1b8
	.uaword	0x58c0
	.uleb128 0x25
	.string	"U"
	.byte	0xd
	.uahalf	0x1ba
	.uaword	0xed9
	.uleb128 0x25
	.string	"I"
	.byte	0xd
	.uahalf	0x1bb
	.uaword	0x1b0
	.uleb128 0x25
	.string	"B"
	.byte	0xd
	.uahalf	0x1bc
	.uaword	0x53cc
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12_T6CON"
	.byte	0xd
	.uahalf	0x1bd
	.uaword	0x5898
	.uleb128 0x20
	.string	"_Ifx_GPT12"
	.uahalf	0x100
	.byte	0xd
	.uahalf	0x1c8
	.uaword	0x5a30
	.uleb128 0x15
	.string	"CLC"
	.byte	0xd
	.uahalf	0x1ca
	.uaword	0x54d4
	.byte	0
	.uleb128 0x15
	.string	"PISEL"
	.byte	0xd
	.uahalf	0x1cb
	.uaword	0x564f
	.byte	0x4
	.uleb128 0x15
	.string	"ID"
	.byte	0xd
	.uahalf	0x1cc
	.uaword	0x5512
	.byte	0x8
	.uleb128 0x14
	.uaword	.LASF23
	.byte	0xd
	.uahalf	0x1cd
	.uaword	0x24ae
	.byte	0xc
	.uleb128 0x15
	.string	"T2CON"
	.byte	0xd
	.uahalf	0x1ce
	.uaword	0x56cc
	.byte	0x10
	.uleb128 0x15
	.string	"T3CON"
	.byte	0xd
	.uahalf	0x1cf
	.uaword	0x5749
	.byte	0x14
	.uleb128 0x15
	.string	"T4CON"
	.byte	0xd
	.uahalf	0x1d0
	.uaword	0x57c6
	.byte	0x18
	.uleb128 0x15
	.string	"T5CON"
	.byte	0xd
	.uahalf	0x1d1
	.uaword	0x5843
	.byte	0x1c
	.uleb128 0x15
	.string	"T6CON"
	.byte	0xd
	.uahalf	0x1d2
	.uaword	0x58c0
	.byte	0x20
	.uleb128 0x14
	.uaword	.LASF16
	.byte	0xd
	.uahalf	0x1d3
	.uaword	0x11b8
	.byte	0x24
	.uleb128 0x15
	.string	"CAPREL"
	.byte	0xd
	.uahalf	0x1d4
	.uaword	0x5493
	.byte	0x30
	.uleb128 0x15
	.string	"T2"
	.byte	0xd
	.uahalf	0x1d5
	.uaword	0x568f
	.byte	0x34
	.uleb128 0x15
	.string	"T3"
	.byte	0xd
	.uahalf	0x1d6
	.uaword	0x570c
	.byte	0x38
	.uleb128 0x15
	.string	"T4"
	.byte	0xd
	.uahalf	0x1d7
	.uaword	0x5789
	.byte	0x3c
	.uleb128 0x15
	.string	"T5"
	.byte	0xd
	.uahalf	0x1d8
	.uaword	0x5806
	.byte	0x40
	.uleb128 0x15
	.string	"T6"
	.byte	0xd
	.uahalf	0x1d9
	.uaword	0x5883
	.byte	0x44
	.uleb128 0x14
	.uaword	.LASF24
	.byte	0xd
	.uahalf	0x1da
	.uaword	0x5a30
	.byte	0x48
	.uleb128 0x15
	.string	"OCS"
	.byte	0xd
	.uahalf	0x1db
	.uaword	0x5611
	.byte	0xe8
	.uleb128 0x15
	.string	"KRSTCLR"
	.byte	0xd
	.uahalf	0x1dc
	.uaword	0x55cf
	.byte	0xec
	.uleb128 0x15
	.string	"KRST1"
	.byte	0xd
	.uahalf	0x1dd
	.uaword	0x558f
	.byte	0xf0
	.uleb128 0x15
	.string	"KRST0"
	.byte	0xd
	.uahalf	0x1de
	.uaword	0x554f
	.byte	0xf4
	.uleb128 0x15
	.string	"ACCEN1"
	.byte	0xd
	.uahalf	0x1df
	.uaword	0x5452
	.byte	0xf8
	.uleb128 0x15
	.string	"ACCEN0"
	.byte	0xd
	.uahalf	0x1e0
	.uaword	0x5411
	.byte	0xfc
	.byte	0
	.uleb128 0x1b
	.uaword	0x1d3
	.uaword	0x5a40
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0x9f
	.byte	0
	.uleb128 0x16
	.string	"Ifx_GPT12"
	.byte	0xd
	.uahalf	0x1e1
	.uaword	0x5a52
	.uleb128 0x1a
	.uaword	0x58d8
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5a40
	.uleb128 0x9
	.byte	0x14
	.byte	0xe
	.byte	0x2f
	.uaword	0x5a9b
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xe
	.byte	0x31
	.uaword	0x5a57
	.byte	0
	.uleb128 0xb
	.string	"timer"
	.byte	0xe
	.byte	0x32
	.uaword	0x1c6
	.byte	0x4
	.uleb128 0xb
	.string	"pin"
	.byte	0xe
	.byte	0x33
	.uaword	0x4688
	.byte	0x8
	.uleb128 0xb
	.string	"select"
	.byte	0xe
	.byte	0x34
	.uaword	0x32b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_TxEud_In"
	.byte	0xe
	.byte	0x35
	.uaword	0x5ab4
	.uleb128 0x26
	.uaword	0x5a5d
	.uleb128 0x9
	.byte	0x14
	.byte	0xe
	.byte	0x38
	.uaword	0x5af7
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xe
	.byte	0x3a
	.uaword	0x5a57
	.byte	0
	.uleb128 0xb
	.string	"timer"
	.byte	0xe
	.byte	0x3b
	.uaword	0x1c6
	.byte	0x4
	.uleb128 0xb
	.string	"pin"
	.byte	0xe
	.byte	0x3c
	.uaword	0x4688
	.byte	0x8
	.uleb128 0xb
	.string	"select"
	.byte	0xe
	.byte	0x3d
	.uaword	0x32b
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_TxIn_In"
	.byte	0xe
	.byte	0x3e
	.uaword	0x5b0f
	.uleb128 0x26
	.uaword	0x5ab9
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x46
	.uaword	0x5bbf
	.uleb128 0x8
	.string	"IfxGpt12_CaptureInputMode_none"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_CaptureInputMode_risingEdgeTxIN"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxGpt12_CaptureInputMode_fallingEdgeTxIN"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxGpt12_CaptureInputMode_bothEdgesTxIN"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_CaptureInputMode"
	.byte	0x2
	.byte	0x4b
	.uaword	0x5b14
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x51
	.uaword	0x5c2f
	.uleb128 0x8
	.string	"IfxGpt12_CaptureTrigger_capin"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_CaptureTrigger_t3inOrT3EUD"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_CaptureTrigger"
	.byte	0x2
	.byte	0x54
	.uaword	0x5be0
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x5a
	.uaword	0x5cfa
	.uleb128 0x8
	.string	"IfxGpt12_CaptureTriggerMode_disabled"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_CaptureTriggerMode_risingEdge"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxGpt12_CaptureTriggerMode_fallingEdge"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxGpt12_CaptureTriggerMode_randomEdge"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_CaptureTriggerMode"
	.byte	0x2
	.byte	0x5f
	.uaword	0x5c4e
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0x94
	.uaword	0x5e0a
	.uleb128 0x8
	.string	"IfxGpt12_IncrementalInterfaceInputMode_stopCounterTx"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_IncrementalInterfaceInputMode_bothEdgesTxIN"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxGpt12_IncrementalInterfaceInputMode_bothEdgesTxEUD"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxGpt12_IncrementalInterfaceInputMode_bothEdgesTxINOrTxEUD"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_IncrementalInterfaceInputMode"
	.byte	0x2
	.byte	0x99
	.uaword	0x5d1d
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xaa
	.uaword	0x5f43
	.uleb128 0x8
	.string	"IfxGpt12_Mode_timer"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_Mode_counter"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxGpt12_Mode_lowGatedTimer"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxGpt12_Mode_highGatedTimer"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxGpt12_Mode_reload"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxGpt12_Mode_capture"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxGpt12_Mode_incrementalInterfaceRotationDetection"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxGpt12_Mode_incrementalInterfaceEdgeDetection"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_Mode"
	.byte	0x2
	.byte	0xb3
	.uaword	0x5e38
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xd9
	.uaword	0x5f9d
	.uleb128 0x8
	.string	"IfxGpt12_TimerDirection_up"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_TimerDirection_down"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_TimerDirection"
	.byte	0x2
	.byte	0xdc
	.uaword	0x5f58
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xe2
	.uaword	0x6017
	.uleb128 0x8
	.string	"IfxGpt12_TimerDirectionSource_internal"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_TimerDirectionSource_external"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_TimerDirectionSource"
	.byte	0x2
	.byte	0xe5
	.uaword	0x5fbc
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.byte	0xeb
	.uaword	0x6152
	.uleb128 0x8
	.string	"IfxGpt12_TimerInputPrescaler_1"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_TimerInputPrescaler_2"
	.sleb128 1
	.uleb128 0x8
	.string	"IfxGpt12_TimerInputPrescaler_4"
	.sleb128 2
	.uleb128 0x8
	.string	"IfxGpt12_TimerInputPrescaler_8"
	.sleb128 3
	.uleb128 0x8
	.string	"IfxGpt12_TimerInputPrescaler_16"
	.sleb128 4
	.uleb128 0x8
	.string	"IfxGpt12_TimerInputPrescaler_32"
	.sleb128 5
	.uleb128 0x8
	.string	"IfxGpt12_TimerInputPrescaler_64"
	.sleb128 6
	.uleb128 0x8
	.string	"IfxGpt12_TimerInputPrescaler_128"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_TimerInputPrescaler"
	.byte	0x2
	.byte	0xf4
	.uaword	0x603c
	.uleb128 0x27
	.byte	0x1
	.byte	0x2
	.uahalf	0x103
	.uaword	0x61c3
	.uleb128 0x8
	.string	"IfxGpt12_TimerRemoteControl_off"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_TimerRemoteControl_on"
	.sleb128 1
	.byte	0
	.uleb128 0x16
	.string	"IfxGpt12_TimerRemoteControl"
	.byte	0x2
	.uahalf	0x106
	.uaword	0x6176
	.uleb128 0x27
	.byte	0x1
	.byte	0x2
	.uahalf	0x10c
	.uaword	0x6224
	.uleb128 0x8
	.string	"IfxGpt12_TimerRun_stop"
	.sleb128 0
	.uleb128 0x8
	.string	"IfxGpt12_TimerRun_start"
	.sleb128 1
	.byte	0
	.uleb128 0x16
	.string	"IfxGpt12_TimerRun"
	.byte	0x2
	.uahalf	0x10f
	.uaword	0x61e7
	.uleb128 0x3
	.string	"IfxGpt12_IncrEnc_Update"
	.byte	0xf
	.byte	0xb7
	.uaword	0xace
	.uleb128 0x9
	.byte	0x54
	.byte	0xf
	.byte	0xc1
	.uaword	0x639a
	.uleb128 0xb
	.string	"rawPosition"
	.byte	0xf
	.byte	0xc3
	.uaword	0x215
	.byte	0
	.uleb128 0xb
	.string	"speed"
	.byte	0xf
	.byte	0xc4
	.uaword	0x231
	.byte	0x4
	.uleb128 0xb
	.string	"turn"
	.byte	0xf
	.byte	0xc5
	.uaword	0x215
	.byte	0x8
	.uleb128 0xa
	.uaword	.LASF27
	.byte	0xf
	.byte	0xc6
	.uaword	0x5b3
	.byte	0xc
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0xf
	.byte	0xc7
	.uaword	0x66c
	.byte	0x10
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0xf
	.byte	0xc8
	.uaword	0x215
	.byte	0x14
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0xf
	.byte	0xc9
	.uaword	0x215
	.byte	0x18
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0xf
	.byte	0xca
	.uaword	0x231
	.byte	0x1c
	.uleb128 0xb
	.string	"speedConstPulseCount"
	.byte	0xf
	.byte	0xcb
	.uaword	0x231
	.byte	0x20
	.uleb128 0xb
	.string	"speedConstTimeDiff"
	.byte	0xf
	.byte	0xcc
	.uaword	0x231
	.byte	0x24
	.uleb128 0xb
	.string	"positionConst"
	.byte	0xf
	.byte	0xcd
	.uaword	0x231
	.byte	0x28
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0xf
	.byte	0xce
	.uaword	0x231
	.byte	0x2c
	.uleb128 0xb
	.string	"speedModeThresholdTick"
	.byte	0xf
	.byte	0xcf
	.uaword	0x215
	.byte	0x30
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xf
	.byte	0xd0
	.uaword	0x5a57
	.byte	0x34
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0xf
	.byte	0xd1
	.uaword	0x231
	.byte	0x38
	.uleb128 0xa
	.uaword	.LASF8
	.byte	0xf
	.byte	0xd2
	.uaword	0x231
	.byte	0x3c
	.uleb128 0xb
	.string	"speedLpf"
	.byte	0xf
	.byte	0xd3
	.uaword	0xd09
	.byte	0x40
	.uleb128 0xb
	.string	"update"
	.byte	0xf
	.byte	0xd4
	.uaword	0x623e
	.byte	0x4c
	.uleb128 0xa
	.uaword	.LASF9
	.byte	0xf
	.byte	0xd5
	.uaword	0x253
	.byte	0x50
	.byte	0
	.uleb128 0x3
	.string	"IfxGpt12_IncrEnc"
	.byte	0xf
	.byte	0xd6
	.uaword	0x625d
	.uleb128 0x9
	.byte	0x40
	.byte	0xf
	.byte	0xda
	.uaword	0x644d
	.uleb128 0xb
	.string	"base"
	.byte	0xf
	.byte	0xdc
	.uaword	0xcc4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0xf
	.byte	0xdd
	.uaword	0x5a57
	.byte	0x28
	.uleb128 0xb
	.string	"pinA"
	.byte	0xf
	.byte	0xde
	.uaword	0x644d
	.byte	0x2c
	.uleb128 0xb
	.string	"pinB"
	.byte	0xf
	.byte	0xdf
	.uaword	0x6453
	.byte	0x30
	.uleb128 0xb
	.string	"pinZ"
	.byte	0xf
	.byte	0xe0
	.uaword	0x644d
	.byte	0x34
	.uleb128 0xb
	.string	"pinMode"
	.byte	0xf
	.byte	0xe1
	.uaword	0x450a
	.byte	0x38
	.uleb128 0xb
	.string	"zeroIsrPriority"
	.byte	0xf
	.byte	0xe2
	.uaword	0x29e
	.byte	0x3a
	.uleb128 0xb
	.string	"zeroIsrProvider"
	.byte	0xf
	.byte	0xe3
	.uaword	0xdb1
	.byte	0x3c
	.uleb128 0xb
	.string	"pinDriver"
	.byte	0xf
	.byte	0xe4
	.uaword	0x4648
	.byte	0x3d
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5af7
	.uleb128 0x5
	.byte	0x4
	.uaword	0x5a9b
	.uleb128 0x3
	.string	"IfxGpt12_IncrEnc_Config"
	.byte	0xf
	.byte	0xe5
	.uaword	0x63b2
	.uleb128 0x28
	.string	"IfxSrc_clearRequest"
	.byte	0x3
	.byte	0xe6
	.byte	0x1
	.byte	0x3
	.uaword	0x64a1
	.uleb128 0x29
	.string	"src"
	.byte	0x3
	.byte	0xe6
	.uaword	0x64a1
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x64a7
	.uleb128 0x1a
	.uaword	0xf26
	.uleb128 0x2a
	.string	"IfxGpt12_T4_getSrc"
	.byte	0x2
	.uahalf	0x4eb
	.byte	0x1
	.uaword	0x64a1
	.byte	0x3
	.uaword	0x64da
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4eb
	.uaword	0x5a57
	.byte	0
	.uleb128 0x2a
	.string	"IfxGpt12_T5_getSrc"
	.byte	0x2
	.uahalf	0x557
	.byte	0x1
	.uaword	0x64a1
	.byte	0x3
	.uaword	0x6508
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x557
	.uaword	0x5a57
	.byte	0
	.uleb128 0x2a
	.string	"IfxGpt12_getCaptureSrc"
	.byte	0x2
	.uahalf	0x60c
	.byte	0x1
	.uaword	0x64a1
	.byte	0x3
	.uaword	0x653a
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x60c
	.uaword	0x5a57
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_setRefreshPeriod"
	.byte	0x1
	.uahalf	0x15a
	.byte	0x1
	.byte	0x1
	.uaword	0x6580
	.uleb128 0x2b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x6580
	.uleb128 0x2b
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x231
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x639a
	.uleb128 0x2d
	.string	"IfxGpt12_T3_setMode"
	.byte	0x2
	.uahalf	0x4c0
	.byte	0x1
	.byte	0x3
	.uaword	0x65be
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4c0
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"mode"
	.byte	0x2
	.uahalf	0x4c0
	.uaword	0x5f43
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T3_setIncrementalInterfaceInputMode"
	.byte	0x2
	.uahalf	0x4b4
	.byte	0x1
	.byte	0x3
	.uaword	0x660e
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4b4
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF29
	.byte	0x2
	.uahalf	0x4b4
	.uaword	0x5e0a
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T3_setDirectionSource"
	.byte	0x2
	.uahalf	0x4a8
	.byte	0x1
	.byte	0x3
	.uaword	0x6650
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4a8
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF30
	.byte	0x2
	.uahalf	0x4a8
	.uaword	0x6017
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T3_setTimerDirection"
	.byte	0x2
	.uahalf	0x4c7
	.byte	0x1
	.byte	0x3
	.uaword	0x6691
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4c7
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF27
	.byte	0x2
	.uahalf	0x4c7
	.uaword	0x5f9d
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T3_enableOutput"
	.byte	0x2
	.uahalf	0x483
	.byte	0x1
	.byte	0x3
	.uaword	0x66d0
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x483
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"enable"
	.byte	0x2
	.uahalf	0x483
	.uaword	0x253
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T3_run"
	.byte	0x2
	.uahalf	0x49b
	.byte	0x1
	.byte	0x3
	.uaword	0x6703
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x49b
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF31
	.byte	0x2
	.uahalf	0x49b
	.uaword	0x6224
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T4_setMode"
	.byte	0x2
	.uahalf	0x527
	.byte	0x1
	.byte	0x3
	.uaword	0x673b
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x527
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"mode"
	.byte	0x2
	.uahalf	0x527
	.uaword	0x5f43
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T4_setCaptureInputMode"
	.byte	0x2
	.uahalf	0x4fd
	.byte	0x1
	.byte	0x3
	.uaword	0x677e
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4fd
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF29
	.byte	0x2
	.uahalf	0x4fd
	.uaword	0x5bbf
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T4_enableClearTimerT2"
	.byte	0x2
	.uahalf	0x4d9
	.byte	0x1
	.byte	0x3
	.uaword	0x67c0
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4d9
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF32
	.byte	0x2
	.uahalf	0x4d9
	.uaword	0x253
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T4_enableClearTimerT3"
	.byte	0x2
	.uahalf	0x4df
	.byte	0x1
	.byte	0x3
	.uaword	0x6802
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4df
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF32
	.byte	0x2
	.uahalf	0x4df
	.uaword	0x253
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T4_setInterruptEnable"
	.byte	0x2
	.uahalf	0x521
	.byte	0x1
	.byte	0x3
	.uaword	0x6844
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x521
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF32
	.byte	0x2
	.uahalf	0x521
	.uaword	0x253
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T4_setRemoteControl"
	.byte	0x2
	.uahalf	0x533
	.byte	0x1
	.byte	0x3
	.uaword	0x6888
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x533
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"control"
	.byte	0x2
	.uahalf	0x533
	.uaword	0x61c3
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T4_run"
	.byte	0x2
	.uahalf	0x4f7
	.byte	0x1
	.byte	0x3
	.uaword	0x68bb
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x4f7
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF31
	.byte	0x2
	.uahalf	0x4f7
	.uaword	0x6224
	.byte	0
	.uleb128 0x28
	.string	"IfxSrc_init"
	.byte	0x3
	.byte	0xfe
	.byte	0x1
	.byte	0x3
	.uaword	0x6900
	.uleb128 0x29
	.string	"src"
	.byte	0x3
	.byte	0xfe
	.uaword	0x64a1
	.uleb128 0x29
	.string	"typOfService"
	.byte	0x3
	.byte	0xfe
	.uaword	0xdb1
	.uleb128 0x29
	.string	"priority"
	.byte	0x3
	.byte	0xfe
	.uaword	0x29e
	.byte	0
	.uleb128 0x28
	.string	"IfxSrc_enable"
	.byte	0x3
	.byte	0xf8
	.byte	0x1
	.byte	0x3
	.uaword	0x6923
	.uleb128 0x29
	.string	"src"
	.byte	0x3
	.byte	0xf8
	.uaword	0x64a1
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_setMode"
	.byte	0x2
	.uahalf	0x595
	.byte	0x1
	.byte	0x3
	.uaword	0x695b
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x595
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"mode"
	.byte	0x2
	.uahalf	0x595
	.uaword	0x5f43
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_setTimerPrescaler"
	.byte	0x2
	.uahalf	0x5a8
	.byte	0x1
	.byte	0x3
	.uaword	0x69a7
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x5a8
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"inputPrescaler"
	.byte	0x2
	.uahalf	0x5a8
	.uaword	0x6152
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_setCaptureTrigger"
	.byte	0x2
	.uahalf	0x569
	.byte	0x1
	.byte	0x3
	.uaword	0x69ec
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x569
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"trigger"
	.byte	0x2
	.uahalf	0x569
	.uaword	0x5c2f
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_setCaptureTriggerMode"
	.byte	0x2
	.uahalf	0x575
	.byte	0x1
	.byte	0x3
	.uaword	0x6a32
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x575
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"mode"
	.byte	0x2
	.uahalf	0x575
	.uaword	0x5cfa
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_enableClearTimer"
	.byte	0x2
	.uahalf	0x54b
	.byte	0x1
	.byte	0x3
	.uaword	0x6a72
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x54b
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF32
	.byte	0x2
	.uahalf	0x54b
	.uaword	0x253
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_setCaptureTriggerEnable"
	.byte	0x2
	.uahalf	0x56f
	.byte	0x1
	.byte	0x3
	.uaword	0x6ab9
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x56f
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF32
	.byte	0x2
	.uahalf	0x56f
	.uaword	0x253
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_setRemoteControl"
	.byte	0x2
	.uahalf	0x59c
	.byte	0x1
	.byte	0x3
	.uaword	0x6afd
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x59c
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"control"
	.byte	0x2
	.uahalf	0x59c
	.uaword	0x61c3
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_setDirectionSource"
	.byte	0x2
	.uahalf	0x581
	.byte	0x1
	.byte	0x3
	.uaword	0x6b3f
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x581
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF30
	.byte	0x2
	.uahalf	0x581
	.uaword	0x6017
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_setTimerDirection"
	.byte	0x2
	.uahalf	0x5a2
	.byte	0x1
	.byte	0x3
	.uaword	0x6b80
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x5a2
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF27
	.byte	0x2
	.uahalf	0x5a2
	.uaword	0x5f9d
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T5_run"
	.byte	0x2
	.uahalf	0x563
	.byte	0x1
	.byte	0x3
	.uaword	0x6bb3
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x563
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF31
	.byte	0x2
	.uahalf	0x563
	.uaword	0x6224
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T2_setMode"
	.byte	0x2
	.uahalf	0x45f
	.byte	0x1
	.byte	0x3
	.uaword	0x6beb
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x45f
	.uaword	0x5a57
	.uleb128 0x2e
	.string	"mode"
	.byte	0x2
	.uahalf	0x45f
	.uaword	0x5f43
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T2_setIncrementalInterfaceInputMode"
	.byte	0x2
	.uahalf	0x44c
	.byte	0x1
	.byte	0x3
	.uaword	0x6c3b
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x44c
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF29
	.byte	0x2
	.uahalf	0x44c
	.uaword	0x5e0a
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T2_setDirectionSource"
	.byte	0x2
	.uahalf	0x43f
	.byte	0x1
	.byte	0x3
	.uaword	0x6c7d
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x43f
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF30
	.byte	0x2
	.uahalf	0x43f
	.uaword	0x6017
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T2_setTimerDirection"
	.byte	0x2
	.uahalf	0x471
	.byte	0x1
	.byte	0x3
	.uaword	0x6cbe
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x471
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF27
	.byte	0x2
	.uahalf	0x471
	.uaword	0x5f9d
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_T2_run"
	.byte	0x2
	.uahalf	0x42d
	.byte	0x1
	.byte	0x3
	.uaword	0x6cf1
	.uleb128 0x2b
	.uaword	.LASF28
	.byte	0x2
	.uahalf	0x42d
	.uaword	0x5a57
	.uleb128 0x2b
	.uaword	.LASF31
	.byte	0x2
	.uahalf	0x42d
	.uaword	0x6224
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getAbsolutePosition"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	0x231
	.uaword	.LFB358
	.uaword	.LFE358
	.byte	0x1
	.byte	0x9c
	.uaword	0x6d3d
	.uleb128 0x30
	.uaword	.LASF2
	.byte	0x1
	.byte	0x43
	.uaword	0x6580
	.uaword	.LLST0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getDirection"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	0x5b3
	.uaword	.LFB359
	.uaword	.LFE359
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6d81
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x49
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getFault"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.uaword	0x66c
	.uaword	.LFB360
	.uaword	.LFE360
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6dc1
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x4f
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getOffset"
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.uaword	0x215
	.uaword	.LFB361
	.uaword	.LFE361
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e02
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x55
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getPeriodPerRotation"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	0x1f1
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e4e
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x5b
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getPosition"
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.uaword	0x231
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6e91
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x61
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getRawPosition"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	0x215
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6ed7
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x67
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getRefreshPeriod"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	0x231
	.uaword	.LFB365
	.uaword	.LFE365
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6f1f
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x6d
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getResolution"
	.byte	0x1
	.byte	0x73
	.byte	0x1
	.uaword	0x215
	.uaword	.LFB366
	.uaword	.LFE366
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6f64
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x73
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getSensorType"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	0x539
	.uaword	.LFB367
	.uaword	.LFE367
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6fa9
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x79
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getSpeed"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.uaword	0x231
	.uaword	.LFB368
	.uaword	.LFE368
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x6fe9
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7f
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_getTurn"
	.byte	0x1
	.byte	0x85
	.byte	0x1
	.uaword	0x215
	.uaword	.LFB369
	.uaword	.LFE369
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7028
	.uleb128 0x32
	.uaword	.LASF2
	.byte	0x1
	.byte	0x85
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_onZeroIrq"
	.byte	0x1
	.uahalf	0x12e
	.byte	0x1
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7067
	.uleb128 0x34
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x12e
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_reset"
	.byte	0x1
	.uahalf	0x140
	.byte	0x1
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x70a2
	.uleb128 0x34
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x140
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_resetFaults"
	.byte	0x1
	.uahalf	0x14a
	.byte	0x1
	.uaword	.LFB374
	.uaword	.LFE374
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x70ef
	.uleb128 0x34
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x14a
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.uleb128 0x35
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x66c
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_setOffset"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.uaword	.LFB375
	.uaword	.LFE375
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x713c
	.uleb128 0x34
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x153
	.uaword	0x6580
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x153
	.uaword	0x215
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x36
	.uaword	0x653a
	.uaword	.LFB376
	.uaword	.LFE376
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7163
	.uleb128 0x37
	.uaword	0x6567
	.uaword	.LLST1
	.uleb128 0x37
	.uaword	0x6573
	.uaword	.LLST2
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_update"
	.byte	0x1
	.uahalf	0x184
	.byte	0x1
	.uaword	.LFB378
	.uaword	.LFE378
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x71b2
	.uleb128 0x38
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x184
	.uaword	0x6580
	.uaword	.LLST3
	.uleb128 0x39
	.uaword	.LVL31
	.byte	0x1
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x3a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_IncrEnc_updateSpeedFromT2"
	.byte	0x1
	.uahalf	0x1ba
	.byte	0x1
	.byte	0x1
	.uaword	0x7213
	.uleb128 0x2b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x6580
	.uleb128 0x2b
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x1ba
	.uaword	0x215
	.uleb128 0x3b
	.string	"speed"
	.byte	0x1
	.uahalf	0x1bc
	.uaword	0x231
	.uleb128 0x3b
	.string	"diff"
	.byte	0x1
	.uahalf	0x1bd
	.uaword	0x223
	.byte	0
	.uleb128 0x3c
	.string	"IfxGpt12_IncrEnc_updateFromT2"
	.byte	0x1
	.uahalf	0x18a
	.byte	0x1
	.uaword	.LFB379
	.uaword	.LFE379
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x72c2
	.uleb128 0x38
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x18a
	.uaword	0x6580
	.uaword	.LLST4
	.uleb128 0x3d
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x18c
	.uaword	0x5a57
	.uaword	.LLST5
	.uleb128 0x3d
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x215
	.uaword	.LLST6
	.uleb128 0x3e
	.uaword	0x71b2
	.uaword	.LBB98
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x19d
	.uleb128 0x37
	.uaword	0x71eb
	.uaword	.LLST7
	.uleb128 0x37
	.uaword	0x71df
	.uaword	.LLST8
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x40
	.uaword	0x71f7
	.uaword	.LLST9
	.uleb128 0x40
	.uaword	0x7205
	.uaword	.LLST10
	.uleb128 0x41
	.uaword	.LVL46
	.uaword	0x7c0e
	.uleb128 0x3a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.string	"IfxGpt12_IncrEnc_updateSpeedFromT3"
	.byte	0x1
	.uahalf	0x1d9
	.byte	0x1
	.byte	0x1
	.uaword	0x7350
	.uleb128 0x2b
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x6580
	.uleb128 0x2b
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x1d9
	.uaword	0x215
	.uleb128 0x3b
	.string	"speed"
	.byte	0x1
	.uahalf	0x1db
	.uaword	0x231
	.uleb128 0x3b
	.string	"diff"
	.byte	0x1
	.uahalf	0x1dc
	.uaword	0x223
	.uleb128 0x42
	.uleb128 0x35
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x1ef
	.uaword	0x5a57
	.uleb128 0x3b
	.string	"srcT5"
	.byte	0x1
	.uahalf	0x1f0
	.uaword	0x64a1
	.uleb128 0x42
	.uleb128 0x3b
	.string	"srcCap"
	.byte	0x1
	.uahalf	0x1f4
	.uaword	0x64a1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.string	"IfxGpt12_IncrEnc_updateFromT3"
	.byte	0x1
	.uahalf	0x1a2
	.byte	0x1
	.uaword	.LFB380
	.uaword	.LFE380
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7422
	.uleb128 0x38
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x6580
	.uaword	.LLST11
	.uleb128 0x3d
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x5a57
	.uaword	.LLST12
	.uleb128 0x3d
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0x215
	.uaword	.LLST13
	.uleb128 0x3e
	.uaword	0x72c2
	.uaword	.LBB108
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.uahalf	0x1b5
	.uleb128 0x37
	.uaword	0x72fb
	.uaword	.LLST14
	.uleb128 0x37
	.uaword	0x72ef
	.uaword	.LLST15
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x40
	.uaword	0x7307
	.uaword	.LLST16
	.uleb128 0x40
	.uaword	0x7315
	.uaword	.LLST17
	.uleb128 0x43
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0x740e
	.uleb128 0x40
	.uaword	0x7323
	.uaword	.LLST18
	.uleb128 0x44
	.uaword	0x732f
	.uleb128 0x3f
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x44
	.uaword	0x733e
	.byte	0
	.byte	0
	.uleb128 0x41
	.uaword	.LVL69
	.uaword	0x7c0e
	.uleb128 0x3a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 64
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_init"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	0x253
	.uaword	.LFB370
	.uaword	.LFE370
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7b0a
	.uleb128 0x30
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8b
	.uaword	0x6580
	.uaword	.LLST19
	.uleb128 0x46
	.string	"config"
	.byte	0x1
	.byte	0x8b
	.uaword	0x7b0a
	.uaword	.LLST20
	.uleb128 0x47
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8d
	.uaword	0x253
	.uaword	.LLST21
	.uleb128 0x48
	.uaword	.LASF28
	.byte	0x1
	.byte	0x8e
	.uaword	0x5a57
	.byte	0x1
	.byte	0x6c
	.uleb128 0x49
	.uaword	0x653a
	.uaword	.LBB123
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0x96
	.uaword	0x74af
	.uleb128 0x4a
	.uaword	0x6573
	.byte	0x1
	.byte	0x5a
	.uleb128 0x4a
	.uaword	0x6567
	.byte	0x1
	.byte	0x6d
	.byte	0
	.uleb128 0x4b
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	0x74e9
	.uleb128 0x4c
	.string	"lpfConfig"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0xd65
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x41
	.uaword	.LVL102
	.uaword	0x7c42
	.uleb128 0x3a
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3a
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8d
	.sleb128 64
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	0x6586
	.uaword	.LBB132
	.uaword	.LBE132
	.byte	0x1
	.byte	0xa5
	.uaword	0x750f
	.uleb128 0x37
	.uaword	0x65b0
	.uaword	.LLST22
	.uleb128 0x37
	.uaword	0x65a4
	.uaword	.LLST23
	.byte	0
	.uleb128 0x4d
	.uaword	0x65be
	.uaword	.LBB134
	.uaword	.LBE134
	.byte	0x1
	.byte	0xad
	.uaword	0x7535
	.uleb128 0x37
	.uaword	0x6601
	.uaword	.LLST24
	.uleb128 0x37
	.uaword	0x65f5
	.uaword	.LLST25
	.byte	0
	.uleb128 0x4d
	.uaword	0x660e
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.byte	0xb4
	.uaword	0x755b
	.uleb128 0x37
	.uaword	0x6643
	.uaword	.LLST26
	.uleb128 0x37
	.uaword	0x6637
	.uaword	.LLST27
	.byte	0
	.uleb128 0x4d
	.uaword	0x6650
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.byte	0xb5
	.uaword	0x7581
	.uleb128 0x37
	.uaword	0x6684
	.uaword	.LLST28
	.uleb128 0x37
	.uaword	0x6678
	.uaword	.LLST27
	.byte	0
	.uleb128 0x4d
	.uaword	0x6691
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.byte	0xb6
	.uaword	0x75a7
	.uleb128 0x37
	.uaword	0x66c0
	.uaword	.LLST30
	.uleb128 0x37
	.uaword	0x66b4
	.uaword	.LLST31
	.byte	0
	.uleb128 0x4d
	.uaword	0x66d0
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.byte	0xb7
	.uaword	0x75cd
	.uleb128 0x37
	.uaword	0x66f6
	.uaword	.LLST32
	.uleb128 0x37
	.uaword	0x66ea
	.uaword	.LLST33
	.byte	0
	.uleb128 0x4d
	.uaword	0x6703
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x1
	.byte	0xbc
	.uaword	0x75f3
	.uleb128 0x37
	.uaword	0x672d
	.uaword	.LLST34
	.uleb128 0x37
	.uaword	0x6721
	.uaword	.LLST35
	.byte	0
	.uleb128 0x4d
	.uaword	0x673b
	.uaword	.LBB146
	.uaword	.LBE146
	.byte	0x1
	.byte	0xbd
	.uaword	0x7619
	.uleb128 0x37
	.uaword	0x6771
	.uaword	.LLST36
	.uleb128 0x37
	.uaword	0x6765
	.uaword	.LLST37
	.byte	0
	.uleb128 0x4d
	.uaword	0x677e
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.byte	0xbe
	.uaword	0x763f
	.uleb128 0x37
	.uaword	0x67b3
	.uaword	.LLST38
	.uleb128 0x37
	.uaword	0x67a7
	.uaword	.LLST39
	.byte	0
	.uleb128 0x4d
	.uaword	0x67c0
	.uaword	.LBB150
	.uaword	.LBE150
	.byte	0x1
	.byte	0xbf
	.uaword	0x7665
	.uleb128 0x37
	.uaword	0x67f5
	.uaword	.LLST40
	.uleb128 0x37
	.uaword	0x67e9
	.uaword	.LLST41
	.byte	0
	.uleb128 0x4d
	.uaword	0x6802
	.uaword	.LBB152
	.uaword	.LBE152
	.byte	0x1
	.byte	0xc0
	.uaword	0x768b
	.uleb128 0x37
	.uaword	0x6837
	.uaword	.LLST42
	.uleb128 0x37
	.uaword	0x682b
	.uaword	.LLST43
	.byte	0
	.uleb128 0x4d
	.uaword	0x6844
	.uaword	.LBB154
	.uaword	.LBE154
	.byte	0x1
	.byte	0xc1
	.uaword	0x76b1
	.uleb128 0x37
	.uaword	0x6877
	.uaword	.LLST44
	.uleb128 0x37
	.uaword	0x686b
	.uaword	.LLST45
	.byte	0
	.uleb128 0x4d
	.uaword	0x6888
	.uaword	.LBB156
	.uaword	.LBE156
	.byte	0x1
	.byte	0xc2
	.uaword	0x76d7
	.uleb128 0x37
	.uaword	0x68ae
	.uaword	.LLST46
	.uleb128 0x37
	.uaword	0x68a2
	.uaword	.LLST47
	.byte	0
	.uleb128 0x4b
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	0x774e
	.uleb128 0x4e
	.string	"src"
	.byte	0x1
	.byte	0xc7
	.uaword	0x64a1
	.uleb128 0x49
	.uaword	0x68bb
	.uaword	.LBB159
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0xc8
	.uaword	0x7734
	.uleb128 0x4f
	.uaword	0x68ef
	.uleb128 0x37
	.uaword	0x68db
	.uaword	.LLST48
	.uleb128 0x37
	.uaword	0x68d0
	.uaword	.LLST49
	.uleb128 0x50
	.uaword	0x6478
	.uaword	.LBB161
	.uaword	.LBE161
	.byte	0x3
	.uahalf	0x102
	.uleb128 0x37
	.uaword	0x6495
	.uaword	.LLST50
	.byte	0
	.byte	0
	.uleb128 0x51
	.uaword	0x6900
	.uaword	.LBB165
	.uaword	.LBE165
	.byte	0x1
	.byte	0xc9
	.uleb128 0x37
	.uaword	0x6917
	.uaword	.LLST51
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uaword	0x6923
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x1
	.byte	0xce
	.uaword	0x7774
	.uleb128 0x37
	.uaword	0x694d
	.uaword	.LLST52
	.uleb128 0x37
	.uaword	0x6941
	.uaword	.LLST53
	.byte	0
	.uleb128 0x4d
	.uaword	0x695b
	.uaword	.LBB169
	.uaword	.LBE169
	.byte	0x1
	.byte	0xcf
	.uaword	0x779a
	.uleb128 0x37
	.uaword	0x698f
	.uaword	.LLST54
	.uleb128 0x37
	.uaword	0x6983
	.uaword	.LLST55
	.byte	0
	.uleb128 0x4d
	.uaword	0x69a7
	.uaword	.LBB171
	.uaword	.LBE171
	.byte	0x1
	.byte	0xd0
	.uaword	0x77c0
	.uleb128 0x37
	.uaword	0x69db
	.uaword	.LLST56
	.uleb128 0x37
	.uaword	0x69cf
	.uaword	.LLST57
	.byte	0
	.uleb128 0x4d
	.uaword	0x69ec
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x1
	.byte	0xd1
	.uaword	0x77e6
	.uleb128 0x37
	.uaword	0x6a24
	.uaword	.LLST58
	.uleb128 0x37
	.uaword	0x6a18
	.uaword	.LLST59
	.byte	0
	.uleb128 0x4d
	.uaword	0x6a32
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x1
	.byte	0xd2
	.uaword	0x780c
	.uleb128 0x37
	.uaword	0x6a65
	.uaword	.LLST60
	.uleb128 0x37
	.uaword	0x6a59
	.uaword	.LLST61
	.byte	0
	.uleb128 0x4d
	.uaword	0x6a72
	.uaword	.LBB177
	.uaword	.LBE177
	.byte	0x1
	.byte	0xd3
	.uaword	0x7832
	.uleb128 0x37
	.uaword	0x6aac
	.uaword	.LLST62
	.uleb128 0x37
	.uaword	0x6aa0
	.uaword	.LLST63
	.byte	0
	.uleb128 0x4d
	.uaword	0x6ab9
	.uaword	.LBB179
	.uaword	.LBE179
	.byte	0x1
	.byte	0xd4
	.uaword	0x7858
	.uleb128 0x37
	.uaword	0x6aec
	.uaword	.LLST64
	.uleb128 0x37
	.uaword	0x6ae0
	.uaword	.LLST65
	.byte	0
	.uleb128 0x4d
	.uaword	0x6afd
	.uaword	.LBB181
	.uaword	.LBE181
	.byte	0x1
	.byte	0xd5
	.uaword	0x787e
	.uleb128 0x37
	.uaword	0x6b32
	.uaword	.LLST66
	.uleb128 0x37
	.uaword	0x6b26
	.uaword	.LLST67
	.byte	0
	.uleb128 0x4d
	.uaword	0x6b3f
	.uaword	.LBB183
	.uaword	.LBE183
	.byte	0x1
	.byte	0xd6
	.uaword	0x78a4
	.uleb128 0x37
	.uaword	0x6b73
	.uaword	.LLST68
	.uleb128 0x37
	.uaword	0x6b67
	.uaword	.LLST69
	.byte	0
	.uleb128 0x4d
	.uaword	0x6b80
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x1
	.byte	0xd7
	.uaword	0x78ca
	.uleb128 0x37
	.uaword	0x6ba6
	.uaword	.LLST70
	.uleb128 0x37
	.uaword	0x6b9a
	.uaword	.LLST71
	.byte	0
	.uleb128 0x4d
	.uaword	0x6bb3
	.uaword	.LBB187
	.uaword	.LBE187
	.byte	0x1
	.byte	0xde
	.uaword	0x78f0
	.uleb128 0x37
	.uaword	0x6bdd
	.uaword	.LLST72
	.uleb128 0x37
	.uaword	0x6bd1
	.uaword	.LLST73
	.byte	0
	.uleb128 0x4d
	.uaword	0x6beb
	.uaword	.LBB189
	.uaword	.LBE189
	.byte	0x1
	.byte	0xe6
	.uaword	0x7916
	.uleb128 0x37
	.uaword	0x6c2e
	.uaword	.LLST74
	.uleb128 0x37
	.uaword	0x6c22
	.uaword	.LLST75
	.byte	0
	.uleb128 0x4d
	.uaword	0x6c3b
	.uaword	.LBB191
	.uaword	.LBE191
	.byte	0x1
	.byte	0xed
	.uaword	0x793c
	.uleb128 0x37
	.uaword	0x6c70
	.uaword	.LLST76
	.uleb128 0x37
	.uaword	0x6c64
	.uaword	.LLST77
	.byte	0
	.uleb128 0x4d
	.uaword	0x6c7d
	.uaword	.LBB193
	.uaword	.LBE193
	.byte	0x1
	.byte	0xee
	.uaword	0x7962
	.uleb128 0x37
	.uaword	0x6cb1
	.uaword	.LLST78
	.uleb128 0x37
	.uaword	0x6ca5
	.uaword	.LLST77
	.byte	0
	.uleb128 0x4d
	.uaword	0x6cbe
	.uaword	.LBB195
	.uaword	.LBE195
	.byte	0x1
	.byte	0xef
	.uaword	0x7988
	.uleb128 0x37
	.uaword	0x6ce4
	.uaword	.LLST80
	.uleb128 0x37
	.uaword	0x6cd8
	.uaword	.LLST81
	.byte	0
	.uleb128 0x4d
	.uaword	0x6703
	.uaword	.LBB197
	.uaword	.LBE197
	.byte	0x1
	.byte	0xf4
	.uaword	0x79ae
	.uleb128 0x37
	.uaword	0x672d
	.uaword	.LLST82
	.uleb128 0x37
	.uaword	0x6721
	.uaword	.LLST83
	.byte	0
	.uleb128 0x4d
	.uaword	0x673b
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x1
	.byte	0xf5
	.uaword	0x79d4
	.uleb128 0x37
	.uaword	0x6771
	.uaword	.LLST84
	.uleb128 0x37
	.uaword	0x6765
	.uaword	.LLST85
	.byte	0
	.uleb128 0x4d
	.uaword	0x677e
	.uaword	.LBB201
	.uaword	.LBE201
	.byte	0x1
	.byte	0xf6
	.uaword	0x79fa
	.uleb128 0x37
	.uaword	0x67b3
	.uaword	.LLST86
	.uleb128 0x37
	.uaword	0x67a7
	.uaword	.LLST87
	.byte	0
	.uleb128 0x4d
	.uaword	0x67c0
	.uaword	.LBB203
	.uaword	.LBE203
	.byte	0x1
	.byte	0xf7
	.uaword	0x7a20
	.uleb128 0x37
	.uaword	0x67f5
	.uaword	.LLST88
	.uleb128 0x37
	.uaword	0x67e9
	.uaword	.LLST89
	.byte	0
	.uleb128 0x4d
	.uaword	0x6802
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x1
	.byte	0xf8
	.uaword	0x7a46
	.uleb128 0x37
	.uaword	0x6837
	.uaword	.LLST90
	.uleb128 0x37
	.uaword	0x682b
	.uaword	.LLST91
	.byte	0
	.uleb128 0x4d
	.uaword	0x6844
	.uaword	.LBB207
	.uaword	.LBE207
	.byte	0x1
	.byte	0xf9
	.uaword	0x7a6c
	.uleb128 0x37
	.uaword	0x6877
	.uaword	.LLST92
	.uleb128 0x37
	.uaword	0x686b
	.uaword	.LLST93
	.byte	0
	.uleb128 0x4d
	.uaword	0x6888
	.uaword	.LBB209
	.uaword	.LBE209
	.byte	0x1
	.byte	0xfa
	.uaword	0x7a92
	.uleb128 0x37
	.uaword	0x68ae
	.uaword	.LLST94
	.uleb128 0x37
	.uaword	0x68a2
	.uaword	.LLST95
	.byte	0
	.uleb128 0x4d
	.uaword	0x65be
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x1
	.byte	0xaa
	.uaword	0x7ab8
	.uleb128 0x37
	.uaword	0x6601
	.uaword	.LLST96
	.uleb128 0x37
	.uaword	0x65f5
	.uaword	.LLST97
	.byte	0
	.uleb128 0x4d
	.uaword	0x6beb
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x1
	.byte	0xe3
	.uaword	0x7ade
	.uleb128 0x37
	.uaword	0x6c2e
	.uaword	.LLST98
	.uleb128 0x37
	.uaword	0x6c22
	.uaword	.LLST99
	.byte	0
	.uleb128 0x52
	.uaword	.LVL93
	.uaword	0x7c79
	.uleb128 0x52
	.uaword	.LVL94
	.uaword	0x7cb5
	.uleb128 0x52
	.uaword	.LVL95
	.uaword	0x7c79
	.uleb128 0x41
	.uaword	.LVL98
	.uaword	0x7cf4
	.uleb128 0x3a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7b10
	.uleb128 0x26
	.uaword	0x6459
	.uleb128 0x33
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_initConfig"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	.LFB371
	.uaword	.LFE371
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7b7a
	.uleb128 0x53
	.string	"config"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x7b7a
	.uaword	.LLST100
	.uleb128 0x38
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x5a57
	.uaword	.LLST101
	.uleb128 0x41
	.uaword	.LVL151
	.uaword	0x7d22
	.uleb128 0x3a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x6459
	.uleb128 0x54
	.byte	0x1
	.string	"IfxGpt12_IncrEnc_stdIfPosInit"
	.byte	0x1
	.uahalf	0x162
	.byte	0x1
	.uaword	0x253
	.uaword	.LFB377
	.uaword	.LFE377
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x7bd6
	.uleb128 0x55
	.string	"stdif"
	.byte	0x1
	.uahalf	0x162
	.uaword	0x7bd6
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x162
	.uaword	0x6580
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x687
	.uleb128 0x1b
	.uaword	0x35f
	.uaword	0x7bec
	.uleb128 0x1c
	.uaword	0x1004
	.byte	0
	.byte	0
	.uleb128 0x56
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x10
	.byte	0x90
	.uaword	0x7c09
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.uaword	0x7bdc
	.uleb128 0x57
	.byte	0x1
	.string	"Ifx_LowPassPt1F32_do"
	.byte	0x8
	.byte	0x41
	.byte	0x1
	.uaword	0x231
	.byte	0x1
	.uaword	0x7c3c
	.uleb128 0xd
	.uaword	0x7c3c
	.uleb128 0xd
	.uaword	0x231
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd09
	.uleb128 0x58
	.byte	0x1
	.string	"Ifx_LowPassPt1F32_init"
	.byte	0x8
	.byte	0x3f
	.byte	0x1
	.byte	0x1
	.uaword	0x7c6e
	.uleb128 0xd
	.uaword	0x7c3c
	.uleb128 0xd
	.uaword	0x7c6e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x7c74
	.uleb128 0x26
	.uaword	0xd65
	.uleb128 0x59
	.byte	0x1
	.string	"IfxGpt12_initTxInPinWithPadLevel"
	.byte	0x2
	.uahalf	0x415
	.byte	0x1
	.byte	0x1
	.uaword	0x7cb5
	.uleb128 0xd
	.uaword	0x644d
	.uleb128 0xd
	.uaword	0x450a
	.uleb128 0xd
	.uaword	0x4648
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxGpt12_initTxEudInPinWithPadLevel"
	.byte	0x2
	.uahalf	0x40d
	.byte	0x1
	.byte	0x1
	.uaword	0x7cf4
	.uleb128 0xd
	.uaword	0x6453
	.uleb128 0xd
	.uaword	0x450a
	.uleb128 0xd
	.uaword	0x4648
	.byte	0
	.uleb128 0x5a
	.byte	0x1
	.string	"IfxGpt12_T5_getFrequency"
	.byte	0x2
	.uahalf	0x376
	.byte	0x1
	.uaword	0x231
	.byte	0x1
	.uaword	0x7d22
	.uleb128 0xd
	.uaword	0x5a57
	.byte	0
	.uleb128 0x59
	.byte	0x1
	.string	"IfxStdIf_Pos_initConfig"
	.byte	0x7
	.uahalf	0x229
	.byte	0x1
	.byte	0x1
	.uaword	0x7d4b
	.uleb128 0xd
	.uaword	0x7d4b
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xcc4
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x4d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x50
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x51
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x52
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x53
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x54
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x55
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x56
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x57
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x58
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x59
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE358
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL20
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LFE376
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LFE378
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL32
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL47
	.uaword	.LFE379
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL33
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL47
	.uaword	.LFE379
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL34
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL36
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL36
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x6
	.byte	0x72
	.sleb128 -1
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x9
	.byte	0x84
	.sleb128 24
	.byte	0x6
	.byte	0x31
	.byte	0x1c
	.byte	0x73
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL49
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL70
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL50
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL70
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL51
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL74
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL53
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL74
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL53
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL68
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL74
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL65
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL75
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL62
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL70
	.uaword	.LVL72
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL74
	.uaword	.LFE380
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL76
	.uaword	.LVL78-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL78-1
	.uaword	.LFE370
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL76
	.uaword	.LVL78-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL78-1
	.uaword	.LFE370
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL76
	.uaword	.LVL92
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL103
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL132
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL134
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL146
	.uaword	.LFE370
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL103
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL103
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL105
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL105
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0xa
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL108
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL108
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL109
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL109
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL110
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL110
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL111
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL111
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL112
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL112
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL113
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL113
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x7
	.byte	0x8f
	.sleb128 58
	.byte	0x94
	.byte	0x2
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL114
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL115
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL115
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL116
	.uaword	.LVL122
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL116
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x8f
	.sleb128 60
	.uaword	.LVL119
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL118
	.uaword	.LVL122
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf003846c
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL120
	.uaword	.LVL122
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf003846c
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL121
	.uaword	.LVL122
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf003846c
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL122
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL122
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL123
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL123
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL124
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL124
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL125
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL125
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL126
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL126
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL127
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL127
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL128
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL128
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL129
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL129
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL130
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL130
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL131
	.uaword	.LVL132
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL132
	.uaword	.LVL146
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL149
	.uaword	.LFE370
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL132
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL149
	.uaword	.LFE370
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL133
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL134
	.uaword	.LVL146
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL134
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0xa
	.byte	0x8f
	.sleb128 4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL137
	.uaword	.LVL146
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL137
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL138
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL138
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL139
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL139
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL140
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL140
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL141
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL141
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL142
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL142
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL143
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST96:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST99:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL150
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL151-1
	.uaword	.LFE371
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL150
	.uaword	.LVL151-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL151-1
	.uaword	.LFE371
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xcc
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.uaword	.LFB359
	.uaword	.LFE359-.LFB359
	.uaword	.LFB360
	.uaword	.LFE360-.LFB360
	.uaword	.LFB361
	.uaword	.LFE361-.LFB361
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB102
	.uaword	.LBE102
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	0
	.uaword	0
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	0
	.uaword	0
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	0
	.uaword	0
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	0
	.uaword	0
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	0
	.uaword	0
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	0
	.uaword	0
	.uaword	.LFB358
	.uaword	.LFE358
	.uaword	.LFB359
	.uaword	.LFE359
	.uaword	.LFB360
	.uaword	.LFE360
	.uaword	.LFB361
	.uaword	.LFE361
	.uaword	.LFB362
	.uaword	.LFE362
	.uaword	.LFB363
	.uaword	.LFE363
	.uaword	.LFB364
	.uaword	.LFE364
	.uaword	.LFB365
	.uaword	.LFE365
	.uaword	.LFB366
	.uaword	.LFE366
	.uaword	.LFB367
	.uaword	.LFE367
	.uaword	.LFB368
	.uaword	.LFE368
	.uaword	.LFB369
	.uaword	.LFE369
	.uaword	.LFB372
	.uaword	.LFE372
	.uaword	.LFB373
	.uaword	.LFE373
	.uaword	.LFB374
	.uaword	.LFE374
	.uaword	.LFB375
	.uaword	.LFE375
	.uaword	.LFB376
	.uaword	.LFE376
	.uaword	.LFB378
	.uaword	.LFE378
	.uaword	.LFB379
	.uaword	.LFE379
	.uaword	.LFB380
	.uaword	.LFE380
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LFB371
	.uaword	.LFE371
	.uaword	.LFB377
	.uaword	.LFE377
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF20:
	.string	"MODNUMBER"
.LASF27:
	.string	"direction"
.LASF29:
	.string	"inputMode"
.LASF33:
	.string	"newPosition"
.LASF14:
	.string	"reserved_10"
.LASF22:
	.string	"reserved_11"
.LASF11:
	.string	"reserved_12"
.LASF19:
	.string	"reserved_16"
.LASF6:
	.string	"speedModeThreshold"
.LASF17:
	.string	"reserved_98"
.LASF28:
	.string	"gpt12"
.LASF21:
	.string	"reserved_20"
.LASF16:
	.string	"reserved_24"
.LASF13:
	.string	"reserved_28"
.LASF30:
	.string	"source"
.LASF18:
	.string	"reserved_0"
.LASF26:
	.string	"reserved_1"
.LASF25:
	.string	"reserved_2"
.LASF12:
	.string	"reserved_4"
.LASF10:
	.string	"reserved_8"
.LASF23:
	.string	"reserved_C"
.LASF2:
	.string	"driver"
.LASF7:
	.string	"minSpeed"
.LASF8:
	.string	"maxSpeed"
.LASF0:
	.string	"module"
.LASF4:
	.string	"resolution"
.LASF32:
	.string	"enabled"
.LASF24:
	.string	"reserved_48"
.LASF3:
	.string	"offset"
.LASF9:
	.string	"speedFilterEnabled"
.LASF1:
	.string	"status"
.LASF31:
	.string	"runTimer"
.LASF15:
	.string	"CERBERUS"
.LASF5:
	.string	"updatePeriod"
	.extern	IfxStdIf_Pos_initConfig,STT_FUNC,0
	.extern	Ifx_LowPassPt1F32_init,STT_FUNC,0
	.extern	IfxGpt12_T5_getFrequency,STT_FUNC,0
	.extern	IfxGpt12_initTxEudInPinWithPadLevel,STT_FUNC,0
	.extern	IfxGpt12_initTxInPinWithPadLevel,STT_FUNC,0
	.extern	Ifx_LowPassPt1F32_do,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
