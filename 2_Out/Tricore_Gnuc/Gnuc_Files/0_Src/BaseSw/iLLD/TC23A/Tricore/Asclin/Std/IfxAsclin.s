	.file	"IfxAsclin.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxAsclin_disableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_disableModule
	.type	IfxAsclin_disableModule, @function
IfxAsclin_disableModule:
.LFB362:
	.file 1 "0_Src/BaseSw/iLLD/TC23A/Tricore/Asclin/Std/IfxAsclin.c"
	.loc 1 36 0
.LVL0:
	.loc 1 36 0
	mov.aa	%a15, %a4
	.loc 1 37 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL1:
	.loc 1 38 0
	mov	%d4, %d2
	.loc 1 37 0
	mov	%d15, %d2
.LVL2:
	.loc 1 38 0
	call	IfxScuWdt_clearCpuEndinit
.LVL3:
.LBB66:
.LBB67:
	.file 2 "0_Src/BaseSw/iLLD/TC23A/Tricore/Asclin/Std/IfxAsclin.h"
	.loc 2 2217 0
	ld.w	%d2, [%a15]0
.LBE67:
.LBE66:
	.loc 1 40 0
	mov	%d4, %d15
.LBB69:
.LBB68:
	.loc 2 2217 0
	or	%d2, %d2, 1
	st.w	[%a15]0, %d2
.LBE68:
.LBE69:
	.loc 1 40 0
	j	IfxScuWdt_setCpuEndinit
.LVL4:
.LFE362:
	.size	IfxAsclin_disableModule, .-IfxAsclin_disableModule
.section .text.IfxAsclin_enableAscErrorFlags,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableAscErrorFlags
	.type	IfxAsclin_enableAscErrorFlags, @function
IfxAsclin_enableAscErrorFlags:
.LFB363:
	.loc 1 45 0
.LVL5:
.LBB70:
.LBB71:
	.loc 2 1806 0
	movh	%d15, 1
	sel	%d4, %d4, %d15, 0
.LVL6:
	ld.w	%d15, [%a4] 64
	insert	%d15, %d15, 0, 16, 1
	or	%d4, %d15
	st.w	[%a4] 64, %d4
.LVL7:
.LBE71:
.LBE70:
.LBB72:
.LBB73:
	.loc 2 1836 0
	movh	%d15, 1024
	sel	%d5, %d5, %d15, 0
.LVL8:
	ld.w	%d15, [%a4] 64
	insert	%d15, %d15, 0, 26, 1
	or	%d5, %d15
	st.w	[%a4] 64, %d5
	ret
.LBE73:
.LBE72:
.LFE363:
	.size	IfxAsclin_enableAscErrorFlags, .-IfxAsclin_enableAscErrorFlags
.section .text.IfxAsclin_enableModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_enableModule
	.type	IfxAsclin_enableModule, @function
IfxAsclin_enableModule:
.LFB364:
	.loc 1 52 0
.LVL9:
	.loc 1 52 0
	mov.aa	%a15, %a4
	.loc 1 53 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL10:
	.loc 1 54 0
	mov	%d4, %d2
	.loc 1 53 0
	mov	%d15, %d2
.LVL11:
	.loc 1 54 0
	call	IfxScuWdt_clearCpuEndinit
.LVL12:
.LBB74:
.LBB75:
	.loc 2 2223 0
	ld.w	%d2, [%a15]0
.LBE75:
.LBE74:
	.loc 1 56 0
	mov	%d4, %d15
.LBB77:
.LBB76:
	.loc 2 2223 0
	andn	%d2, %d2, ~(-2)
	st.w	[%a15]0, %d2
.LBE76:
.LBE77:
	.loc 1 56 0
	j	IfxScuWdt_setCpuEndinit
.LVL13:
.LFE364:
	.size	IfxAsclin_enableModule, .-IfxAsclin_enableModule
.section .text.IfxAsclin_getAddress,"ax",@progbits
	.align 1
	.global	IfxAsclin_getAddress
	.type	IfxAsclin_getAddress, @function
IfxAsclin_getAddress:
.LFB365:
	.loc 1 61 0
.LVL14:
	.loc 1 70 0
	mov.a	%a2, 0
	.loc 1 64 0
	jge	%d4, 2, .L5
	.loc 1 66 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	addsc.a	%a15, %a15, %d4, 3
	ld.a	%a2, [%a15]0
.LVL15:
.L5:
	.loc 1 74 0
	ret
.LFE365:
	.size	IfxAsclin_getAddress, .-IfxAsclin_getAddress
.section .text.IfxAsclin_getFaFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getFaFrequency
	.type	IfxAsclin_getFaFrequency, @function
IfxAsclin_getFaFrequency:
.LFB366:
	.loc 1 78 0
.LVL16:
.LBB78:
.LBB79:
	.loc 2 1914 0
	ld.w	%d15, [%a4] 76
	and	%d15, %d15, 31
.LBE79:
.LBE78:
	.loc 1 82 0
	add	%d15, -1
	jlt.u	%d15, 8, .L15
.L9:
.LVL17:
	.loc 1 105 0
	mov	%d2, 0
	ret
.LVL18:
.L15:
	.loc 1 82 0
	movh.a	%a15, hi:.L11
	lea	%a15, [%a15] lo:.L11
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L11:
	.code32
	j	.L10
	.code32
	j	.L12
	.code32
	j	.L9
	.code32
	j	.L13
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L9
	.code32
	j	.L14
.L13:
	.loc 1 94 0
	j	IfxScuCcu_getPllErayFrequency
.LVL19:
.L12:
	.loc 1 91 0
	j	IfxScuCcu_getOsc0Frequency
.LVL20:
.L10:
	.loc 1 88 0
	j	IfxScuCcu_getSpbFrequency
.LVL21:
.L14:
	.loc 1 97 0
	j	IfxScuCcu_getBaud2Frequency
.LVL22:
.LFE366:
	.size	IfxAsclin_getFaFrequency, .-IfxAsclin_getFaFrequency
.section .text.IfxAsclin_getIndex,"ax",@progbits
	.align 1
	.global	IfxAsclin_getIndex
	.type	IfxAsclin_getIndex, @function
IfxAsclin_getIndex:
.LFB367:
	.loc 1 109 0
.LVL23:
	.loc 1 117 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a2, [%a15] lo:IfxAsclin_cfg_indexMap
	ld.a	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	jeq.a	%a15, %a4, .L19
.LVL24:
	ld.a	%a15, [%a2] 8
	.loc 1 113 0
	mov	%d2, -1
	.loc 1 115 0
	mov	%d15, 1
	.loc 1 117 0
	jeq.a	%a15, %a4, .L17
.LVL25:
	.loc 1 125 0
	ret
.LVL26:
.L19:
	.loc 1 115 0
	mov	%d15, 0
.LVL27:
.L17:
	.loc 1 119 0
	addsc.a	%a2, %a2, %d15, 3
	ld.b	%d2, [%a2] 4
.LVL28:
	.loc 1 125 0
	ret
.LFE367:
	.size	IfxAsclin_getIndex, .-IfxAsclin_getIndex
.section .text.IfxAsclin_getOvsFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getOvsFrequency
	.type	IfxAsclin_getOvsFrequency, @function
IfxAsclin_getOvsFrequency:
.LFB368:
	.loc 1 129 0
.LVL29:
	.loc 1 129 0
	mov.aa	%a15, %a4
.LVL30:
.LBB80:
.LBB81:
	.loc 1 136 0
	call	IfxAsclin_getFaFrequency
.LVL31:
	ld.w	%d4, [%a15] 20
.LBE81:
.LBE80:
	.loc 1 130 0
	ld.w	%d3, [%a15] 32
.LBB85:
.LBB82:
	.loc 1 136 0
	insert	%d4, %d4, 0, 12, 20
.LBE82:
.LBE85:
	.loc 1 130 0
	ld.w	%d15, [%a15] 32
.LBB86:
.LBB83:
	.loc 1 136 0
	add	%d4, 1
	itof	%d4, %d4
.LBE83:
.LBE86:
	.loc 1 130 0
	extr.u	%d3, %d3, 16, 12
.LBB87:
.LBB84:
	.loc 1 136 0
	div.f	%d2, %d2, %d4
.LBE84:
.LBE87:
	.loc 1 130 0
	itof	%d3, %d3
	insert	%d15, %d15, 0, 12, 20
	mul.f	%d2, %d3, %d2
	itof	%d15, %d15
	.loc 1 131 0
	div.f	%d2, %d2, %d15
	ret
.LFE368:
	.size	IfxAsclin_getOvsFrequency, .-IfxAsclin_getOvsFrequency
.section .text.IfxAsclin_getPdFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getPdFrequency
	.type	IfxAsclin_getPdFrequency, @function
IfxAsclin_getPdFrequency:
.LFB369:
	.loc 1 135 0
.LVL32:
	.loc 1 135 0
	mov.aa	%a15, %a4
	.loc 1 136 0
	call	IfxAsclin_getFaFrequency
.LVL33:
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 12, 20
	add	%d15, 1
	itof	%d15, %d15
	.loc 1 137 0
	div.f	%d2, %d2, %d15
	ret
.LFE369:
	.size	IfxAsclin_getPdFrequency, .-IfxAsclin_getPdFrequency
.section .text.IfxAsclin_getShiftFrequency,"ax",@progbits
	.align 1
	.global	IfxAsclin_getShiftFrequency
	.type	IfxAsclin_getShiftFrequency, @function
IfxAsclin_getShiftFrequency:
.LFB370:
	.loc 1 141 0
.LVL34:
	.loc 1 141 0
	mov.aa	%a15, %a4
	.loc 1 142 0
	call	IfxAsclin_getOvsFrequency
.LVL35:
	ld.w	%d15, [%a15] 20
	extr.u	%d15, %d15, 16, 4
	itof	%d15, %d15
	.loc 1 143 0
	div.f	%d2, %d2, %d15
	ret
.LFE370:
	.size	IfxAsclin_getShiftFrequency, .-IfxAsclin_getShiftFrequency
.section .text.IfxAsclin_getSrcPointerEr,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerEr
	.type	IfxAsclin_getSrcPointerEr, @function
IfxAsclin_getSrcPointerEr:
.LFB371:
	.loc 1 147 0
.LVL36:
.LBB88:
.LBB89:
	.loc 1 117 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a3, [%a15] lo:IfxAsclin_cfg_indexMap
	ld.a	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	jeq.a	%a4, %a15, .L27
.LVL37:
	ld.a	%a15, [%a3] 8
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32644
	.loc 1 115 0
	mov	%d15, 1
	.loc 1 117 0
	jeq.a	%a4, %a15, .L25
.LVL38:
.LBE89:
.LBE88:
	.loc 1 149 0
	ret
.LVL39:
.L27:
.LBB91:
.LBB90:
	.loc 1 115 0
	mov	%d15, 0
.LVL40:
.L25:
	.loc 1 119 0
	addsc.a	%a3, %a3, %d15, 3
	ld.b	%d15, [%a3] 4
.LVL41:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32632
	addih.a	%a2, %a2, 61444
.LBE90:
.LBE91:
	.loc 1 149 0
	ret
.LFE371:
	.size	IfxAsclin_getSrcPointerEr, .-IfxAsclin_getSrcPointerEr
.section .text.IfxAsclin_getSrcPointerRx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerRx
	.type	IfxAsclin_getSrcPointerRx, @function
IfxAsclin_getSrcPointerRx:
.LFB372:
	.loc 1 153 0
.LVL42:
.LBB92:
.LBB93:
	.loc 1 117 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a3, [%a15] lo:IfxAsclin_cfg_indexMap
	ld.a	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	jeq.a	%a4, %a15, .L32
.LVL43:
	ld.a	%a15, [%a3] 8
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32648
	.loc 1 115 0
	mov	%d15, 1
	.loc 1 117 0
	jeq.a	%a4, %a15, .L30
.LVL44:
.LBE93:
.LBE92:
	.loc 1 155 0
	ret
.LVL45:
.L32:
.LBB95:
.LBB94:
	.loc 1 115 0
	mov	%d15, 0
.LVL46:
.L30:
	.loc 1 119 0
	addsc.a	%a3, %a3, %d15, 3
	ld.b	%d15, [%a3] 4
.LVL47:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32636
	addih.a	%a2, %a2, 61444
.LBE94:
.LBE95:
	.loc 1 155 0
	ret
.LFE372:
	.size	IfxAsclin_getSrcPointerRx, .-IfxAsclin_getSrcPointerRx
.section .text.IfxAsclin_getSrcPointerTx,"ax",@progbits
	.align 1
	.global	IfxAsclin_getSrcPointerTx
	.type	IfxAsclin_getSrcPointerTx, @function
IfxAsclin_getSrcPointerTx:
.LFB373:
	.loc 1 159 0
.LVL48:
.LBB96:
.LBB97:
	.loc 1 117 0
	movh.a	%a15, hi:IfxAsclin_cfg_indexMap
	lea	%a3, [%a15] lo:IfxAsclin_cfg_indexMap
	ld.a	%a15, [%a15] lo:IfxAsclin_cfg_indexMap
	jeq.a	%a4, %a15, .L37
.LVL49:
	ld.a	%a15, [%a3] 8
	movh.a	%a2, 61444
	lea	%a2, [%a2] -32652
	.loc 1 115 0
	mov	%d15, 1
	.loc 1 117 0
	jeq.a	%a4, %a15, .L35
.LVL50:
.LBE97:
.LBE96:
	.loc 1 161 0
	ret
.LVL51:
.L37:
.LBB99:
.LBB98:
	.loc 1 115 0
	mov	%d15, 0
.LVL52:
.L35:
	.loc 1 119 0
	addsc.a	%a3, %a3, %d15, 3
	ld.b	%d15, [%a3] 4
.LVL53:
	mul	%d15, %d15, 12
	mov.a	%a15, %d15
	lea	%a2, [%a15] -32640
	addih.a	%a2, %a2, 61444
.LBE98:
.LBE99:
	.loc 1 161 0
	ret
.LFE373:
	.size	IfxAsclin_getSrcPointerTx, .-IfxAsclin_getSrcPointerTx
.section .text.IfxAsclin_read16,"ax",@progbits
	.align 1
	.global	IfxAsclin_read16
	.type	IfxAsclin_read16, @function
IfxAsclin_read16:
.LFB374:
	.loc 1 165 0
.LVL54:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 168 0
	jz	%d4, .L45
.LVL55:
.L43:
	.loc 1 170 0
	ld.w	%d15, [%a4] 72
	st.h	[%a5]0, %d15
	add.a	%a5, 2
.LVL56:
	loop	%a15, .L43
.L45:
	.loc 1 175 0
	mov	%d2, 0
	ret
.LFE374:
	.size	IfxAsclin_read16, .-IfxAsclin_read16
.section .text.IfxAsclin_read32,"ax",@progbits
	.align 1
	.global	IfxAsclin_read32
	.type	IfxAsclin_read32, @function
IfxAsclin_read32:
.LFB375:
	.loc 1 179 0
.LVL57:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 182 0
	jz	%d4, .L52
.LVL58:
.L50:
	.loc 1 184 0
	ld.w	%d15, [%a4] 72
	st.w	[%a5]0, %d15
	add.a	%a5, 4
.LVL59:
	loop	%a15, .L50
.L52:
	.loc 1 189 0
	mov	%d2, 0
	ret
.LFE375:
	.size	IfxAsclin_read32, .-IfxAsclin_read32
.section .text.IfxAsclin_read8,"ax",@progbits
	.align 1
	.global	IfxAsclin_read8
	.type	IfxAsclin_read8, @function
IfxAsclin_read8:
.LFB376:
	.loc 1 193 0
.LVL60:
	mov.d	%d15, %a5
	addsc.a	%a15, %a5, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 196 0
	jz	%d4, .L59
.LVL61:
.L57:
	.loc 1 198 0
	ld.w	%d15, [%a4] 72
	st.b	[%a5]0, %d15
.LVL62:
	add.a	%a5, 1
.LVL63:
	loop	%a15, .L57
.LVL64:
.L59:
	.loc 1 203 0
	mov	%d2, 0
	ret
.LFE376:
	.size	IfxAsclin_read8, .-IfxAsclin_read8
.section .text.IfxAsclin_resetModule,"ax",@progbits
	.align 1
	.global	IfxAsclin_resetModule
	.type	IfxAsclin_resetModule, @function
IfxAsclin_resetModule:
.LFB377:
	.loc 1 207 0
.LVL65:
	.loc 1 207 0
	mov.aa	%a15, %a4
	.loc 1 208 0
	call	IfxScuWdt_getCpuWatchdogPassword
.LVL66:
	.loc 1 209 0
	mov	%d4, %d2
	.loc 1 208 0
	mov	%d8, %d2
.LVL67:
	.loc 1 209 0
	call	IfxScuWdt_clearCpuEndinit
.LVL68:
	.loc 1 211 0
	ld.w	%d15, [%a15] 244
	.loc 1 213 0
	mov	%d4, %d8
	.loc 1 211 0
	or	%d15, %d15, 1
	st.w	[%a15] 244, %d15
	.loc 1 212 0
	ld.w	%d15, [%a15] 240
	or	%d15, %d15, 1
	st.w	[%a15] 240, %d15
	.loc 1 213 0
	call	IfxScuWdt_setCpuEndinit
.LVL69:
.L61:
	.loc 1 215 0 discriminator 1
	ld.w	%d15, [%a15] 244
	jz.t	%d15, 1, .L61
	.loc 1 218 0
	mov	%d4, %d8
	call	IfxScuWdt_clearCpuEndinit
.LVL70:
	.loc 1 219 0
	ld.w	%d15, [%a15] 236
	.loc 1 221 0
	mov	%d4, %d8
	.loc 1 219 0
	or	%d15, %d15, 1
	st.w	[%a15] 236, %d15
	.loc 1 221 0
	j	IfxScuWdt_setCpuEndinit
.LVL71:
.LFE377:
	.size	IfxAsclin_resetModule, .-IfxAsclin_resetModule
.section .text.IfxAsclin_setBaudrateBitFields,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBaudrateBitFields
	.type	IfxAsclin_setBaudrateBitFields, @function
IfxAsclin_setBaudrateBitFields:
.LFB378:
	.loc 1 226 0
.LVL72:
.LBB100:
.LBB101:
	.loc 2 1914 0
	ld.w	%d2, [%a4] 76
.LBE101:
.LBE100:
.LBB103:
.LBB104:
	.loc 1 324 0
	ld.w	%d15, [%a4] 76
.LBE104:
.LBE103:
.LBB108:
.LBB102:
	.loc 2 1914 0
	and	%d2, %d2, 31
.LVL73:
.LBE102:
.LBE108:
.LBB109:
.LBB107:
	.loc 1 324 0
	andn	%d15, %d15, ~(-32)
	st.w	[%a4] 76, %d15
.L65:
.LVL74:
.LBB105:
.LBB106:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE106:
.LBE105:
	.loc 1 329 0
	jltz	%d15, .L65
.LVL75:
.LBE107:
.LBE109:
.LBB110:
.LBB111:
	.loc 2 2319 0
	ld.w	%d15, [%a4] 20
	add	%d4, -1
.LVL76:
	insert	%d4, %d15, %d4, 0, 12
.LVL77:
	st.w	[%a4] 20, %d4
.LVL78:
.LBE111:
.LBE110:
.LBB112:
.LBB113:
	.loc 2 2301 0
	ld.w	%d15, [%a4] 32
	insert	%d5, %d15, %d5, 16, 12
.LVL79:
	st.w	[%a4] 32, %d5
.LVL80:
.LBE113:
.LBE112:
.LBB114:
.LBB115:
	.loc 2 2211 0
	ld.w	%d15, [%a4] 32
	insert	%d6, %d15, %d6, 0, 12
.LVL81:
	st.w	[%a4] 32, %d6
.LVL82:
.LBE115:
.LBE114:
.LBB116:
.LBB117:
	.loc 2 2307 0
	ld.w	%d15, [%a4] 20
	insert	%d7, %d15, %d7, 16, 4
.LVL83:
	st.w	[%a4] 20, %d7
.LVL84:
.LBE117:
.LBE116:
.LBB118:
.LBB119:
	.loc 1 324 0
	ld.w	%d15, [%a4] 76
	andn	%d15, %d15, ~(-32)
	or	%d15, %d2
	st.w	[%a4] 76, %d15
	.loc 1 327 0
	jnz	%d2, .L72
.L67:
.LVL85:
.LBB120:
.LBB121:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE121:
.LBE120:
	.loc 1 329 0
	jltz	%d15, .L67
	ret
.LVL86:
.L72:
.LBB122:
.LBB123:
	.loc 2 1920 0
	ld.w	%d15, [%a4] 76
.LBE123:
.LBE122:
	.loc 1 334 0
	jgez	%d15, .L72
	ret
.LBE119:
.LBE118:
.LFE378:
	.size	IfxAsclin_setBaudrateBitFields, .-IfxAsclin_setBaudrateBitFields
	.global	__extendsfdf2
	.global	__muldf3
	.global	__truncdfsf2
.section .text.IfxAsclin_setBitTiming,"ax",@progbits
	.align 1
	.global	IfxAsclin_setBitTiming
	.type	IfxAsclin_setBitTiming, @function
IfxAsclin_setBitTiming:
.LFB379:
	.loc 1 238 0
.LVL87:
.LBB124:
.LBB125:
	.loc 2 1914 0
	ld.w	%d2, [%a4] 76
.LBE125:
.LBE124:
	.loc 1 238 0
	mov.a	%a14, %d7
	sub.a	%SP, 8
.LCFI0:
.LBB128:
.LBB126:
	.loc 2 1914 0
	and	%d2, %d2, 31
.LBE126:
.LBE128:
	.loc 1 238 0
	mov.aa	%a15, %a4
	mov	%d15, %d5
	mov	%d8, %d4
	mov	%d10, %d6
.LBB129:
.LBB127:
	.loc 2 1914 0
	mov.a	%a13, %d2
.LVL88:
.LBE127:
.LBE129:
.LBB130:
.LBB131:
	.loc 1 136 0
	call	IfxAsclin_getFaFrequency
.LVL89:
	ld.w	%d3, [%a15] 20
.LBE131:
.LBE130:
	.loc 1 246 0
	add	%d5, %d15, 1
.LBB134:
.LBB132:
	.loc 1 136 0
	insert	%d3, %d3, 0, 12, 20
.LBE132:
.LBE134:
.LBB135:
.LBB136:
	.file 3 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h"
	.loc 3 150 0
	mov	%d15, 4
.LBE136:
.LBE135:
.LBB138:
.LBB133:
	.loc 1 136 0
	add	%d3, 1
	itof	%d3, %d3
	div.f	%d3, %d2, %d3
	mov.a	%a12, %d3
.LVL90:
.LBE133:
.LBE138:
.LBB139:
.LBB137:
	.loc 3 150 0
#APP
	# 150 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d15, %d5, %d15
	# 0 "" 2
.LVL91:
#NO_APP
.LBE137:
.LBE139:
	.loc 1 246 0
	and	%d2, %d15, 255
	st.w	[%SP]0, %d2
.LVL92:
.LBB140:
.LBB141:
	.loc 3 150 0
	mov	%d9, 1
#APP
	# 150 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/IfxCpu_IntrinsicsGnuc.h" 1
	max.u %d2, %d10, %d9
	# 0 "" 2
.LVL93:
#NO_APP
	and	%d13, %d15, 255
.LBE141:
.LBE140:
	.loc 1 248 0
	itof	%d13, %d13
	.loc 1 247 0
	and	%d2, %d2, 255
.LVL94:
	.loc 1 248 0
	mul.f	%d13, %d13, %d8
	.loc 1 247 0
	st.w	[%SP] 4, %d2
.LVL95:
	.loc 1 250 0
	mov	%d4, %d13
	call	__extendsfdf2
.LVL96:
	movh	%d7, 16208
	mov	%e4, %d3, %d2
	movh	%d6, 54002
	addi	%d7, %d7, 25165
	addi	%d6, %d6, -22020
	call	__muldf3
.LVL97:
	mov	%e4, %d3, %d2
	.loc 1 263 0
	mov	%d14, 0
	.loc 1 250 0
	call	__truncdfsf2
.LVL98:
	.loc 1 256 0
	mov.d	%d5, %a12
	.loc 1 270 0
	mov	%d0, 1
	.loc 1 256 0
	div.f	%d4, %d5, %d13
	ftouz	%d4, %d4
	.loc 1 262 0
	utof	%d3, %d4
	.loc 1 256 0
	mov.a	%a2, %d4
.LVL99:
	.loc 1 262 0
	div.f	%d3, %d5, %d3
.LVL100:
	.loc 1 259 0
	mov.d	%d8, %a2
.LVL101:
	.loc 1 263 0
	sub.f	%d3, %d13, %d3
.LVL102:
	cmp.f	%d15, %d3, %d14
.LVL103:
	extr.u	%d15, %d15, 0, 1
	addih	%d4, %d3, 0x8000
.LVL104:
	cmov	%d3, %d15, %d4
.LVL105:
	.loc 1 270 0
	cmp.f	%d15, %d3, %d2
	or.t	%d15, %d15,0, %d15,1
	jnz	%d15, .L77
	mov.d	%d15, %a2
	mov	%d4, 4096
	sh	%d15, 1
	jge.u	%d15, %d4, .L77
	mul	%d4, %d8, 3
	mov.a	%a5, %d15
	mov	%d1, 0
	mov.a	%a3, %d4
	mov	%d11, 2
	sub.a	%a4, %a5, %a3
	lea	%a5, 4096
.LVL106:
.L89:
	add.a	%a6, %a3, %a4
	mov.d	%d7, %a6
.LVL107:
	.loc 1 272 0
	jeq	%d11, 2, .L95
	.loc 1 279 0
	mul	%d12, %d1, %d11
	div.u	%e4, %d12, %d0
	.loc 1 280 0
	addi	%d12, %d4, 1
	.loc 1 279 0
	mov	%d6, %d4
.LVL108:
	.loc 1 283 0
	jlt.u	%d12, %d4, .L79
.LVL109:
.L78:
	utof	%d4, %d11
	mov.d	%d5, %a12
	mul.f	%d4, %d5, %d4
.LVL110:
.L84:
	add	%d9, %d7, %d6
.LVL111:
	.loc 1 285 0
	utof	%d15, %d9
	div.f	%d15, %d4, %d15
.LVL112:
	.loc 1 286 0
	sub.f	%d15, %d13, %d15
.LVL113:
	cmp.f	%d5, %d15, %d14
	extr.u	%d5, %d5, 0, 1
	addih	%d10, %d15, 0x8000
	sel	%d15, %d5, %d10, %d15
.LVL114:
	.loc 1 288 0
	cmp.f	%d5, %d15, %d3
	extr.u	%d5, %d5, 0, 1
	seln	%d1, %d5, %d1, %d6
.LVL115:
	.loc 1 283 0
	add	%d6, 1
.LVL116:
	.loc 1 288 0
	seln	%d3, %d5, %d3, %d15
.LVL117:
	seln	%d0, %d5, %d0, %d11
.LVL118:
	seln	%d8, %d5, %d8, %d9
.LVL119:
	.loc 1 283 0
	jge.u	%d12, %d6, .L84
.LVL120:
.L79:
	.loc 1 297 0
	cmp.f	%d15, %d2, %d3
	or.t	%d15, %d15,2, %d15,1
	jnz	%d15, .L108
	.loc 1 270 0
	mov.d	%d4, %a3
	mov.d	%d5, %a5
	add.a	%a6, %a3, %a2
	add	%d11, 1
.LVL121:
	mov.d	%d15, %a6
	jge.u	%d4, %d5, .L108
	mov.a	%a3, %d15
	j	.L89
.LVL122:
.L95:
	.loc 1 275 0
	mov	%d12, 1
	.loc 1 274 0
	mov	%d6, 1
	j	.L78
.LVL123:
.L108:
	insert	%d0, %d0, 0, 12, 20
.LVL124:
.L77:
.LBB142:
.LBB143:
	.loc 1 324 0
	ld.w	%d4, [%a15] 76
	andn	%d4, %d4, ~(-32)
	st.w	[%a15] 76, %d4
.LVL125:
.L85:
.LBB144:
.LBB145:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE145:
.LBE144:
	.loc 1 329 0
	jltz	%d15, .L85
.LBE143:
.LBE142:
	.loc 1 304 0
	ld.w	%d2, [%a15] 32
.LVL126:
	.loc 1 305 0
	sh	%d0, %d0, 16
	.loc 1 304 0
	insert	%d8, %d2, %d8, 0, 12
.LVL127:
	.loc 1 308 0
	ld.w	%d15, [%SP]0
	.loc 1 304 0
	st.w	[%a15] 32, %d8
	.loc 1 305 0
	ld.w	%d4, [%a15] 32
	.loc 1 308 0
	add	%d15, -1
	.loc 1 305 0
	insert	%d4, %d4, 0, 16, 12
	or	%d0, %d4
	st.w	[%a15] 32, %d0
	.loc 1 308 0
	ld.w	%d3, [%a15] 20
.LVL128:
.LBB146:
.LBB147:
	.loc 1 324 0
	mov.d	%d4, %a13
.LBE147:
.LBE146:
	.loc 1 308 0
	insert	%d3, %d3, %d15, 16, 4
	.loc 1 311 0
	ld.w	%d15, [%SP] 4
	.loc 1 308 0
	st.w	[%a15] 20, %d3
	.loc 1 311 0
	ld.w	%d2, [%a15] 20
	insert	%d2, %d2, %d15, 24, 4
	.loc 1 314 0
	movh	%d15, 32768
	.loc 1 311 0
	st.w	[%a15] 20, %d2
	.loc 1 314 0
	mov.d	%d2, %a14
	sel	%d7, %d2, %d15, 0
	ld.w	%d15, [%a15] 20
	insert	%d15, %d15, 0, 31, 1
	or	%d15, %d7
	st.w	[%a15] 20, %d15
.LVL129:
.LBB156:
.LBB154:
	.loc 1 324 0
	ld.w	%d15, [%a15] 76
	andn	%d15, %d15, ~(-32)
	or	%d15, %d4
	st.w	[%a15] 76, %d15
	.loc 1 327 0
	jnz.a	%a13, .L105
.L87:
.LVL130:
.LBB148:
.LBB149:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE149:
.LBE148:
	.loc 1 329 0
	jltz	%d15, .L87
.LVL131:
.L107:
.LBE154:
.LBE156:
	.loc 1 319 0
	mov	%d2, 1
	ret
.L105:
.LVL132:
.LBB157:
.LBB155:
.LBB150:
.LBB151:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE151:
.LBE150:
	.loc 1 334 0
	jltz	%d15, .L107
.LBB153:
.LBB152:
	.loc 2 1920 0
	ld.w	%d15, [%a15] 76
.LBE152:
.LBE153:
	.loc 1 334 0
	jgez	%d15, .L105
	j	.L107
.LBE155:
.LBE157:
.LFE379:
	.size	IfxAsclin_setBitTiming, .-IfxAsclin_setBitTiming
.section .text.IfxAsclin_setClockSource,"ax",@progbits
	.align 1
	.global	IfxAsclin_setClockSource
	.type	IfxAsclin_setClockSource, @function
IfxAsclin_setClockSource:
.LFB380:
	.loc 1 323 0
.LVL133:
	.loc 1 324 0
	ld.w	%d15, [%a4] 76
	insert	%d15, %d15, %d4, 0, 5
	st.w	[%a4] 76, %d15
	.loc 1 327 0
	jnz	%d4, .L117
.L113:
.LVL134:
.LBB158:
.LBB159:
	.loc 2 1920 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE159:
.LBE158:
	.loc 1 329 0 discriminator 1
	jltz	%d15, .L113
	ret
.LVL135:
.L117:
.LBB160:
.LBB161:
	.loc 2 1920 0 discriminator 1
	ld.w	%d15, [%a4] 76
.LBE161:
.LBE160:
	.loc 1 334 0 discriminator 1
	jgez	%d15, .L117
	ret
.LFE380:
	.size	IfxAsclin_setClockSource, .-IfxAsclin_setClockSource
.section .text.IfxAsclin_write16,"ax",@progbits
	.align 1
	.global	IfxAsclin_write16
	.type	IfxAsclin_write16, @function
IfxAsclin_write16:
.LFB381:
	.loc 1 341 0
.LVL136:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 344 0
	jz	%d4, .L125
.LVL137:
.L123:
	.loc 1 346 0
	ld.hu	%d15, [%a5]0
	add.a	%a5, 2
.LVL138:
	st.w	[%a4] 68, %d15
.LVL139:
	loop	%a15, .L123
.L125:
	.loc 1 351 0
	mov	%d2, 0
	ret
.LFE381:
	.size	IfxAsclin_write16, .-IfxAsclin_write16
.section .text.IfxAsclin_write32,"ax",@progbits
	.align 1
	.global	IfxAsclin_write32
	.type	IfxAsclin_write32, @function
IfxAsclin_write32:
.LFB382:
	.loc 1 355 0
.LVL140:
	mov.a	%a15, %d4
	add.a	%a15, -1
	.loc 1 358 0
	jz	%d4, .L132
.LVL141:
.L130:
	.loc 1 360 0
	ld.w	%d15, [%a5]0
	add.a	%a5, 4
.LVL142:
	st.w	[%a4] 68, %d15
.LVL143:
	loop	%a15, .L130
.L132:
	.loc 1 365 0
	mov	%d2, 0
	ret
.LFE382:
	.size	IfxAsclin_write32, .-IfxAsclin_write32
.section .text.IfxAsclin_write8,"ax",@progbits
	.align 1
	.global	IfxAsclin_write8
	.type	IfxAsclin_write8, @function
IfxAsclin_write8:
.LFB383:
	.loc 1 369 0
.LVL144:
	mov.d	%d15, %a5
	addsc.a	%a15, %a5, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 372 0
	jz	%d4, .L139
.LVL145:
.L137:
	.loc 1 374 0
	ld.bu	%d15, [%a5]0
	add.a	%a5, 1
.LVL146:
	st.w	[%a4] 68, %d15
.LVL147:
	loop	%a15, .L137
.L139:
	.loc 1 379 0
	mov	%d2, 0
	ret
.LFE383:
	.size	IfxAsclin_write8, .-IfxAsclin_write8
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
	.uaword	.LFB362
	.uaword	.LFE362-.LFB362
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB363
	.uaword	.LFE363-.LFB363
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB364
	.uaword	.LFE364-.LFB364
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB365
	.uaword	.LFE365-.LFB365
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB366
	.uaword	.LFE366-.LFB366
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB367
	.uaword	.LFE367-.LFB367
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB368
	.uaword	.LFE368-.LFB368
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB369
	.uaword	.LFE369-.LFB369
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB372
	.uaword	.LFE372-.LFB372
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB373
	.uaword	.LFE373-.LFB373
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB374
	.uaword	.LFE374-.LFB374
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB375
	.uaword	.LFE375-.LFB375
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB376
	.uaword	.LFE376-.LFB376
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.byte	0x4
	.uaword	.LCFI0-.LFB379
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB381
	.uaword	.LFE381-.LFB381
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB382
	.uaword	.LFE382-.LFB382
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.align 2
.LEFDE42:
.section .text,"ax",@progbits
.Letext0:
	.file 4 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Platform_Types.h"
	.file 5 "0_Src/BaseSw/iLLD/TC23A/Tricore/Cpu/Std/Ifx_Types.h"
	.file 6 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxAsclin_regdef.h"
	.file 7 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxAsclin_cfg.h"
	.file 8 "0_Src/BaseSw/Infra/Sfr/TC23A/_Reg/IfxSrc_regdef.h"
	.file 9 "0_Src/BaseSw/iLLD/TC23A/Tricore/_Impl/IfxCpu_cfg.h"
	.file 10 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuWdt.h"
	.file 11 "0_Src/BaseSw/iLLD/TC23A/Tricore/Scu/Std/IfxScuCcu.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x51d7
	.uahalf	0x3
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.string	"GNU C 4.9.4 build on 2019-06-07 -mlicense-dir=c:\\hightec\\toolchains\\tricore\\v4.9.3.0-infineon-1.0\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mtc161 -g -O2 -std=c99 -fno-common -fstrict-volatile-bitfields -ffunction-sections -fdata-sections"
	.byte	0x1
	.string	"0_Src/BaseSw/iLLD/TC23A/Tricore/Asclin/Std/IfxAsclin.c"
	.string	"C:\\\\Google drive\\\\RH_Workspace\\\\_AccumuatorManager_TC237"
	.uaword	.Ldebug_ranges0+0x160
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.uaword	0x1e2
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
	.uaword	0x20e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x4
	.byte	0x5c
	.uaword	0x19e
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1aa
	.uleb128 0x3
	.string	"float32"
	.byte	0x4
	.byte	0x5e
	.uaword	0x185
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x68
	.uaword	0x1e2
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
	.uaword	0x2a1
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.byte	0x77
	.uaword	0x2c8
	.uleb128 0x7
	.string	"module"
	.byte	0x5
	.byte	0x79
	.uaword	0x29b
	.byte	0
	.uleb128 0x7
	.string	"index"
	.byte	0x5
	.byte	0x7a
	.uaword	0x224
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x7b
	.uaword	0x2a2
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x2d
	.uaword	0x4f9
	.uleb128 0x9
	.string	"EN0"
	.byte	0x6
	.byte	0x2f
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"EN1"
	.byte	0x6
	.byte	0x30
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"EN2"
	.byte	0x6
	.byte	0x31
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EN3"
	.byte	0x6
	.byte	0x32
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0x9
	.string	"EN4"
	.byte	0x6
	.byte	0x33
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"EN5"
	.byte	0x6
	.byte	0x34
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"EN6"
	.byte	0x6
	.byte	0x35
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0x9
	.string	"EN7"
	.byte	0x6
	.byte	0x36
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"EN8"
	.byte	0x6
	.byte	0x37
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0
	.uleb128 0x9
	.string	"EN9"
	.byte	0x6
	.byte	0x38
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"EN10"
	.byte	0x6
	.byte	0x39
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"EN11"
	.byte	0x6
	.byte	0x3a
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.string	"EN12"
	.byte	0x6
	.byte	0x3b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"EN13"
	.byte	0x6
	.byte	0x3c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"EN14"
	.byte	0x6
	.byte	0x3d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"EN15"
	.byte	0x6
	.byte	0x3e
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"EN16"
	.byte	0x6
	.byte	0x3f
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"EN17"
	.byte	0x6
	.byte	0x40
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"EN18"
	.byte	0x6
	.byte	0x41
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"EN19"
	.byte	0x6
	.byte	0x42
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"EN20"
	.byte	0x6
	.byte	0x43
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"EN21"
	.byte	0x6
	.byte	0x44
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"EN22"
	.byte	0x6
	.byte	0x45
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"EN23"
	.byte	0x6
	.byte	0x46
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"EN24"
	.byte	0x6
	.byte	0x47
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"EN25"
	.byte	0x6
	.byte	0x48
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"EN26"
	.byte	0x6
	.byte	0x49
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"EN27"
	.byte	0x6
	.byte	0x4a
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"EN28"
	.byte	0x6
	.byte	0x4b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"EN29"
	.byte	0x6
	.byte	0x4c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"EN30"
	.byte	0x6
	.byte	0x4d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"EN31"
	.byte	0x6
	.byte	0x4e
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN0_Bits"
	.byte	0x6
	.byte	0x4f
	.uaword	0x2e2
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x52
	.uaword	0x547
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x6
	.byte	0x54
	.uaword	0x18e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_ACCEN1_Bits"
	.byte	0x6
	.byte	0x55
	.uaword	0x517
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BITCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x58
	.uaword	0x60d
	.uleb128 0x9
	.string	"PRESCALER"
	.byte	0x6
	.byte	0x5a
	.uaword	0x18e
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0x5b
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"OVERSAMPLING"
	.byte	0x6
	.byte	0x5c
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"reserved_20"
	.byte	0x6
	.byte	0x5d
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"SAMPLEPOINT"
	.byte	0x6
	.byte	0x5e
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x5f
	.uaword	0x18e
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"SM"
	.byte	0x6
	.byte	0x60
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BITCON_Bits"
	.byte	0x6
	.byte	0x61
	.uaword	0x565
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BRD_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x64
	.uaword	0x698
	.uleb128 0x9
	.string	"LOWERLIMIT"
	.byte	0x6
	.byte	0x66
	.uaword	0x18e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0x9
	.string	"UPPERLIMIT"
	.byte	0x6
	.byte	0x67
	.uaword	0x18e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"MEASURED"
	.byte	0x6
	.byte	0x68
	.uaword	0x18e
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x69
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRD_Bits"
	.byte	0x6
	.byte	0x6a
	.uaword	0x62b
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_BRG_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6d
	.uaword	0x71b
	.uleb128 0x9
	.string	"DENOMINATOR"
	.byte	0x6
	.byte	0x6f
	.uaword	0x18e
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x6
	.byte	0x70
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"NUMERATOR"
	.byte	0x6
	.byte	0x71
	.uaword	0x18e
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x6
	.byte	0x72
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_BRG_Bits"
	.byte	0x6
	.byte	0x73
	.uaword	0x6b3
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x76
	.uaword	0x7a2
	.uleb128 0x9
	.string	"DISR"
	.byte	0x6
	.byte	0x78
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"DISS"
	.byte	0x6
	.byte	0x79
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xa
	.uaword	.LASF3
	.byte	0x6
	.byte	0x7a
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"EDIS"
	.byte	0x6
	.byte	0x7b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x7c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CLC_Bits"
	.byte	0x6
	.byte	0x7d
	.uaword	0x736
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_CSR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x80
	.uaword	0x812
	.uleb128 0x9
	.string	"CLKSEL"
	.byte	0x6
	.byte	0x82
	.uaword	0x18e
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"reserved_5"
	.byte	0x6
	.byte	0x83
	.uaword	0x18e
	.byte	0x4
	.byte	0x1a
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"CON"
	.byte	0x6
	.byte	0x84
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_CSR_Bits"
	.byte	0x6
	.byte	0x85
	.uaword	0x7bd
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_DATCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x88
	.uaword	0x8bd
	.uleb128 0x9
	.string	"DATLEN"
	.byte	0x6
	.byte	0x8a
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x8b
	.uaword	0x18e
	.byte	0x4
	.byte	0x9
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"HO"
	.byte	0x6
	.byte	0x8c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"RM"
	.byte	0x6
	.byte	0x8d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"CSM"
	.byte	0x6
	.byte	0x8e
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"RESPONSE"
	.byte	0x6
	.byte	0x8f
	.uaword	0x18e
	.byte	0x4
	.byte	0x8
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.uaword	.LASF5
	.byte	0x6
	.byte	0x90
	.uaword	0x18e
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_DATCON_Bits"
	.byte	0x6
	.byte	0x91
	.uaword	0x82d
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x94
	.uaword	0xa85
	.uleb128 0x9
	.string	"TH"
	.byte	0x6
	.byte	0x96
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TR"
	.byte	0x6
	.byte	0x97
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RH"
	.byte	0x6
	.byte	0x98
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RR"
	.byte	0x6
	.byte	0x99
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0x9a
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FED"
	.byte	0x6
	.byte	0x9b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"RED"
	.byte	0x6
	.byte	0x9c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0x9d
	.uaword	0x18e
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQ"
	.byte	0x6
	.byte	0x9e
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQ"
	.byte	0x6
	.byte	0x9f
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQ"
	.byte	0x6
	.byte	0xa0
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PE"
	.byte	0x6
	.byte	0xa1
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TC"
	.byte	0x6
	.byte	0xa2
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FE"
	.byte	0x6
	.byte	0xa3
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HT"
	.byte	0x6
	.byte	0xa4
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RT"
	.byte	0x6
	.byte	0xa5
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BD"
	.byte	0x6
	.byte	0xa6
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LP"
	.byte	0x6
	.byte	0xa7
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"LA"
	.byte	0x6
	.byte	0xa8
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LC"
	.byte	0x6
	.byte	0xa9
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CE"
	.byte	0x6
	.byte	0xaa
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFO"
	.byte	0x6
	.byte	0xab
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFU"
	.byte	0x6
	.byte	0xac
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFL"
	.byte	0x6
	.byte	0xad
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xae
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFO"
	.byte	0x6
	.byte	0xaf
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFL"
	.byte	0x6
	.byte	0xb0
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGS_Bits"
	.byte	0x6
	.byte	0xb1
	.uaword	0x8db
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb4
	.uaword	0xc69
	.uleb128 0x9
	.string	"THC"
	.byte	0x6
	.byte	0xb6
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRC"
	.byte	0x6
	.byte	0xb7
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHC"
	.byte	0x6
	.byte	0xb8
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRC"
	.byte	0x6
	.byte	0xb9
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xba
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDC"
	.byte	0x6
	.byte	0xbb
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDC"
	.byte	0x6
	.byte	0xbc
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xbd
	.uaword	0x18e
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQC"
	.byte	0x6
	.byte	0xbe
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQC"
	.byte	0x6
	.byte	0xbf
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQC"
	.byte	0x6
	.byte	0xc0
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PEC"
	.byte	0x6
	.byte	0xc1
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCC"
	.byte	0x6
	.byte	0xc2
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FEC"
	.byte	0x6
	.byte	0xc3
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HTC"
	.byte	0x6
	.byte	0xc4
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RTC"
	.byte	0x6
	.byte	0xc5
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BDC"
	.byte	0x6
	.byte	0xc6
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LPC"
	.byte	0x6
	.byte	0xc7
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"LAC"
	.byte	0x6
	.byte	0xc8
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LCC"
	.byte	0x6
	.byte	0xc9
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CEC"
	.byte	0x6
	.byte	0xca
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFOC"
	.byte	0x6
	.byte	0xcb
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFUC"
	.byte	0x6
	.byte	0xcc
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFLC"
	.byte	0x6
	.byte	0xcd
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xce
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFOC"
	.byte	0x6
	.byte	0xcf
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFLC"
	.byte	0x6
	.byte	0xd0
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSCLEAR_Bits"
	.byte	0x6
	.byte	0xd1
	.uaword	0xaa2
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd4
	.uaword	0xe20
	.uleb128 0x9
	.string	"THE"
	.byte	0x6
	.byte	0xd6
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRE"
	.byte	0x6
	.byte	0xd7
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHE"
	.byte	0x6
	.byte	0xd8
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRE"
	.byte	0x6
	.byte	0xd9
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xda
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDE"
	.byte	0x6
	.byte	0xdb
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDE"
	.byte	0x6
	.byte	0xdc
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xdd
	.uaword	0x18e
	.byte	0x4
	.byte	0x9
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PEE"
	.byte	0x6
	.byte	0xde
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCE"
	.byte	0x6
	.byte	0xdf
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.string	"FEE"
	.byte	0x6
	.byte	0xe0
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0x9
	.string	"HTE"
	.byte	0x6
	.byte	0xe1
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.string	"RTE"
	.byte	0x6
	.byte	0xe2
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.string	"BDE"
	.byte	0x6
	.byte	0xe3
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.string	"LPE"
	.byte	0x6
	.byte	0xe4
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0x9
	.string	"ABE"
	.byte	0x6
	.byte	0xe5
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"LCE"
	.byte	0x6
	.byte	0xe6
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CEE"
	.byte	0x6
	.byte	0xe7
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"RFOE"
	.byte	0x6
	.byte	0xe8
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"RFUE"
	.byte	0x6
	.byte	0xe9
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"RFLE"
	.byte	0x6
	.byte	0xea
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xa
	.uaword	.LASF7
	.byte	0x6
	.byte	0xeb
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"TFOE"
	.byte	0x6
	.byte	0xec
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"TFLE"
	.byte	0x6
	.byte	0xed
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_ASCLIN_FLAGSENABLE_Bits"
	.byte	0x6
	.byte	0xee
	.uaword	0xc8b
	.uleb128 0x8
	.string	"_Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf1
	.uaword	0x1016
	.uleb128 0x9
	.string	"THS"
	.byte	0x6
	.byte	0xf3
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0x9
	.string	"TRS"
	.byte	0x6
	.byte	0xf4
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0x9
	.string	"RHS"
	.byte	0x6
	.byte	0xf5
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.string	"RRS"
	.byte	0x6
	.byte	0xf6
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.uaword	.LASF4
	.byte	0x6
	.byte	0xf7
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0
	.uleb128 0x9
	.string	"FEDS"
	.byte	0x6
	.byte	0xf8
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0
	.uleb128 0x9
	.string	"REDS"
	.byte	0x6
	.byte	0xf9
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0
	.uleb128 0xa
	.uaword	.LASF6
	.byte	0x6
	.byte	0xfa
	.uaword	0x18e
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0
	.uleb128 0x9
	.string	"TWRQS"
	.byte	0x6
	.byte	0xfb
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0
	.uleb128 0x9
	.string	"THRQS"
	.byte	0x6
	.byte	0xfc
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.string	"TRRQS"
	.byte	0x6
	.byte	0xfd
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"PES"
	.byte	0x6
	.byte	0xfe
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0
	.uleb128 0x9
	.string	"TCS"
	.byte	0x6
	.byte	0xff
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.uleb128 0xb
	.string	"FES"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0
	.uleb128 0xb
	.string	"HTS"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.string	"RTS"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.uleb128 0xb
	.string	"BDS"
	.byte	0x6
	.uahalf	0x103
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0
	.uleb128 0xb
	.string	"LPS"
	.byte	0x6
	.uahalf	0x104
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"LAS"
	.byte	0x6
	.uahalf	0x105
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"LCS"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CES"
	.byte	0x6
	.uahalf	0x107
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"RFOS"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"RFUS"
	.byte	0x6
	.uahalf	0x109
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"RFLS"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"TFOS"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"TFLS"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSSET_Bits"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0xe43
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x111
	.uaword	0x1117
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x113
	.uaword	0x18e
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"IDLE"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x18e
	.byte	0x4
	.byte	0x3
	.byte	0x17
	.byte	0
	.uleb128 0xb
	.string	"STOP"
	.byte	0x6
	.uahalf	0x115
	.uaword	0x18e
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0
	.uleb128 0xb
	.string	"LEAD"
	.byte	0x6
	.uahalf	0x116
	.uaword	0x18e
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0
	.uleb128 0xb
	.string	"reserved_15"
	.byte	0x6
	.uahalf	0x117
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODE"
	.byte	0x6
	.uahalf	0x118
	.uaword	0x18e
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x119
	.uaword	0x18e
	.byte	0x4
	.byte	0xa
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"MSB"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"CEN"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"PEN"
	.byte	0x6
	.uahalf	0x11c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"ODD"
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FRAMECON_Bits"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1037
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_ID_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x121
	.uaword	0x1193
	.uleb128 0xb
	.string	"MODREV"
	.byte	0x6
	.uahalf	0x123
	.uaword	0x18e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xb
	.string	"MODTYPE"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x18e
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"MODNUMBER"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x18e
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ID_Bits"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1138
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_IOCR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x129
	.uaword	0x12ad
	.uleb128 0xb
	.string	"ALTI"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0x18e
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0
	.uleb128 0xb
	.string	"reserved_3"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.string	"DEPTH"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x18e
	.byte	0x4
	.byte	0x6
	.byte	0x16
	.byte	0
	.uleb128 0xc
	.uaword	.LASF9
	.byte	0x6
	.uahalf	0x12e
	.uaword	0x18e
	.byte	0x4
	.byte	0x6
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"CTS"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x18e
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0
	.uleb128 0xc
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x130
	.uaword	0x18e
	.byte	0x4
	.byte	0x7
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"RCPOL"
	.byte	0x6
	.uahalf	0x131
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"CPOL"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"SPOL"
	.byte	0x6
	.uahalf	0x133
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"LB"
	.byte	0x6
	.uahalf	0x134
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"CTSEN"
	.byte	0x6
	.uahalf	0x135
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"RXM"
	.byte	0x6
	.uahalf	0x136
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"TXM"
	.byte	0x6
	.uahalf	0x137
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_IOCR_Bits"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x11ae
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x131f
	.uleb128 0xb
	.string	"RST"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"RSTSTAT"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x18e
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST0_Bits"
	.byte	0x6
	.uahalf	0x140
	.uaword	0x12ca
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x143
	.uaword	0x137e
	.uleb128 0xb
	.string	"RST"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x146
	.uaword	0x18e
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST1_Bits"
	.byte	0x6
	.uahalf	0x147
	.uaword	0x133d
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x13df
	.uleb128 0xb
	.string	"CLR"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xc
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x14d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRSTCLR_Bits"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0x139c
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x151
	.uaword	0x144e
	.uleb128 0xb
	.string	"BREAK"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x18e
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"reserved_6"
	.byte	0x6
	.uahalf	0x154
	.uaword	0x18e
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_BTIMER_Bits"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x13ff
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1504
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x18e
	.byte	0x4
	.byte	0x17
	.byte	0x9
	.byte	0
	.uleb128 0xb
	.string	"CSI"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0
	.uleb128 0xc
	.uaword	.LASF5
	.byte	0x6
	.uahalf	0x15c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0xb
	.string	"CSEN"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0xb
	.string	"MS"
	.byte	0x6
	.uahalf	0x15e
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0xb
	.string	"ABD"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x160
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_CON_Bits"
	.byte	0x6
	.uahalf	0x161
	.uaword	0x1471
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x164
	.uaword	0x156d
	.uleb128 0xb
	.string	"HEADER"
	.byte	0x6
	.uahalf	0x166
	.uaword	0x18e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x167
	.uaword	0x18e
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_HTIMER_Bits"
	.byte	0x6
	.uahalf	0x168
	.uaword	0x1524
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_OCS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x16b
	.uaword	0x160c
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x16d
	.uaword	0x18e
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.string	"SUS"
	.byte	0x6
	.uahalf	0x16e
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.string	"SUS_P"
	.byte	0x6
	.uahalf	0x16f
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0xb
	.string	"SUSSTA"
	.byte	0x6
	.uahalf	0x170
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.string	"reserved_30"
	.byte	0x6
	.uahalf	0x171
	.uaword	0x18e
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_OCS_Bits"
	.byte	0x6
	.uahalf	0x172
	.uaword	0x1590
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x175
	.uaword	0x165b
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x18e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATA_Bits"
	.byte	0x6
	.uahalf	0x178
	.uaword	0x1628
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x17b
	.uaword	0x16ae
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x18e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATAD_Bits"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0x167a
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x181
	.uaword	0x1787
	.uleb128 0xb
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x183
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ENI"
	.byte	0x6
	.uahalf	0x184
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x185
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"OUTW"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x18e
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x187
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x188
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FILL"
	.byte	0x6
	.uahalf	0x189
	.uaword	0x18e
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x18e
	.byte	0x4
	.byte	0xa
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.string	"BUF"
	.byte	0x6
	.uahalf	0x18b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0x16ce
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x17dc
	.uleb128 0xb
	.string	"DATA"
	.byte	0x6
	.uahalf	0x191
	.uaword	0x18e
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXDATA_Bits"
	.byte	0x6
	.uahalf	0x192
	.uaword	0x17a9
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x195
	.uaword	0x18a3
	.uleb128 0xb
	.string	"FLUSH"
	.byte	0x6
	.uahalf	0x197
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.string	"ENO"
	.byte	0x6
	.uahalf	0x198
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x6
	.uahalf	0x199
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0
	.uleb128 0xb
	.string	"INW"
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x18e
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0
	.uleb128 0xc
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x19b
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x19c
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0xb
	.string	"FILL"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0x18e
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x18e
	.byte	0x4
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXFIFOCON_Bits"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x17fb
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x18ed
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1a9
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1ab
	.uaword	0x4f9
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ACCEN0"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0x18c5
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x192f
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1b1
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1b3
	.uaword	0x547
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ACCEN1"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0x1907
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x1971
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1b9
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1bb
	.uaword	0x60d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BITCON"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0x1949
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x19b3
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1c1
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1c3
	.uaword	0x698
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BRD"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0x198b
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x19f2
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1c9
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1cb
	.uaword	0x71b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_BRG"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0x19ca
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x1a31
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1d1
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1d3
	.uaword	0x7a2
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_CLC"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1a09
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x1a70
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1d9
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1db
	.uaword	0x812
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_CSR"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0x1a48
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x1aaf
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1e1
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1e3
	.uaword	0x8bd
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_DATCON"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0x1a87
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x1af1
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1e9
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1eb
	.uaword	0xa85
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGS"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0x1ac9
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x1b32
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1f1
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1f3
	.uaword	0xc69
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0x1b0a
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x1b78
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x1f9
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x1fb
	.uaword	0xe20
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSENABLE"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0x1b50
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x1bbf
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x201
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x202
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x203
	.uaword	0x1016
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FLAGSSET"
	.byte	0x6
	.uahalf	0x204
	.uaword	0x1b97
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x207
	.uaword	0x1c03
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x209
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x20b
	.uaword	0x1117
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_FRAMECON"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0x1bdb
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x1c47
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x211
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x212
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x213
	.uaword	0x1193
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_ID"
	.byte	0x6
	.uahalf	0x214
	.uaword	0x1c1f
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x217
	.uaword	0x1c85
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x219
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x21a
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x21b
	.uaword	0x12ad
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_IOCR"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0x1c5d
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x1cc5
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x221
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x222
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x223
	.uaword	0x131f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST0"
	.byte	0x6
	.uahalf	0x224
	.uaword	0x1c9d
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x227
	.uaword	0x1d06
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x229
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x22b
	.uaword	0x137e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRST1"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0x1cde
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x1d47
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x231
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x232
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x233
	.uaword	0x13df
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_KRSTCLR"
	.byte	0x6
	.uahalf	0x234
	.uaword	0x1d1f
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x237
	.uaword	0x1d8a
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x239
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x23a
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x23b
	.uaword	0x144e
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_BTIMER"
	.byte	0x6
	.uahalf	0x23c
	.uaword	0x1d62
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x23f
	.uaword	0x1dd0
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x241
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x242
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x243
	.uaword	0x1504
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_CON"
	.byte	0x6
	.uahalf	0x244
	.uaword	0x1da8
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x247
	.uaword	0x1e13
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x249
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x24a
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x156d
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN_HTIMER"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x1deb
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x24f
	.uaword	0x1e59
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x251
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x252
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x253
	.uaword	0x160c
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_OCS"
	.byte	0x6
	.uahalf	0x254
	.uaword	0x1e31
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x257
	.uaword	0x1e98
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x259
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x25a
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x25b
	.uaword	0x165b
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATA"
	.byte	0x6
	.uahalf	0x25c
	.uaword	0x1e70
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x25f
	.uaword	0x1eda
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x262
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x263
	.uaword	0x16ae
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXDATAD"
	.byte	0x6
	.uahalf	0x264
	.uaword	0x1eb2
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x267
	.uaword	0x1f1d
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x269
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x26a
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x26b
	.uaword	0x1787
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_RXFIFOCON"
	.byte	0x6
	.uahalf	0x26c
	.uaword	0x1ef5
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x26f
	.uaword	0x1f62
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x271
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x272
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x273
	.uaword	0x17dc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXDATA"
	.byte	0x6
	.uahalf	0x274
	.uaword	0x1f3a
	.uleb128 0xf
	.byte	0x4
	.byte	0x6
	.uahalf	0x277
	.uaword	0x1fa4
	.uleb128 0x10
	.string	"U"
	.byte	0x6
	.uahalf	0x279
	.uaword	0x18e
	.uleb128 0x10
	.string	"I"
	.byte	0x6
	.uahalf	0x27a
	.uaword	0x1bf
	.uleb128 0x10
	.string	"B"
	.byte	0x6
	.uahalf	0x27b
	.uaword	0x18a3
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_TXFIFOCON"
	.byte	0x6
	.uahalf	0x27c
	.uaword	0x1f7c
	.uleb128 0xe
	.string	"_Ifx_ASCLIN_LIN"
	.byte	0xc
	.byte	0x6
	.uahalf	0x287
	.uaword	0x2008
	.uleb128 0x11
	.string	"CON"
	.byte	0x6
	.uahalf	0x289
	.uaword	0x1dd0
	.byte	0
	.uleb128 0x11
	.string	"BTIMER"
	.byte	0x6
	.uahalf	0x28a
	.uaword	0x1d8a
	.byte	0x4
	.uleb128 0x11
	.string	"HTIMER"
	.byte	0x6
	.uahalf	0x28b
	.uaword	0x1e13
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.string	"Ifx_ASCLIN_LIN"
	.byte	0x6
	.uahalf	0x28c
	.uaword	0x201f
	.uleb128 0x12
	.uaword	0x1fc1
	.uleb128 0x13
	.string	"_Ifx_ASCLIN"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x299
	.uaword	0x21da
	.uleb128 0x11
	.string	"CLC"
	.byte	0x6
	.uahalf	0x29b
	.uaword	0x1a31
	.byte	0
	.uleb128 0x11
	.string	"IOCR"
	.byte	0x6
	.uahalf	0x29c
	.uaword	0x1c85
	.byte	0x4
	.uleb128 0x11
	.string	"ID"
	.byte	0x6
	.uahalf	0x29d
	.uaword	0x1c47
	.byte	0x8
	.uleb128 0x11
	.string	"TXFIFOCON"
	.byte	0x6
	.uahalf	0x29e
	.uaword	0x1fa4
	.byte	0xc
	.uleb128 0x11
	.string	"RXFIFOCON"
	.byte	0x6
	.uahalf	0x29f
	.uaword	0x1f1d
	.byte	0x10
	.uleb128 0x11
	.string	"BITCON"
	.byte	0x6
	.uahalf	0x2a0
	.uaword	0x1971
	.byte	0x14
	.uleb128 0x11
	.string	"FRAMECON"
	.byte	0x6
	.uahalf	0x2a1
	.uaword	0x1c03
	.byte	0x18
	.uleb128 0x11
	.string	"DATCON"
	.byte	0x6
	.uahalf	0x2a2
	.uaword	0x1aaf
	.byte	0x1c
	.uleb128 0x11
	.string	"BRG"
	.byte	0x6
	.uahalf	0x2a3
	.uaword	0x19f2
	.byte	0x20
	.uleb128 0x11
	.string	"BRD"
	.byte	0x6
	.uahalf	0x2a4
	.uaword	0x19b3
	.byte	0x24
	.uleb128 0x11
	.string	"LIN"
	.byte	0x6
	.uahalf	0x2a5
	.uaword	0x2008
	.byte	0x28
	.uleb128 0x11
	.string	"FLAGS"
	.byte	0x6
	.uahalf	0x2a6
	.uaword	0x1af1
	.byte	0x34
	.uleb128 0x11
	.string	"FLAGSSET"
	.byte	0x6
	.uahalf	0x2a7
	.uaword	0x1bbf
	.byte	0x38
	.uleb128 0x11
	.string	"FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x2a8
	.uaword	0x1b32
	.byte	0x3c
	.uleb128 0x11
	.string	"FLAGSENABLE"
	.byte	0x6
	.uahalf	0x2a9
	.uaword	0x1b78
	.byte	0x40
	.uleb128 0x11
	.string	"TXDATA"
	.byte	0x6
	.uahalf	0x2aa
	.uaword	0x1f62
	.byte	0x44
	.uleb128 0x11
	.string	"RXDATA"
	.byte	0x6
	.uahalf	0x2ab
	.uaword	0x1e98
	.byte	0x48
	.uleb128 0x11
	.string	"CSR"
	.byte	0x6
	.uahalf	0x2ac
	.uaword	0x1a70
	.byte	0x4c
	.uleb128 0x11
	.string	"RXDATAD"
	.byte	0x6
	.uahalf	0x2ad
	.uaword	0x1eda
	.byte	0x50
	.uleb128 0x11
	.string	"reserved_54"
	.byte	0x6
	.uahalf	0x2ae
	.uaword	0x21da
	.byte	0x54
	.uleb128 0x11
	.string	"OCS"
	.byte	0x6
	.uahalf	0x2af
	.uaword	0x1e59
	.byte	0xe8
	.uleb128 0x11
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x2b0
	.uaword	0x1d47
	.byte	0xec
	.uleb128 0x11
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x2b1
	.uaword	0x1d06
	.byte	0xf0
	.uleb128 0x11
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x2b2
	.uaword	0x1cc5
	.byte	0xf4
	.uleb128 0x11
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x2b3
	.uaword	0x192f
	.byte	0xf8
	.uleb128 0x11
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x2b4
	.uaword	0x18ed
	.byte	0xfc
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x21ea
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x93
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xd
	.string	"Ifx_ASCLIN"
	.byte	0x6
	.uahalf	0x2b5
	.uaword	0x2209
	.uleb128 0x12
	.uaword	0x2024
	.uleb128 0x16
	.byte	0x1
	.byte	0x7
	.byte	0x3b
	.uaword	0x2256
	.uleb128 0x17
	.string	"IfxAsclin_Index_none"
	.sleb128 -1
	.uleb128 0x17
	.string	"IfxAsclin_Index_0"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_Index_1"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_Index"
	.byte	0x7
	.byte	0x3f
	.uaword	0x220e
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x227d
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x228d
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x3
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x229d
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x22ad
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x1b
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x22bd
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0xb
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x22cd
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x27
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x22dd
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0xf7
	.byte	0
	.uleb128 0x8
	.string	"_Ifx_SRC_SRCR_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0x23eb
	.uleb128 0x9
	.string	"SRPN"
	.byte	0x8
	.byte	0x2f
	.uaword	0x18e
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.uleb128 0xa
	.uaword	.LASF11
	.byte	0x8
	.byte	0x30
	.uaword	0x18e
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0
	.uleb128 0x9
	.string	"SRE"
	.byte	0x8
	.byte	0x31
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0
	.uleb128 0x9
	.string	"TOS"
	.byte	0x8
	.byte	0x32
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x8
	.byte	0x33
	.uaword	0x18e
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.string	"ECC"
	.byte	0x8
	.byte	0x34
	.uaword	0x18e
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0
	.uleb128 0xa
	.uaword	.LASF13
	.byte	0x8
	.byte	0x35
	.uaword	0x18e
	.byte	0x4
	.byte	0x3
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.string	"SRR"
	.byte	0x8
	.byte	0x36
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.string	"CLRR"
	.byte	0x8
	.byte	0x37
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.uleb128 0x9
	.string	"SETR"
	.byte	0x8
	.byte	0x38
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.string	"IOV"
	.byte	0x8
	.byte	0x39
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.string	"IOVCLR"
	.byte	0x8
	.byte	0x3a
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.string	"SWS"
	.byte	0x8
	.byte	0x3b
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.string	"SWSCLR"
	.byte	0x8
	.byte	0x3c
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.string	"reserved_31"
	.byte	0x8
	.byte	0x3d
	.uaword	0x18e
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR_Bits"
	.byte	0x8
	.byte	0x3e
	.uaword	0x22dd
	.uleb128 0x18
	.byte	0x4
	.byte	0x8
	.byte	0x46
	.uaword	0x2428
	.uleb128 0x19
	.string	"U"
	.byte	0x8
	.byte	0x48
	.uaword	0x18e
	.uleb128 0x19
	.string	"I"
	.byte	0x8
	.byte	0x49
	.uaword	0x1bf
	.uleb128 0x19
	.string	"B"
	.byte	0x8
	.byte	0x4a
	.uaword	0x23eb
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SRCR"
	.byte	0x8
	.byte	0x4b
	.uaword	0x2404
	.uleb128 0x8
	.string	"_Ifx_SRC_ASCLIN"
	.byte	0xc
	.byte	0x8
	.byte	0x56
	.uaword	0x2477
	.uleb128 0x7
	.string	"TX"
	.byte	0x8
	.byte	0x58
	.uaword	0x2428
	.byte	0
	.uleb128 0x7
	.string	"RX"
	.byte	0x8
	.byte	0x59
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0x5a
	.uaword	0x2428
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ASCLIN"
	.byte	0x8
	.byte	0x5b
	.uaword	0x248d
	.uleb128 0x12
	.uaword	0x243c
	.uleb128 0x8
	.string	"_Ifx_SRC_BCUSPB"
	.byte	0x4
	.byte	0x8
	.byte	0x5e
	.uaword	0x24b9
	.uleb128 0x7
	.string	"SBSRC"
	.byte	0x8
	.byte	0x60
	.uaword	0x2428
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_BCUSPB"
	.byte	0x8
	.byte	0x61
	.uaword	0x24cf
	.uleb128 0x12
	.uaword	0x2492
	.uleb128 0x8
	.string	"_Ifx_SRC_CAN"
	.byte	0x40
	.byte	0x8
	.byte	0x64
	.uaword	0x24f6
	.uleb128 0x7
	.string	"INT"
	.byte	0x8
	.byte	0x66
	.uaword	0x24f6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2428
	.uaword	0x2506
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0xf
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CAN"
	.byte	0x8
	.byte	0x67
	.uaword	0x2519
	.uleb128 0x12
	.uaword	0x24d4
	.uleb128 0x8
	.string	"_Ifx_SRC_CAN1"
	.byte	0x20
	.byte	0x8
	.byte	0x6a
	.uaword	0x2541
	.uleb128 0x7
	.string	"INT"
	.byte	0x8
	.byte	0x6c
	.uaword	0x2541
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2428
	.uaword	0x2551
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CAN1"
	.byte	0x8
	.byte	0x6d
	.uaword	0x2565
	.uleb128 0x12
	.uaword	0x251e
	.uleb128 0x8
	.string	"_Ifx_SRC_CCU6"
	.byte	0x10
	.byte	0x8
	.byte	0x70
	.uaword	0x25b1
	.uleb128 0x7
	.string	"SR0"
	.byte	0x8
	.byte	0x72
	.uaword	0x2428
	.byte	0
	.uleb128 0x7
	.string	"SR1"
	.byte	0x8
	.byte	0x73
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x7
	.string	"SR2"
	.byte	0x8
	.byte	0x74
	.uaword	0x2428
	.byte	0x8
	.uleb128 0x7
	.string	"SR3"
	.byte	0x8
	.byte	0x75
	.uaword	0x2428
	.byte	0xc
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CCU6"
	.byte	0x8
	.byte	0x76
	.uaword	0x25c5
	.uleb128 0x12
	.uaword	0x256a
	.uleb128 0x8
	.string	"_Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x8
	.byte	0x79
	.uaword	0x25f0
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0x7b
	.uaword	0x25f0
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2428
	.uaword	0x2600
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x1
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CERBERUS"
	.byte	0x8
	.byte	0x7c
	.uaword	0x2618
	.uleb128 0x12
	.uaword	0x25ca
	.uleb128 0x8
	.string	"_Ifx_SRC_CPU"
	.byte	0x20
	.byte	0x8
	.byte	0x7f
	.uaword	0x264d
	.uleb128 0x7
	.string	"SBSRC"
	.byte	0x8
	.byte	0x81
	.uaword	0x2428
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x8
	.byte	0x82
	.uaword	0x229d
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_CPU"
	.byte	0x8
	.byte	0x83
	.uaword	0x2660
	.uleb128 0x12
	.uaword	0x261d
	.uleb128 0x8
	.string	"_Ifx_SRC_DMA"
	.byte	0x50
	.byte	0x8
	.byte	0x86
	.uaword	0x269e
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0x88
	.uaword	0x2428
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x8
	.byte	0x89
	.uaword	0x22ad
	.byte	0x4
	.uleb128 0x7
	.string	"CH"
	.byte	0x8
	.byte	0x8a
	.uaword	0x24f6
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_DMA"
	.byte	0x8
	.byte	0x8b
	.uaword	0x26b1
	.uleb128 0x12
	.uaword	0x2665
	.uleb128 0x8
	.string	"_Ifx_SRC_EMEM"
	.byte	0x4
	.byte	0x8
	.byte	0x8e
	.uaword	0x26d8
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0x90
	.uaword	0x2428
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_EMEM"
	.byte	0x8
	.byte	0x91
	.uaword	0x26ec
	.uleb128 0x12
	.uaword	0x26b6
	.uleb128 0x8
	.string	"_Ifx_SRC_ERAY"
	.byte	0x50
	.byte	0x8
	.byte	0x94
	.uaword	0x2763
	.uleb128 0x7
	.string	"INT"
	.byte	0x8
	.byte	0x96
	.uaword	0x25f0
	.byte	0
	.uleb128 0x7
	.string	"TINT"
	.byte	0x8
	.byte	0x97
	.uaword	0x25f0
	.byte	0x8
	.uleb128 0x7
	.string	"NDAT"
	.byte	0x8
	.byte	0x98
	.uaword	0x25f0
	.byte	0x10
	.uleb128 0x7
	.string	"MBSC"
	.byte	0x8
	.byte	0x99
	.uaword	0x25f0
	.byte	0x18
	.uleb128 0x7
	.string	"OBUSY"
	.byte	0x8
	.byte	0x9a
	.uaword	0x2428
	.byte	0x20
	.uleb128 0x7
	.string	"IBUSY"
	.byte	0x8
	.byte	0x9b
	.uaword	0x2428
	.byte	0x24
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x8
	.byte	0x9c
	.uaword	0x22bd
	.byte	0x28
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ERAY"
	.byte	0x8
	.byte	0x9d
	.uaword	0x2777
	.uleb128 0x12
	.uaword	0x26f1
	.uleb128 0x8
	.string	"_Ifx_SRC_ETH"
	.byte	0x4
	.byte	0x8
	.byte	0xa0
	.uaword	0x279d
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xa2
	.uaword	0x2428
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_ETH"
	.byte	0x8
	.byte	0xa3
	.uaword	0x27b0
	.uleb128 0x12
	.uaword	0x277c
	.uleb128 0x8
	.string	"_Ifx_SRC_EVR"
	.byte	0x8
	.byte	0x8
	.byte	0xa6
	.uaword	0x27e4
	.uleb128 0x7
	.string	"WUT"
	.byte	0x8
	.byte	0xa8
	.uaword	0x2428
	.byte	0
	.uleb128 0x7
	.string	"SCDC"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2428
	.byte	0x4
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_EVR"
	.byte	0x8
	.byte	0xaa
	.uaword	0x27f7
	.uleb128 0x12
	.uaword	0x27b5
	.uleb128 0x8
	.string	"_Ifx_SRC_FFT"
	.byte	0xc
	.byte	0x8
	.byte	0xad
	.uaword	0x2837
	.uleb128 0x7
	.string	"DONE"
	.byte	0x8
	.byte	0xaf
	.uaword	0x2428
	.byte	0
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0xb0
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x7
	.string	"RFS"
	.byte	0x8
	.byte	0xb1
	.uaword	0x2428
	.byte	0x8
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_FFT"
	.byte	0x8
	.byte	0xb2
	.uaword	0x284a
	.uleb128 0x12
	.uaword	0x27fc
	.uleb128 0x1b
	.string	"_Ifx_SRC_GPSR"
	.uahalf	0x600
	.byte	0x8
	.byte	0xb5
	.uaword	0x28a3
	.uleb128 0x7
	.string	"SR0"
	.byte	0x8
	.byte	0xb7
	.uaword	0x2428
	.byte	0
	.uleb128 0x7
	.string	"SR1"
	.byte	0x8
	.byte	0xb8
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x7
	.string	"SR2"
	.byte	0x8
	.byte	0xb9
	.uaword	0x2428
	.byte	0x8
	.uleb128 0x7
	.string	"SR3"
	.byte	0x8
	.byte	0xba
	.uaword	0x2428
	.byte	0xc
	.uleb128 0x1a
	.uaword	.LASF9
	.byte	0x8
	.byte	0xbb
	.uaword	0x28a3
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x28b4
	.uleb128 0x1c
	.uaword	0x21ea
	.uahalf	0x5ef
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPSR"
	.byte	0x8
	.byte	0xbc
	.uaword	0x28c8
	.uleb128 0x12
	.uaword	0x284f
	.uleb128 0x8
	.string	"_Ifx_SRC_GPT12"
	.byte	0x30
	.byte	0x8
	.byte	0xbf
	.uaword	0x2935
	.uleb128 0x7
	.string	"CIRQ"
	.byte	0x8
	.byte	0xc1
	.uaword	0x2428
	.byte	0
	.uleb128 0x7
	.string	"T2"
	.byte	0x8
	.byte	0xc2
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x7
	.string	"T3"
	.byte	0x8
	.byte	0xc3
	.uaword	0x2428
	.byte	0x8
	.uleb128 0x7
	.string	"T4"
	.byte	0x8
	.byte	0xc4
	.uaword	0x2428
	.byte	0xc
	.uleb128 0x7
	.string	"T5"
	.byte	0x8
	.byte	0xc5
	.uaword	0x2428
	.byte	0x10
	.uleb128 0x7
	.string	"T6"
	.byte	0x8
	.byte	0xc6
	.uaword	0x2428
	.byte	0x14
	.uleb128 0x1a
	.uaword	.LASF8
	.byte	0x8
	.byte	0xc7
	.uaword	0x228d
	.byte	0x18
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GPT12"
	.byte	0x8
	.byte	0xc8
	.uaword	0x294a
	.uleb128 0x12
	.uaword	0x28cd
	.uleb128 0x1b
	.string	"_Ifx_SRC_GTM"
	.uahalf	0x5c0
	.byte	0x8
	.byte	0xcb
	.uaword	0x29d4
	.uleb128 0x7
	.string	"AEIIRQ"
	.byte	0x8
	.byte	0xcd
	.uaword	0x2428
	.byte	0
	.uleb128 0x1a
	.uaword	.LASF4
	.byte	0x8
	.byte	0xce
	.uaword	0x29d4
	.byte	0x4
	.uleb128 0x1d
	.string	"ERR"
	.byte	0x8
	.byte	0xcf
	.uaword	0x2428
	.uahalf	0x170
	.uleb128 0x1d
	.string	"reserved_174"
	.byte	0x8
	.byte	0xd0
	.uaword	0x22ad
	.uahalf	0x174
	.uleb128 0x1d
	.string	"TIM"
	.byte	0x8
	.byte	0xd1
	.uaword	0x29e5
	.uahalf	0x180
	.uleb128 0x1d
	.string	"reserved_1A0"
	.byte	0x8
	.byte	0xd2
	.uaword	0x29fb
	.uahalf	0x1a0
	.uleb128 0x1d
	.string	"TOM"
	.byte	0x8
	.byte	0xd3
	.uaword	0x2a0c
	.uahalf	0x580
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x29e5
	.uleb128 0x1c
	.uaword	0x21ea
	.uahalf	0x16b
	.byte	0
	.uleb128 0x14
	.uaword	0x2428
	.uaword	0x29fb
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x7
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x2a0c
	.uleb128 0x1c
	.uaword	0x21ea
	.uahalf	0x3df
	.byte	0
	.uleb128 0x14
	.uaword	0x2428
	.uaword	0x2a22
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x1
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_GTM"
	.byte	0x8
	.byte	0xd4
	.uaword	0x2a35
	.uleb128 0x12
	.uaword	0x294f
	.uleb128 0x8
	.string	"_Ifx_SRC_HSM"
	.byte	0x8
	.byte	0x8
	.byte	0xd7
	.uaword	0x2a5c
	.uleb128 0x7
	.string	"HSM"
	.byte	0x8
	.byte	0xd9
	.uaword	0x25f0
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_HSM"
	.byte	0x8
	.byte	0xda
	.uaword	0x2a6f
	.uleb128 0x12
	.uaword	0x2a3a
	.uleb128 0x8
	.string	"_Ifx_SRC_LMU"
	.byte	0x4
	.byte	0x8
	.byte	0xdd
	.uaword	0x2a95
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xdf
	.uaword	0x2428
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_LMU"
	.byte	0x8
	.byte	0xe0
	.uaword	0x2aa8
	.uleb128 0x12
	.uaword	0x2a74
	.uleb128 0x8
	.string	"_Ifx_SRC_PMU"
	.byte	0x4
	.byte	0x8
	.byte	0xe3
	.uaword	0x2ace
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xe5
	.uaword	0x2428
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_PMU"
	.byte	0x8
	.byte	0xe6
	.uaword	0x2ae1
	.uleb128 0x12
	.uaword	0x2aad
	.uleb128 0x8
	.string	"_Ifx_SRC_QSPI"
	.byte	0x18
	.byte	0x8
	.byte	0xe9
	.uaword	0x2b3f
	.uleb128 0x7
	.string	"TX"
	.byte	0x8
	.byte	0xeb
	.uaword	0x2428
	.byte	0
	.uleb128 0x7
	.string	"RX"
	.byte	0x8
	.byte	0xec
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x7
	.string	"ERR"
	.byte	0x8
	.byte	0xed
	.uaword	0x2428
	.byte	0x8
	.uleb128 0x7
	.string	"PT"
	.byte	0x8
	.byte	0xee
	.uaword	0x2428
	.byte	0xc
	.uleb128 0x7
	.string	"HC"
	.byte	0x8
	.byte	0xef
	.uaword	0x2428
	.byte	0x10
	.uleb128 0x7
	.string	"U"
	.byte	0x8
	.byte	0xf0
	.uaword	0x2428
	.byte	0x14
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_QSPI"
	.byte	0x8
	.byte	0xf1
	.uaword	0x2b53
	.uleb128 0x12
	.uaword	0x2ae6
	.uleb128 0x8
	.string	"_Ifx_SRC_SCU"
	.byte	0x14
	.byte	0x8
	.byte	0xf4
	.uaword	0x2b86
	.uleb128 0x7
	.string	"DTS"
	.byte	0x8
	.byte	0xf6
	.uaword	0x2428
	.byte	0
	.uleb128 0x7
	.string	"ERU"
	.byte	0x8
	.byte	0xf7
	.uaword	0x2b86
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.uaword	0x2428
	.uaword	0x2b96
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SCU"
	.byte	0x8
	.byte	0xf8
	.uaword	0x2ba9
	.uleb128 0x12
	.uaword	0x2b58
	.uleb128 0x8
	.string	"_Ifx_SRC_SENT"
	.byte	0x10
	.byte	0x8
	.byte	0xfb
	.uaword	0x2bd0
	.uleb128 0x7
	.string	"SR"
	.byte	0x8
	.byte	0xfd
	.uaword	0x2b86
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_SRC_SENT"
	.byte	0x8
	.byte	0xfe
	.uaword	0x2be4
	.uleb128 0x12
	.uaword	0x2bae
	.uleb128 0xe
	.string	"_Ifx_SRC_SMU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x101
	.uaword	0x2c0c
	.uleb128 0x11
	.string	"SR"
	.byte	0x8
	.uahalf	0x103
	.uaword	0x2c0c
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2428
	.uaword	0x2c1c
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x2
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_SMU"
	.byte	0x8
	.uahalf	0x104
	.uaword	0x2c30
	.uleb128 0x12
	.uaword	0x2be9
	.uleb128 0xe
	.string	"_Ifx_SRC_STM"
	.byte	0x60
	.byte	0x8
	.uahalf	0x107
	.uaword	0x2c73
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x109
	.uaword	0x2428
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x10a
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x1e
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x2c73
	.byte	0x8
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x2c83
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x57
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_STM"
	.byte	0x8
	.uahalf	0x10c
	.uaword	0x2c97
	.uleb128 0x12
	.uaword	0x2c35
	.uleb128 0x13
	.string	"_Ifx_SRC_VADCCG"
	.uahalf	0x140
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x2cf8
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x111
	.uaword	0x2428
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x112
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x8
	.uahalf	0x113
	.uaword	0x2428
	.byte	0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x8
	.uahalf	0x114
	.uaword	0x2428
	.byte	0xc
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x115
	.uaword	0x2cf8
	.byte	0x10
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x2d09
	.uleb128 0x1c
	.uaword	0x21ea
	.uahalf	0x12f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_VADCCG"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x2d20
	.uleb128 0x12
	.uaword	0x2c9c
	.uleb128 0xe
	.string	"_Ifx_SRC_VADCG"
	.byte	0x10
	.byte	0x8
	.uahalf	0x119
	.uaword	0x2d72
	.uleb128 0x11
	.string	"SR0"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x2428
	.byte	0
	.uleb128 0x11
	.string	"SR1"
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x2428
	.byte	0x4
	.uleb128 0x11
	.string	"SR2"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x2428
	.byte	0x8
	.uleb128 0x11
	.string	"SR3"
	.byte	0x8
	.uahalf	0x11e
	.uaword	0x2428
	.byte	0xc
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_VADCG"
	.byte	0x8
	.uahalf	0x11f
	.uaword	0x2d88
	.uleb128 0x12
	.uaword	0x2d25
	.uleb128 0xe
	.string	"_Ifx_SRC_XBAR"
	.byte	0x4
	.byte	0x8
	.uahalf	0x122
	.uaword	0x2db2
	.uleb128 0x11
	.string	"SRC"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x2428
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_XBAR"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x2dc7
	.uleb128 0x12
	.uaword	0x2d8d
	.uleb128 0xe
	.string	"_Ifx_SRC_GASCLIN"
	.byte	0x18
	.byte	0x8
	.uahalf	0x132
	.uaword	0x2df7
	.uleb128 0x11
	.string	"ASCLIN"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x2e07
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2477
	.uaword	0x2e07
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x2df7
	.uleb128 0xd
	.string	"Ifx_SRC_GASCLIN"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x2e24
	.uleb128 0x12
	.uaword	0x2dcc
	.uleb128 0xe
	.string	"_Ifx_SRC_GBCU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x138
	.uaword	0x2e4e
	.uleb128 0x11
	.string	"SPB"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x24b9
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GBCU"
	.byte	0x8
	.uahalf	0x13b
	.uaword	0x2e63
	.uleb128 0x12
	.uaword	0x2e29
	.uleb128 0xe
	.string	"_Ifx_SRC_GCAN"
	.byte	0x60
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x2e9b
	.uleb128 0x11
	.string	"CAN"
	.byte	0x8
	.uahalf	0x140
	.uaword	0x2eab
	.byte	0
	.uleb128 0x11
	.string	"CAN1"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x2ec0
	.byte	0x40
	.byte	0
	.uleb128 0x14
	.uaword	0x2506
	.uaword	0x2eab
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2e9b
	.uleb128 0x14
	.uaword	0x2551
	.uaword	0x2ec0
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2eb0
	.uleb128 0xd
	.string	"Ifx_SRC_GCAN"
	.byte	0x8
	.uahalf	0x142
	.uaword	0x2eda
	.uleb128 0x12
	.uaword	0x2e68
	.uleb128 0xe
	.string	"_Ifx_SRC_GCCU6"
	.byte	0x20
	.byte	0x8
	.uahalf	0x145
	.uaword	0x2f06
	.uleb128 0x11
	.string	"CCU6"
	.byte	0x8
	.uahalf	0x147
	.uaword	0x2f16
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x25b1
	.uaword	0x2f16
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x2f06
	.uleb128 0xd
	.string	"Ifx_SRC_GCCU6"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x2f31
	.uleb128 0x12
	.uaword	0x2edf
	.uleb128 0xe
	.string	"_Ifx_SRC_GCERBERUS"
	.byte	0x8
	.byte	0x8
	.uahalf	0x14b
	.uaword	0x2f60
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x14d
	.uaword	0x2600
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GCERBERUS"
	.byte	0x8
	.uahalf	0x14e
	.uaword	0x2f7a
	.uleb128 0x12
	.uaword	0x2f36
	.uleb128 0xe
	.string	"_Ifx_SRC_GCPU"
	.byte	0x20
	.byte	0x8
	.uahalf	0x151
	.uaword	0x2fa4
	.uleb128 0x11
	.string	"CPU"
	.byte	0x8
	.uahalf	0x153
	.uaword	0x2fb4
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x264d
	.uaword	0x2fb4
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2fa4
	.uleb128 0xd
	.string	"Ifx_SRC_GCPU"
	.byte	0x8
	.uahalf	0x154
	.uaword	0x2fce
	.uleb128 0x12
	.uaword	0x2f7f
	.uleb128 0xe
	.string	"_Ifx_SRC_GDMA"
	.byte	0x50
	.byte	0x8
	.uahalf	0x157
	.uaword	0x2ff8
	.uleb128 0x11
	.string	"DMA"
	.byte	0x8
	.uahalf	0x159
	.uaword	0x3008
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x269e
	.uaword	0x3008
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x2ff8
	.uleb128 0xd
	.string	"Ifx_SRC_GDMA"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x3022
	.uleb128 0x12
	.uaword	0x2fd3
	.uleb128 0xe
	.string	"_Ifx_SRC_GEMEM"
	.byte	0x4
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x304e
	.uleb128 0x11
	.string	"EMEM"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x305e
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x26d8
	.uaword	0x305e
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x304e
	.uleb128 0xd
	.string	"Ifx_SRC_GEMEM"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x3079
	.uleb128 0x12
	.uaword	0x3027
	.uleb128 0xe
	.string	"_Ifx_SRC_GERAY"
	.byte	0x50
	.byte	0x8
	.uahalf	0x163
	.uaword	0x30a5
	.uleb128 0x11
	.string	"ERAY"
	.byte	0x8
	.uahalf	0x165
	.uaword	0x30b5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2763
	.uaword	0x30b5
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x30a5
	.uleb128 0xd
	.string	"Ifx_SRC_GERAY"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x30d0
	.uleb128 0x12
	.uaword	0x307e
	.uleb128 0xe
	.string	"_Ifx_SRC_GETH"
	.byte	0x4
	.byte	0x8
	.uahalf	0x169
	.uaword	0x30fa
	.uleb128 0x11
	.string	"ETH"
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x310a
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x279d
	.uaword	0x310a
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x30fa
	.uleb128 0xd
	.string	"Ifx_SRC_GETH"
	.byte	0x8
	.uahalf	0x16c
	.uaword	0x3124
	.uleb128 0x12
	.uaword	0x30d5
	.uleb128 0xe
	.string	"_Ifx_SRC_GEVR"
	.byte	0x8
	.byte	0x8
	.uahalf	0x16f
	.uaword	0x314e
	.uleb128 0x11
	.string	"EVR"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x315e
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x27e4
	.uaword	0x315e
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x314e
	.uleb128 0xd
	.string	"Ifx_SRC_GEVR"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x3178
	.uleb128 0x12
	.uaword	0x3129
	.uleb128 0xe
	.string	"_Ifx_SRC_GFFT"
	.byte	0xc
	.byte	0x8
	.uahalf	0x175
	.uaword	0x31a2
	.uleb128 0x11
	.string	"FFT"
	.byte	0x8
	.uahalf	0x177
	.uaword	0x31b2
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2837
	.uaword	0x31b2
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x31a2
	.uleb128 0xd
	.string	"Ifx_SRC_GFFT"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x31cc
	.uleb128 0x12
	.uaword	0x317d
	.uleb128 0x13
	.string	"_Ifx_SRC_GGPSR"
	.uahalf	0x600
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x31f9
	.uleb128 0x11
	.string	"GPSR"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x3209
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x28b4
	.uaword	0x3209
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x31f9
	.uleb128 0xd
	.string	"Ifx_SRC_GGPSR"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x3224
	.uleb128 0x12
	.uaword	0x31d1
	.uleb128 0xe
	.string	"_Ifx_SRC_GGPT12"
	.byte	0x30
	.byte	0x8
	.uahalf	0x181
	.uaword	0x3252
	.uleb128 0x11
	.string	"GPT12"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x3262
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2935
	.uaword	0x3262
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3252
	.uleb128 0xd
	.string	"Ifx_SRC_GGPT12"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x327e
	.uleb128 0x12
	.uaword	0x3229
	.uleb128 0x13
	.string	"_Ifx_SRC_GGTM"
	.uahalf	0x5c0
	.byte	0x8
	.uahalf	0x187
	.uaword	0x32a9
	.uleb128 0x11
	.string	"GTM"
	.byte	0x8
	.uahalf	0x189
	.uaword	0x32b9
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2a22
	.uaword	0x32b9
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x32a9
	.uleb128 0xd
	.string	"Ifx_SRC_GGTM"
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x32d3
	.uleb128 0x12
	.uaword	0x3283
	.uleb128 0xe
	.string	"_Ifx_SRC_GHSM"
	.byte	0x8
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x32fd
	.uleb128 0x11
	.string	"HSM"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x330d
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2a5c
	.uaword	0x330d
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x32fd
	.uleb128 0xd
	.string	"Ifx_SRC_GHSM"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x3327
	.uleb128 0x12
	.uaword	0x32d8
	.uleb128 0xe
	.string	"_Ifx_SRC_GLMU"
	.byte	0x4
	.byte	0x8
	.uahalf	0x193
	.uaword	0x3351
	.uleb128 0x11
	.string	"LMU"
	.byte	0x8
	.uahalf	0x195
	.uaword	0x3361
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2a95
	.uaword	0x3361
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3351
	.uleb128 0xd
	.string	"Ifx_SRC_GLMU"
	.byte	0x8
	.uahalf	0x196
	.uaword	0x337b
	.uleb128 0x12
	.uaword	0x332c
	.uleb128 0xe
	.string	"_Ifx_SRC_GPMU"
	.byte	0x8
	.byte	0x8
	.uahalf	0x199
	.uaword	0x33a5
	.uleb128 0x11
	.string	"PMU"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x33b5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2ace
	.uaword	0x33b5
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x1
	.byte	0
	.uleb128 0x12
	.uaword	0x33a5
	.uleb128 0xd
	.string	"Ifx_SRC_GPMU"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x33cf
	.uleb128 0x12
	.uaword	0x3380
	.uleb128 0xe
	.string	"_Ifx_SRC_GQSPI"
	.byte	0x60
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x33fb
	.uleb128 0x11
	.string	"QSPI"
	.byte	0x8
	.uahalf	0x1a1
	.uaword	0x340b
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2b3f
	.uaword	0x340b
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x33fb
	.uleb128 0xd
	.string	"Ifx_SRC_GQSPI"
	.byte	0x8
	.uahalf	0x1a2
	.uaword	0x3426
	.uleb128 0x12
	.uaword	0x33d4
	.uleb128 0xe
	.string	"_Ifx_SRC_GSCU"
	.byte	0x14
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x3450
	.uleb128 0x11
	.string	"SCU"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x2b96
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GSCU"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x3465
	.uleb128 0x12
	.uaword	0x342b
	.uleb128 0xe
	.string	"_Ifx_SRC_GSENT"
	.byte	0x10
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x3491
	.uleb128 0x11
	.string	"SENT"
	.byte	0x8
	.uahalf	0x1ad
	.uaword	0x34a1
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2bd0
	.uaword	0x34a1
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x3491
	.uleb128 0xd
	.string	"Ifx_SRC_GSENT"
	.byte	0x8
	.uahalf	0x1ae
	.uaword	0x34bc
	.uleb128 0x12
	.uaword	0x346a
	.uleb128 0xe
	.string	"_Ifx_SRC_GSMU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x1b1
	.uaword	0x34e6
	.uleb128 0x11
	.string	"SMU"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x34f6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2c1c
	.uaword	0x34f6
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x34e6
	.uleb128 0xd
	.string	"Ifx_SRC_GSMU"
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x3510
	.uleb128 0x12
	.uaword	0x34c1
	.uleb128 0xe
	.string	"_Ifx_SRC_GSTM"
	.byte	0x60
	.byte	0x8
	.uahalf	0x1b7
	.uaword	0x353a
	.uleb128 0x11
	.string	"STM"
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x354a
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x2c83
	.uaword	0x354a
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x353a
	.uleb128 0xd
	.string	"Ifx_SRC_GSTM"
	.byte	0x8
	.uahalf	0x1ba
	.uaword	0x3564
	.uleb128 0x12
	.uaword	0x3515
	.uleb128 0x13
	.string	"_Ifx_SRC_GVADC"
	.uahalf	0x260
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x35b0
	.uleb128 0x11
	.string	"G"
	.byte	0x8
	.uahalf	0x1bf
	.uaword	0x35c0
	.byte	0
	.uleb128 0x11
	.string	"reserved_40"
	.byte	0x8
	.uahalf	0x1c0
	.uaword	0x35c5
	.byte	0x40
	.uleb128 0x1f
	.string	"CG"
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x35e5
	.uahalf	0x120
	.byte	0
	.uleb128 0x14
	.uaword	0x2d72
	.uaword	0x35c0
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x3
	.byte	0
	.uleb128 0x12
	.uaword	0x35b0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x35d5
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0xdf
	.byte	0
	.uleb128 0x14
	.uaword	0x2d09
	.uaword	0x35e5
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x12
	.uaword	0x35d5
	.uleb128 0xd
	.string	"Ifx_SRC_GVADC"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x3600
	.uleb128 0x12
	.uaword	0x3569
	.uleb128 0xe
	.string	"_Ifx_SRC_GXBAR"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x362c
	.uleb128 0x11
	.string	"XBAR"
	.byte	0x8
	.uahalf	0x1c7
	.uaword	0x2db2
	.byte	0
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC_GXBAR"
	.byte	0x8
	.uahalf	0x1c8
	.uaword	0x3642
	.uleb128 0x12
	.uaword	0x3605
	.uleb128 0x13
	.string	"_Ifx_SRC"
	.uahalf	0x2000
	.byte	0x8
	.uahalf	0x1d5
	.uaword	0x3964
	.uleb128 0x11
	.string	"CPU"
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x2fb9
	.byte	0
	.uleb128 0x11
	.string	"EMEM"
	.byte	0x8
	.uahalf	0x1d8
	.uaword	0x3063
	.byte	0x20
	.uleb128 0x1e
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x229d
	.byte	0x24
	.uleb128 0x11
	.string	"BCU"
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x2e4e
	.byte	0x40
	.uleb128 0x11
	.string	"reserved_44"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x227d
	.byte	0x44
	.uleb128 0x11
	.string	"XBAR"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x362c
	.byte	0x48
	.uleb128 0x11
	.string	"reserved_4C"
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x227d
	.byte	0x4c
	.uleb128 0x1e
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x2f60
	.byte	0x50
	.uleb128 0x11
	.string	"reserved_58"
	.byte	0x8
	.uahalf	0x1df
	.uaword	0x22bd
	.byte	0x58
	.uleb128 0x11
	.string	"ASCLIN"
	.byte	0x8
	.uahalf	0x1e0
	.uaword	0x2e0c
	.byte	0x80
	.uleb128 0x11
	.string	"reserved_98"
	.byte	0x8
	.uahalf	0x1e1
	.uaword	0x22cd
	.byte	0x98
	.uleb128 0x1f
	.string	"QSPI"
	.byte	0x8
	.uahalf	0x1e2
	.uaword	0x3410
	.uahalf	0x190
	.uleb128 0x1f
	.string	"reserved_1F0"
	.byte	0x8
	.uahalf	0x1e3
	.uaword	0x3964
	.uahalf	0x1f0
	.uleb128 0x1f
	.string	"SENT"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x34a6
	.uahalf	0x350
	.uleb128 0x1f
	.string	"reserved_360"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x3975
	.uahalf	0x360
	.uleb128 0x1f
	.string	"CCU6"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x2f1b
	.uahalf	0x420
	.uleb128 0x1f
	.string	"reserved_440"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x3985
	.uahalf	0x440
	.uleb128 0x1f
	.string	"GPT12"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x3267
	.uahalf	0x460
	.uleb128 0x1f
	.string	"STM"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x354f
	.uahalf	0x490
	.uleb128 0x1f
	.string	"DMA"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x300d
	.uahalf	0x4f0
	.uleb128 0x1f
	.string	"reserved_540"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x3995
	.uahalf	0x540
	.uleb128 0x1f
	.string	"ETH"
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x310f
	.uahalf	0x8f0
	.uleb128 0x1f
	.string	"reserved_8F4"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x22ad
	.uahalf	0x8f4
	.uleb128 0x1f
	.string	"CAN"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x2ec5
	.uahalf	0x900
	.uleb128 0x1f
	.string	"reserved_960"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x3985
	.uahalf	0x960
	.uleb128 0x1f
	.string	"VADC"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x35ea
	.uahalf	0x980
	.uleb128 0x1f
	.string	"ERAY"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x30ba
	.uahalf	0xbe0
	.uleb128 0x1f
	.string	"PMU"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x33ba
	.uahalf	0xc30
	.uleb128 0x1f
	.string	"reserved_C38"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x39a6
	.uahalf	0xc38
	.uleb128 0x1f
	.string	"HSM"
	.byte	0x8
	.uahalf	0x1f4
	.uaword	0x3312
	.uahalf	0xcc0
	.uleb128 0x1f
	.string	"reserved_CC8"
	.byte	0x8
	.uahalf	0x1f5
	.uaword	0x226d
	.uahalf	0xcc8
	.uleb128 0x1f
	.string	"SCU"
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x3450
	.uahalf	0xcd0
	.uleb128 0x1f
	.string	"reserved_CE4"
	.byte	0x8
	.uahalf	0x1f7
	.uaword	0x39b6
	.uahalf	0xce4
	.uleb128 0x1f
	.string	"SMU"
	.byte	0x8
	.uahalf	0x1f8
	.uaword	0x34fb
	.uahalf	0xd10
	.uleb128 0x1f
	.string	"reserved_D1C"
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x39c6
	.uahalf	0xd1c
	.uleb128 0x1f
	.string	"LMU"
	.byte	0x8
	.uahalf	0x1fa
	.uaword	0x3366
	.uahalf	0xde0
	.uleb128 0x1f
	.string	"reserved_DE4"
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x39d6
	.uahalf	0xde4
	.uleb128 0x1f
	.string	"EVR"
	.byte	0x8
	.uahalf	0x1fc
	.uaword	0x3163
	.uahalf	0xfb0
	.uleb128 0x1f
	.string	"reserved_FB8"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x226d
	.uahalf	0xfb8
	.uleb128 0x1f
	.string	"FFT"
	.byte	0x8
	.uahalf	0x1fe
	.uaword	0x31b7
	.uahalf	0xfc0
	.uleb128 0x1f
	.string	"reserved_FCC"
	.byte	0x8
	.uahalf	0x1ff
	.uaword	0x39e7
	.uahalf	0xfcc
	.uleb128 0x1f
	.string	"GPSR"
	.byte	0x8
	.uahalf	0x200
	.uaword	0x320e
	.uahalf	0x1000
	.uleb128 0x1f
	.string	"GTM"
	.byte	0x8
	.uahalf	0x201
	.uaword	0x32be
	.uahalf	0x1600
	.uleb128 0x1f
	.string	"reserved_1BC0"
	.byte	0x8
	.uahalf	0x202
	.uaword	0x39f7
	.uahalf	0x1bc0
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x3975
	.uleb128 0x1c
	.uaword	0x21ea
	.uahalf	0x15f
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x3985
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0xbf
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x3995
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x1f
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x39a6
	.uleb128 0x1c
	.uaword	0x21ea
	.uahalf	0x3af
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x39b6
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x87
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x39c6
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x2b
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x39d6
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0xc3
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x39e7
	.uleb128 0x1c
	.uaword	0x21ea
	.uahalf	0x1cb
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x39f7
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x33
	.byte	0
	.uleb128 0x14
	.uaword	0x1e2
	.uaword	0x3a08
	.uleb128 0x1c
	.uaword	0x21ea
	.uahalf	0x43f
	.byte	0
	.uleb128 0xd
	.string	"Ifx_SRC"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x3a18
	.uleb128 0x12
	.uaword	0x3647
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21f6
	.uleb128 0x16
	.byte	0x1
	.byte	0x2
	.byte	0x5b
	.uaword	0x3b07
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_noClock"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_kernelClock"
	.sleb128 1
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_oscillatorClock"
	.sleb128 2
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_flexRayClock"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_ascFastClock"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_ClockSource_ascSlowClock"
	.sleb128 16
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_ClockSource"
	.byte	0x2
	.byte	0x62
	.uaword	0x3a23
	.uleb128 0x16
	.byte	0x1
	.byte	0x2
	.byte	0xd1
	.uaword	0x3ce1
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_4"
	.sleb128 3
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_5"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_6"
	.sleb128 5
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_7"
	.sleb128 6
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_8"
	.sleb128 7
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_9"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_10"
	.sleb128 9
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_11"
	.sleb128 10
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_12"
	.sleb128 11
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_13"
	.sleb128 12
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_14"
	.sleb128 13
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_15"
	.sleb128 14
	.uleb128 0x17
	.string	"IfxAsclin_OversamplingFactor_16"
	.sleb128 15
	.byte	0
	.uleb128 0x3
	.string	"IfxAsclin_OversamplingFactor"
	.byte	0x2
	.byte	0xdf
	.uaword	0x3b24
	.uleb128 0x20
	.byte	0x1
	.byte	0x2
	.uahalf	0x131
	.uaword	0x3f13
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_1"
	.sleb128 1
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_2"
	.sleb128 2
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_3"
	.sleb128 3
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_4"
	.sleb128 4
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_5"
	.sleb128 5
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_6"
	.sleb128 6
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_7"
	.sleb128 7
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_8"
	.sleb128 8
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_9"
	.sleb128 9
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_10"
	.sleb128 10
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_11"
	.sleb128 11
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_12"
	.sleb128 12
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_13"
	.sleb128 13
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_14"
	.sleb128 14
	.uleb128 0x17
	.string	"IfxAsclin_SamplePointPosition_15"
	.sleb128 15
	.byte	0
	.uleb128 0xd
	.string	"IfxAsclin_SamplePointPosition"
	.byte	0x2
	.uahalf	0x141
	.uaword	0x3d05
	.uleb128 0x20
	.byte	0x1
	.byte	0x2
	.uahalf	0x147
	.uaword	0x3f81
	.uleb128 0x17
	.string	"IfxAsclin_SamplesPerBit_one"
	.sleb128 0
	.uleb128 0x17
	.string	"IfxAsclin_SamplesPerBit_three"
	.sleb128 1
	.byte	0
	.uleb128 0xd
	.string	"IfxAsclin_SamplesPerBit"
	.byte	0x2
	.uahalf	0x14a
	.uaword	0x3f39
	.uleb128 0x21
	.string	"IfxAsclin_setDisableModuleRequest"
	.byte	0x2
	.uahalf	0x8a7
	.byte	0x1
	.byte	0x3
	.uaword	0x3fda
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8a7
	.uaword	0x3a1d
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_enableParityErrorFlag"
	.byte	0x2
	.uahalf	0x70c
	.byte	0x1
	.byte	0x3
	.uaword	0x4020
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x70c
	.uaword	0x3a1d
	.uleb128 0x23
	.string	"enable"
	.byte	0x2
	.uahalf	0x70c
	.uaword	0x259
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_enableRxFifoOverflowFlag"
	.byte	0x2
	.uahalf	0x72a
	.byte	0x1
	.byte	0x3
	.uaword	0x4069
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x72a
	.uaword	0x3a1d
	.uleb128 0x23
	.string	"enable"
	.byte	0x2
	.uahalf	0x72a
	.uaword	0x259
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setEnableModuleRequest"
	.byte	0x2
	.uahalf	0x8ad
	.byte	0x1
	.byte	0x3
	.uaword	0x40a1
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8ad
	.uaword	0x3a1d
	.byte	0
	.uleb128 0x24
	.string	"IfxAsclin_getClockSource"
	.byte	0x2
	.uahalf	0x778
	.byte	0x1
	.uaword	0x1d5
	.byte	0x3
	.uaword	0x40d5
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x778
	.uaword	0x3a1d
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxAsclin_getPdFrequency"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uaword	0x4108
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0x86
	.uaword	0x3a1d
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"IfxAsclin_getIndex"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	0x2256
	.byte	0x1
	.uaword	0x4150
	.uleb128 0x26
	.uaword	.LASF15
	.byte	0x1
	.byte	0x6c
	.uaword	0x3a1d
	.uleb128 0x27
	.string	"index"
	.byte	0x1
	.byte	0x6e
	.uaword	0x232
	.uleb128 0x27
	.string	"result"
	.byte	0x1
	.byte	0x6f
	.uaword	0x2256
	.byte	0
	.uleb128 0x24
	.string	"IfxAsclin_getClockStatus"
	.byte	0x2
	.uahalf	0x77e
	.byte	0x1
	.uaword	0x259
	.byte	0x3
	.uaword	0x4184
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x77e
	.uaword	0x3a1d
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"IfxAsclin_setClockSource"
	.byte	0x1
	.uahalf	0x142
	.byte	0x1
	.byte	0x1
	.uaword	0x41c1
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x142
	.uaword	0x3a1d
	.uleb128 0x22
	.uaword	.LASF16
	.byte	0x1
	.uahalf	0x142
	.uaword	0x3b07
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setPrescaler"
	.byte	0x2
	.uahalf	0x90d
	.byte	0x1
	.byte	0x3
	.uaword	0x41fb
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x90d
	.uaword	0x3a1d
	.uleb128 0x22
	.uaword	.LASF17
	.byte	0x2
	.uahalf	0x90d
	.uaword	0x200
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setNumerator"
	.byte	0x2
	.uahalf	0x8fb
	.byte	0x1
	.byte	0x3
	.uaword	0x4235
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8fb
	.uaword	0x3a1d
	.uleb128 0x22
	.uaword	.LASF18
	.byte	0x2
	.uahalf	0x8fb
	.uaword	0x200
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setDenominator"
	.byte	0x2
	.uahalf	0x8a1
	.byte	0x1
	.byte	0x3
	.uaword	0x4271
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x8a1
	.uaword	0x3a1d
	.uleb128 0x22
	.uaword	.LASF19
	.byte	0x2
	.uahalf	0x8a1
	.uaword	0x200
	.byte	0
	.uleb128 0x21
	.string	"IfxAsclin_setOversampling"
	.byte	0x2
	.uahalf	0x901
	.byte	0x1
	.byte	0x3
	.uaword	0x42b4
	.uleb128 0x22
	.uaword	.LASF15
	.byte	0x2
	.uahalf	0x901
	.uaword	0x3a1d
	.uleb128 0x23
	.string	"ovsFactor"
	.byte	0x2
	.uahalf	0x901
	.uaword	0x3ce1
	.byte	0
	.uleb128 0x29
	.string	"__maxu"
	.byte	0x3
	.byte	0x93
	.byte	0x1
	.uaword	0x232
	.byte	0x3
	.uaword	0x42e6
	.uleb128 0x2a
	.string	"a"
	.byte	0x3
	.byte	0x93
	.uaword	0x232
	.uleb128 0x2a
	.string	"b"
	.byte	0x3
	.byte	0x93
	.uaword	0x232
	.uleb128 0x27
	.string	"res"
	.byte	0x3
	.byte	0x95
	.uaword	0x232
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_disableModule"
	.byte	0x1
	.byte	0x23
	.byte	0x1
	.uaword	.LFB362
	.uaword	.LFE362
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x437a
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x23
	.uaword	0x3a1d
	.uaword	.LLST0
	.uleb128 0x2d
	.string	"psw"
	.byte	0x1
	.byte	0x25
	.uaword	0x200
	.uaword	.LLST1
	.uleb128 0x2e
	.uaword	0x3fa1
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x27
	.uaword	0x434b
	.uleb128 0x2f
	.uaword	0x3fcd
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x30
	.uaword	.LVL1
	.uaword	0x50c1
	.uleb128 0x31
	.uaword	.LVL3
	.uaword	0x50ed
	.uaword	0x4368
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL4
	.byte	0x1
	.uaword	0x5117
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_enableAscErrorFlags"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.uaword	.LFB363
	.uaword	.LFE363
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4428
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0x2c
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x35
	.string	"parEnable"
	.byte	0x1
	.byte	0x2c
	.uaword	0x259
	.uaword	.LLST2
	.uleb128 0x35
	.string	"rfoEnable"
	.byte	0x1
	.byte	0x2c
	.uaword	0x259
	.uaword	.LLST3
	.uleb128 0x36
	.uaword	0x3fda
	.uaword	.LBB70
	.uaword	.LBE70
	.byte	0x1
	.byte	0x2e
	.uaword	0x4407
	.uleb128 0x37
	.uaword	0x4010
	.uaword	.LLST2
	.uleb128 0x2f
	.uaword	0x4004
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	0x4020
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.byte	0x2f
	.uleb128 0x37
	.uaword	0x4059
	.uaword	.LLST5
	.uleb128 0x2f
	.uaword	0x404d
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_enableModule"
	.byte	0x1
	.byte	0x33
	.byte	0x1
	.uaword	.LFB364
	.uaword	.LFE364
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x44bb
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x33
	.uaword	0x3a1d
	.uaword	.LLST6
	.uleb128 0x2d
	.string	"psw"
	.byte	0x1
	.byte	0x35
	.uaword	0x200
	.uaword	.LLST7
	.uleb128 0x2e
	.uaword	0x4069
	.uaword	.LBB74
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x37
	.uaword	0x448c
	.uleb128 0x2f
	.uaword	0x4094
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x30
	.uaword	.LVL10
	.uaword	0x50c1
	.uleb128 0x31
	.uaword	.LVL12
	.uaword	0x50ed
	.uaword	0x44a9
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL13
	.byte	0x1
	.uaword	0x5117
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getAddress"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x3a1d
	.uaword	.LFB365
	.uaword	.LFE365
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4506
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0x3c
	.uaword	0x2256
	.byte	0x1
	.byte	0x54
	.uleb128 0x3a
	.string	"module"
	.byte	0x1
	.byte	0x3e
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x62
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getFaFrequency"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB366
	.uaword	.LFE366
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x45ac
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x4d
	.uaword	0x3a1d
	.uaword	.LLST8
	.uleb128 0x2d
	.string	"frequency"
	.byte	0x1
	.byte	0x4f
	.uaword	0x240
	.uaword	.LLST9
	.uleb128 0x3b
	.uaword	.LASF16
	.byte	0x1
	.byte	0x50
	.uaword	0x3b07
	.uleb128 0x36
	.uaword	0x40a1
	.uaword	.LBB78
	.uaword	.LBE78
	.byte	0x1
	.byte	0x50
	.uaword	0x4583
	.uleb128 0x37
	.uaword	0x40c8
	.uaword	.LLST8
	.byte	0
	.uleb128 0x3c
	.uaword	.LVL19
	.byte	0x1
	.uaword	0x513f
	.uleb128 0x3c
	.uaword	.LVL20
	.byte	0x1
	.uaword	0x5168
	.uleb128 0x3c
	.uaword	.LVL21
	.byte	0x1
	.uaword	0x518e
	.uleb128 0x3c
	.uaword	.LVL22
	.byte	0x1
	.uaword	0x51b3
	.byte	0
	.uleb128 0x3d
	.uaword	0x4108
	.uaword	.LFB367
	.uaword	.LFE367
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x45da
	.uleb128 0x2f
	.uaword	0x4129
	.byte	0x1
	.byte	0x64
	.uleb128 0x3e
	.uaword	0x4134
	.uaword	.LLST11
	.uleb128 0x3e
	.uaword	0x4141
	.uaword	.LLST12
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getOvsFrequency"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB368
	.uaword	.LFE368
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4645
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x80
	.uaword	0x3a1d
	.uaword	.LLST13
	.uleb128 0x3f
	.uaword	0x40d5
	.uaword	.LBB80
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x82
	.uleb128 0x37
	.uaword	0x40fc
	.uaword	.LLST14
	.uleb128 0x40
	.uaword	.LVL31
	.uaword	0x4506
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x40d5
	.uaword	.LFB369
	.uaword	.LFE369
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4673
	.uleb128 0x37
	.uaword	0x40fc
	.uaword	.LLST15
	.uleb128 0x40
	.uaword	.LVL33
	.uaword	0x4506
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getShiftFrequency"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	0x240
	.uaword	.LFB370
	.uaword	.LFE370
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x46c7
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x8c
	.uaword	0x3a1d
	.uaword	.LLST16
	.uleb128 0x40
	.uaword	.LVL35
	.uaword	0x45da
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerEr"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	0x4736
	.uaword	.LFB371
	.uaword	.LFE371
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4736
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0x92
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	0x4108
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x94
	.uleb128 0x2f
	.uaword	0x4129
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x3e
	.uaword	0x4134
	.uaword	.LLST17
	.uleb128 0x3e
	.uaword	0x4141
	.uaword	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x42
	.uaword	0x473b
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4741
	.uleb128 0x12
	.uaword	0x2428
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerRx"
	.byte	0x1
	.byte	0x98
	.byte	0x1
	.uaword	0x4736
	.uaword	.LFB372
	.uaword	.LFE372
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x47b5
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0x98
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	0x4108
	.uaword	.LBB92
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.byte	0x9a
	.uleb128 0x2f
	.uaword	0x4129
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x3e
	.uaword	0x4134
	.uaword	.LLST19
	.uleb128 0x3e
	.uaword	0x4141
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_getSrcPointerTx"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	0x4736
	.uaword	.LFB373
	.uaword	.LFE373
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4824
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0x9e
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x3f
	.uaword	0x4108
	.uaword	.LBB96
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xa0
	.uleb128 0x2f
	.uaword	0x4129
	.byte	0x1
	.byte	0x64
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x3e
	.uaword	0x4134
	.uaword	.LLST21
	.uleb128 0x3e
	.uaword	0x4141
	.uaword	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read16"
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB374
	.uaword	.LFE374
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4889
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa4
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.byte	0xa4
	.uaword	0x4889
	.uaword	.LLST23
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xa4
	.uaword	0x232
	.uaword	.LLST24
	.uleb128 0x43
	.uaword	.LASF22
	.byte	0x1
	.byte	0xa6
	.uaword	0x488f
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x200
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4895
	.uleb128 0x12
	.uaword	0x1e98
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read32"
	.byte	0x1
	.byte	0xb2
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB375
	.uaword	.LFE375
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x48ff
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xb2
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.byte	0xb2
	.uaword	0x48ff
	.uaword	.LLST25
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xb2
	.uaword	0x232
	.uaword	.LLST26
	.uleb128 0x43
	.uaword	.LASF22
	.byte	0x1
	.byte	0xb4
	.uaword	0x488f
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x232
	.uleb128 0x39
	.byte	0x1
	.string	"IfxAsclin_read8"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB376
	.uaword	.LFE376
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4969
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xc0
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF20
	.byte	0x1
	.byte	0xc0
	.uaword	0x4969
	.uaword	.LLST27
	.uleb128 0x2c
	.uaword	.LASF21
	.byte	0x1
	.byte	0xc0
	.uaword	0x232
	.uaword	.LLST28
	.uleb128 0x43
	.uaword	.LASF22
	.byte	0x1
	.byte	0xc2
	.uaword	0x488f
	.byte	0x4
	.byte	0x84
	.sleb128 72
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1d5
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_resetModule"
	.byte	0x1
	.byte	0xce
	.byte	0x1
	.uaword	.LFB377
	.uaword	.LFE377
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4a11
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0xce
	.uaword	0x3a1d
	.uaword	.LLST29
	.uleb128 0x2d
	.string	"passwd"
	.byte	0x1
	.byte	0xd0
	.uaword	0x200
	.uaword	.LLST30
	.uleb128 0x30
	.uaword	.LVL66
	.uaword	0x50c1
	.uleb128 0x31
	.uaword	.LVL68
	.uaword	0x50ed
	.uaword	0x49d7
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL69
	.uaword	0x5117
	.uaword	0x49eb
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x31
	.uaword	.LVL70
	.uaword	0x50ed
	.uaword	0x49ff
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.uaword	.LVL71
	.byte	0x1
	.uaword	0x5117
	.uleb128 0x32
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"IfxAsclin_setBaudrateBitFields"
	.byte	0x1
	.byte	0xe1
	.byte	0x1
	.uaword	.LFB378
	.uaword	.LFE378
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4bd1
	.uleb128 0x34
	.uaword	.LASF15
	.byte	0x1
	.byte	0xe1
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x2c
	.uaword	.LASF17
	.byte	0x1
	.byte	0xe1
	.uaword	0x200
	.uaword	.LLST31
	.uleb128 0x2c
	.uaword	.LASF18
	.byte	0x1
	.byte	0xe1
	.uaword	0x200
	.uaword	.LLST32
	.uleb128 0x2c
	.uaword	.LASF19
	.byte	0x1
	.byte	0xe1
	.uaword	0x200
	.uaword	.LLST33
	.uleb128 0x2c
	.uaword	.LASF23
	.byte	0x1
	.byte	0xe1
	.uaword	0x3ce1
	.uaword	.LLST34
	.uleb128 0x3b
	.uaword	.LASF16
	.byte	0x1
	.byte	0xe3
	.uaword	0x3b07
	.uleb128 0x2e
	.uaword	0x40a1
	.uaword	.LBB100
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xe3
	.uaword	0x4ab3
	.uleb128 0x2f
	.uaword	0x40c8
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x2e
	.uaword	0x4184
	.uaword	.LBB103
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.byte	0xe4
	.uaword	0x4aec
	.uleb128 0x44
	.uaword	0x41b4
	.byte	0
	.uleb128 0x2f
	.uaword	0x41a8
	.byte	0x1
	.byte	0x64
	.uleb128 0x45
	.uaword	0x4150
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.uahalf	0x149
	.uleb128 0x2f
	.uaword	0x4177
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x41c1
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.byte	0xe5
	.uaword	0x4b10
	.uleb128 0x37
	.uaword	0x41ee
	.uaword	.LLST35
	.uleb128 0x2f
	.uaword	0x41e2
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x41fb
	.uaword	.LBB112
	.uaword	.LBE112
	.byte	0x1
	.byte	0xe6
	.uaword	0x4b34
	.uleb128 0x37
	.uaword	0x4228
	.uaword	.LLST36
	.uleb128 0x2f
	.uaword	0x421c
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x4235
	.uaword	.LBB114
	.uaword	.LBE114
	.byte	0x1
	.byte	0xe7
	.uaword	0x4b58
	.uleb128 0x37
	.uaword	0x4264
	.uaword	.LLST37
	.uleb128 0x2f
	.uaword	0x4258
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x36
	.uaword	0x4271
	.uaword	.LBB116
	.uaword	.LBE116
	.byte	0x1
	.byte	0xe8
	.uaword	0x4b7c
	.uleb128 0x37
	.uaword	0x42a1
	.uaword	.LLST38
	.uleb128 0x2f
	.uaword	0x4295
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x38
	.uaword	0x4184
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.byte	0xe9
	.uleb128 0x2f
	.uaword	0x41b4
	.byte	0x1
	.byte	0x52
	.uleb128 0x2f
	.uaword	0x41a8
	.byte	0x1
	.byte	0x64
	.uleb128 0x46
	.uaword	0x4150
	.uaword	.LBB120
	.uaword	.LBE120
	.byte	0x1
	.uahalf	0x149
	.uaword	0x4bb7
	.uleb128 0x37
	.uaword	0x4177
	.uaword	.LLST39
	.byte	0
	.uleb128 0x45
	.uaword	0x4150
	.uaword	.LBB122
	.uaword	.LBE122
	.byte	0x1
	.uahalf	0x14e
	.uleb128 0x2f
	.uaword	0x4177
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
	.byte	0x1
	.string	"IfxAsclin_setBitTiming"
	.byte	0x1
	.byte	0xed
	.byte	0x1
	.uaword	0x259
	.uaword	.LFB379
	.uaword	.LFE379
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4eb6
	.uleb128 0x2c
	.uaword	.LASF15
	.byte	0x1
	.byte	0xed
	.uaword	0x3a1d
	.uaword	.LLST40
	.uleb128 0x35
	.string	"baudrate"
	.byte	0x1
	.byte	0xed
	.uaword	0x240
	.uaword	.LLST41
	.uleb128 0x2c
	.uaword	.LASF23
	.byte	0x1
	.byte	0xed
	.uaword	0x3ce1
	.uaword	.LLST42
	.uleb128 0x35
	.string	"samplepoint"
	.byte	0x1
	.byte	0xed
	.uaword	0x3f13
	.uaword	.LLST43
	.uleb128 0x35
	.string	"medianFilter"
	.byte	0x1
	.byte	0xed
	.uaword	0x3f81
	.uaword	.LLST44
	.uleb128 0x27
	.string	"source"
	.byte	0x1
	.byte	0xef
	.uaword	0x3b07
	.uleb128 0x3a
	.string	"fOvs"
	.byte	0x1
	.byte	0xf0
	.uaword	0x240
	.byte	0x1
	.byte	0x5d
	.uleb128 0x2d
	.string	"d"
	.byte	0x1
	.byte	0xf1
	.uaword	0x232
	.uaword	.LLST45
	.uleb128 0x2d
	.string	"n"
	.byte	0x1
	.byte	0xf1
	.uaword	0x232
	.uaword	.LLST46
	.uleb128 0x2d
	.string	"dBest"
	.byte	0x1
	.byte	0xf1
	.uaword	0x232
	.uaword	.LLST47
	.uleb128 0x2d
	.string	"nBest"
	.byte	0x1
	.byte	0xf1
	.uaword	0x232
	.uaword	.LLST48
	.uleb128 0x2d
	.string	"f"
	.byte	0x1
	.byte	0xf2
	.uaword	0x240
	.uaword	.LLST49
	.uleb128 0x27
	.string	"fpd"
	.byte	0x1
	.byte	0xf5
	.uaword	0x240
	.uleb128 0x2d
	.string	"relError"
	.byte	0x1
	.byte	0xf9
	.uaword	0x240
	.uaword	.LLST50
	.uleb128 0x2d
	.string	"limit"
	.byte	0x1
	.byte	0xfa
	.uaword	0x240
	.uaword	.LLST51
	.uleb128 0x2d
	.string	"terminated"
	.byte	0x1
	.byte	0xfc
	.uaword	0x259
	.uaword	.LLST52
	.uleb128 0x2d
	.string	"newRelError"
	.byte	0x1
	.byte	0xfd
	.uaword	0x240
	.uaword	.LLST53
	.uleb128 0x2d
	.string	"adder_facL"
	.byte	0x1
	.byte	0xfe
	.uaword	0x232
	.uaword	.LLST54
	.uleb128 0x2d
	.string	"adder_facH"
	.byte	0x1
	.byte	0xfe
	.uaword	0x232
	.uaword	.LLST55
	.uleb128 0x2d
	.string	"adder_facL_min"
	.byte	0x1
	.byte	0xfe
	.uaword	0x232
	.uaword	.LLST56
	.uleb128 0x48
	.uaword	.LASF21
	.byte	0x1
	.byte	0xfe
	.uaword	0x232
	.uaword	.LLST57
	.uleb128 0x2e
	.uaword	0x40a1
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.byte	0xef
	.uaword	0x4d95
	.uleb128 0x37
	.uaword	0x40c8
	.uaword	.LLST40
	.byte	0
	.uleb128 0x2e
	.uaword	0x40d5
	.uaword	.LBB130
	.uaword	.Ldebug_ranges0+0xf0
	.byte	0x1
	.byte	0xf5
	.uaword	0x4dc2
	.uleb128 0x37
	.uaword	0x40fc
	.uaword	.LLST59
	.uleb128 0x40
	.uaword	.LVL89
	.uaword	0x4506
	.uleb128 0x32
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x42b4
	.uaword	.LBB135
	.uaword	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0xf6
	.uaword	0x4df0
	.uleb128 0x44
	.uaword	0x42d1
	.byte	0x4
	.uleb128 0x49
	.uaword	0x42c8
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x110
	.uleb128 0x3e
	.uaword	0x42da
	.uaword	.LLST60
	.byte	0
	.byte	0
	.uleb128 0x36
	.uaword	0x42b4
	.uaword	.LBB140
	.uaword	.LBE140
	.byte	0x1
	.byte	0xf7
	.uaword	0x4e26
	.uleb128 0x44
	.uaword	0x42d1
	.byte	0x1
	.uleb128 0x37
	.uaword	0x42c8
	.uaword	.LLST61
	.uleb128 0x4a
	.uaword	.LBB141
	.uaword	.LBE141
	.uleb128 0x3e
	.uaword	0x42da
	.uaword	.LLST62
	.byte	0
	.byte	0
	.uleb128 0x46
	.uaword	0x4184
	.uaword	.LBB142
	.uaword	.LBE142
	.byte	0x1
	.uahalf	0x12f
	.uaword	0x4e60
	.uleb128 0x44
	.uaword	0x41b4
	.byte	0
	.uleb128 0x2f
	.uaword	0x41a8
	.byte	0x1
	.byte	0x6f
	.uleb128 0x45
	.uaword	0x4150
	.uaword	.LBB144
	.uaword	.LBE144
	.byte	0x1
	.uahalf	0x149
	.uleb128 0x2f
	.uaword	0x4177
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uaword	0x4184
	.uaword	.LBB146
	.uaword	.Ldebug_ranges0+0x128
	.byte	0x1
	.uahalf	0x13c
	.uleb128 0x2f
	.uaword	0x41b4
	.byte	0x1
	.byte	0x54
	.uleb128 0x2f
	.uaword	0x41a8
	.byte	0x1
	.byte	0x6f
	.uleb128 0x46
	.uaword	0x4150
	.uaword	.LBB148
	.uaword	.LBE148
	.byte	0x1
	.uahalf	0x149
	.uaword	0x4e9c
	.uleb128 0x37
	.uaword	0x4177
	.uaword	.LLST63
	.byte	0
	.uleb128 0x4b
	.uaword	0x4150
	.uaword	.LBB150
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x14e
	.uleb128 0x2f
	.uaword	0x4177
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uaword	0x4184
	.uaword	.LFB380
	.uaword	.LFE380
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f0f
	.uleb128 0x2f
	.uaword	0x41a8
	.byte	0x1
	.byte	0x64
	.uleb128 0x2f
	.uaword	0x41b4
	.byte	0x1
	.byte	0x54
	.uleb128 0x46
	.uaword	0x4150
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.uahalf	0x149
	.uaword	0x4ef6
	.uleb128 0x37
	.uaword	0x4177
	.uaword	.LLST64
	.byte	0
	.uleb128 0x45
	.uaword	0x4150
	.uaword	.LBB160
	.uaword	.LBE160
	.byte	0x1
	.uahalf	0x14e
	.uleb128 0x2f
	.uaword	0x4177
	.byte	0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxAsclin_write16"
	.byte	0x1
	.uahalf	0x154
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB381
	.uaword	.LFE381
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4f7a
	.uleb128 0x4d
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x154
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x4e
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x154
	.uaword	0x4889
	.uaword	.LLST65
	.uleb128 0x4e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x154
	.uaword	0x232
	.uaword	.LLST66
	.uleb128 0x4f
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x156
	.uaword	0x4f7a
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4f80
	.uleb128 0x12
	.uaword	0x1f62
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxAsclin_write32"
	.byte	0x1
	.uahalf	0x162
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB382
	.uaword	.LFE382
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x4ff0
	.uleb128 0x4d
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x162
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x4e
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x162
	.uaword	0x48ff
	.uaword	.LLST67
	.uleb128 0x4e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x162
	.uaword	0x232
	.uaword	.LLST68
	.uleb128 0x4f
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x164
	.uaword	0x4f7a
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x4c
	.byte	0x1
	.string	"IfxAsclin_write8"
	.byte	0x1
	.uahalf	0x170
	.byte	0x1
	.uaword	0x232
	.uaword	.LFB383
	.uaword	.LFE383
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x505a
	.uleb128 0x4d
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x170
	.uaword	0x3a1d
	.byte	0x1
	.byte	0x64
	.uleb128 0x4e
	.uaword	.LASF20
	.byte	0x1
	.uahalf	0x170
	.uaword	0x4969
	.uaword	.LLST69
	.uleb128 0x4e
	.uaword	.LASF21
	.byte	0x1
	.uahalf	0x170
	.uaword	0x232
	.uaword	.LLST70
	.uleb128 0x4f
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x172
	.uaword	0x4f7a
	.byte	0x4
	.byte	0x84
	.sleb128 68
	.byte	0x9f
	.byte	0
	.uleb128 0x14
	.uaword	0x2c8
	.uaword	0x506a
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0x1
	.byte	0
	.uleb128 0x50
	.string	"IfxAsclin_cfg_indexMap"
	.byte	0x7
	.byte	0x47
	.uaword	0x508a
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.uaword	0x505a
	.uleb128 0x14
	.uaword	0x2c8
	.uaword	0x509f
	.uleb128 0x15
	.uaword	0x21ea
	.byte	0
	.byte	0
	.uleb128 0x50
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x9
	.byte	0x90
	.uaword	0x50bc
	.byte	0x1
	.byte	0x1
	.uleb128 0x42
	.uaword	0x508f
	.uleb128 0x51
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0xa
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x200
	.byte	0x1
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0xa
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uaword	0x5117
	.uleb128 0x53
	.uaword	0x200
	.byte	0
	.uleb128 0x52
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0xa
	.byte	0xdb
	.byte	0x1
	.byte	0x1
	.uaword	0x513f
	.uleb128 0x53
	.uaword	0x200
	.byte	0
	.uleb128 0x51
	.byte	0x1
	.string	"IfxScuCcu_getPllErayFrequency"
	.byte	0xb
	.uahalf	0x374
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x51
	.byte	0x1
	.string	"IfxScuCcu_getOsc0Frequency"
	.byte	0xb
	.uahalf	0x368
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x51
	.byte	0x1
	.string	"IfxScuCcu_getSpbFrequency"
	.byte	0xb
	.uahalf	0x392
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x51
	.byte	0x1
	.string	"IfxScuCcu_getBaud2Frequency"
	.byte	0xb
	.uahalf	0x33e
	.byte	0x1
	.uaword	0x240
	.byte	0x1
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x4b
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
	.uleb128 0x4c
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
	.uleb128 0x4d
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
	.uleb128 0x4e
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
	.uleb128 0x4f
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x50
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
	.uleb128 0x51
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x52
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
	.uleb128 0x53
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uaword	.LFE362
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-1
	.uaword	.LFE362
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE363
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE363
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE363
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10-1
	.uaword	.LFE364
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12-1
	.uaword	.LFE364
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19-1
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20-1
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21-1
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LFE366
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE367
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL29
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LFE368
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-1
	.uaword	.LFE369
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35-1
	.uaword	.LFE370
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE374
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE375
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL65
	.uaword	.LVL66-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL66-1
	.uaword	.LFE377
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL67
	.uaword	.LVL68-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL68-1
	.uaword	.LFE377
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL72
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL76
	.uaword	.LFE378
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL72
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL79
	.uaword	.LFE378
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL72
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL81
	.uaword	.LFE378
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL72
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL83
	.uaword	.LFE378
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL89-1
	.uaword	.LFE379
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL89-1
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL101
	.uaword	.LFE379
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x185
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL89-1
	.uaword	.LVL92
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL92
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL89-1
	.uaword	.LVL95
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL95
	.uaword	.LVL125
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL87
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL89-1
	.uaword	.LFE379
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x57
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL99
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL106
	.uaword	.LFE379
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL99
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL105
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL88
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL99
	.uaword	.LVL104
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL104
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL88
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL119
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x185
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x18e
	.byte	0xf7
	.uleb128 0x185
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL100
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL102
	.uaword	.LVL104
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x185
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x18e
	.byte	0xf7
	.uleb128 0x185
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL104
	.uaword	.LVL106
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x5
	.uleb128 0x185
	.byte	0x78
	.sleb128 0
	.byte	0xf7
	.uleb128 0x18e
	.byte	0xf7
	.uleb128 0x185
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x185
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x18e
	.byte	0xf7
	.uleb128 0x185
	.byte	0x1b
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL113
	.uaword	.LVL120
	.uahalf	0xe
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x185
	.byte	0x79
	.sleb128 0
	.byte	0xf7
	.uleb128 0x18e
	.byte	0xf7
	.uleb128 0x185
	.byte	0x1b
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL95
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL105
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL119
	.uaword	.LVL128
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL98
	.uaword	.LVL126
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL98
	.uaword	.LVL105
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL114
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL108
	.uaword	.LVL122
	.uahalf	0x1
	.byte	0x5c
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL99
	.uaword	.LVL106
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL107
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL119
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x51
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL109
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL116
	.uaword	.LVL119
	.uahalf	0x3
	.byte	0x76
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL88
	.uaword	.LVL89-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL89-1
	.uaword	.LFE379
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL91
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL92
	.uaword	.LVL106
	.uahalf	0x6
	.byte	0x7a
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL93
	.uaword	.LVL94
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL130
	.uaword	.LVL131
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL134
	.uaword	.LVL135
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL137
	.uaword	.LVL138
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL138
	.uaword	.LVL139
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL141
	.uaword	.LVL142
	.uahalf	0x3
	.byte	0x85
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL143
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL144
	.uaword	.LVL145
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL145
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0xc4
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
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
	.uaword	.LFB370
	.uaword	.LFE370-.LFB370
	.uaword	.LFB371
	.uaword	.LFE371-.LFB371
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
	.uaword	.LFB377
	.uaword	.LFE377-.LFB377
	.uaword	.LFB378
	.uaword	.LFE378-.LFB378
	.uaword	.LFB379
	.uaword	.LFE379-.LFB379
	.uaword	.LFB380
	.uaword	.LFE380-.LFB380
	.uaword	.LFB381
	.uaword	.LFE381-.LFB381
	.uaword	.LFB382
	.uaword	.LFE382-.LFB382
	.uaword	.LFB383
	.uaword	.LFE383-.LFB383
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	0
	.uaword	0
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	0
	.uaword	0
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	0
	.uaword	0
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB91
	.uaword	.LBE91
	.uaword	0
	.uaword	0
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0
	.uaword	0
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	0
	.uaword	0
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	0
	.uaword	0
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB138
	.uaword	.LBE138
	.uaword	0
	.uaword	0
	.uaword	.LBB135
	.uaword	.LBE135
	.uaword	.LBB139
	.uaword	.LBE139
	.uaword	0
	.uaword	0
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	0
	.uaword	0
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	0
	.uaword	0
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
	.uaword	.LFB370
	.uaword	.LFE370
	.uaword	.LFB371
	.uaword	.LFE371
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
	.uaword	.LFB377
	.uaword	.LFE377
	.uaword	.LFB378
	.uaword	.LFE378
	.uaword	.LFB379
	.uaword	.LFE379
	.uaword	.LFB380
	.uaword	.LFE380
	.uaword	.LFB381
	.uaword	.LFE381
	.uaword	.LFB382
	.uaword	.LFE382
	.uaword	.LFB383
	.uaword	.LFE383
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"reserved_29"
.LASF23:
	.string	"oversampling"
.LASF0:
	.string	"reserved_0"
.LASF10:
	.string	"reserved_1"
.LASF3:
	.string	"reserved_2"
.LASF6:
	.string	"reserved_7"
.LASF11:
	.string	"reserved_8"
.LASF12:
	.string	"INTLEVEL"
.LASF18:
	.string	"numerator"
.LASF4:
	.string	"reserved_4"
.LASF17:
	.string	"prescaler"
.LASF15:
	.string	"asclin"
.LASF14:
	.string	"CERBERUS"
.LASF9:
	.string	"reserved_10"
.LASF1:
	.string	"reserved_12"
.LASF20:
	.string	"data"
.LASF8:
	.string	"reserved_18"
.LASF21:
	.string	"count"
.LASF16:
	.string	"clockSource"
.LASF24:
	.string	"txData"
.LASF22:
	.string	"rxData"
.LASF19:
	.string	"denominator"
.LASF13:
	.string	"reserved_21"
.LASF5:
	.string	"reserved_24"
.LASF2:
	.string	"reserved_28"
	.extern	IfxScuCcu_getBaud2Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getSpbFrequency,STT_FUNC,0
	.extern	IfxScuCcu_getOsc0Frequency,STT_FUNC,0
	.extern	IfxScuCcu_getPllErayFrequency,STT_FUNC,0
	.extern	IfxAsclin_cfg_indexMap,STT_OBJECT,16
	.extern	IfxScuWdt_setCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_clearCpuEndinit,STT_FUNC,0
	.extern	IfxScuWdt_getCpuWatchdogPassword,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.3.0-infineon-1.0-fb21a99) 4.9.4 build on 2019-06-07"
