.include "macros.inc"

.section .text, "ax" # 80267b4c


.global cBgS_Chk
cBgS_Chk:
/* 80267B4C 00264A8C  3C 80 80 3C */	lis r4, lbl_803C3F80@ha
/* 80267B50 00264A90  38 04 3F 80 */	addi r0, r4, lbl_803C3F80@l
/* 80267B54 00264A94  90 03 00 10 */	stw r0, 0x10(r3)
/* 80267B58 00264A98  38 00 00 00 */	li r0, 0
/* 80267B5C 00264A9C  90 03 00 00 */	stw r0, 0(r3)
/* 80267B60 00264AA0  90 03 00 04 */	stw r0, 4(r3)
/* 80267B64 00264AA4  38 00 00 01 */	li r0, 1
/* 80267B68 00264AA8  98 03 00 0C */	stb r0, 0xc(r3)
/* 80267B6C 00264AAC  4E 80 00 20 */	blr 

.global cBgS_Chk_NS_dtor
cBgS_Chk_NS_dtor:
/* 80267B70 00264AB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267B74 00264AB4  7C 08 02 A6 */	mflr r0
/* 80267B78 00264AB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267B7C 00264ABC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267B80 00264AC0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80267B84 00264AC4  41 82 00 1C */	beq lbl_80267BA0
/* 80267B88 00264AC8  3C A0 80 3C */	lis r5, lbl_803C3F80@ha
/* 80267B8C 00264ACC  38 05 3F 80 */	addi r0, r5, lbl_803C3F80@l
/* 80267B90 00264AD0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80267B94 00264AD4  7C 80 07 35 */	extsh. r0, r4
/* 80267B98 00264AD8  40 81 00 08 */	ble lbl_80267BA0
/* 80267B9C 00264ADC  48 06 71 A1 */	bl __dl
lbl_80267BA0:
/* 80267BA0 00264AE0  7F E3 FB 78 */	mr r3, r31
/* 80267BA4 00264AE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267BA8 00264AE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267BAC 00264AEC  7C 08 03 A6 */	mtlr r0
/* 80267BB0 00264AF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80267BB4 00264AF4  4E 80 00 20 */	blr 

.global cBgS_Chk_NS_SetExtChk
cBgS_Chk_NS_SetExtChk:
/* 80267BB8 00264AF8  80 04 00 00 */	lwz r0, 0(r4)
/* 80267BBC 00264AFC  90 03 00 00 */	stw r0, 0(r3)
/* 80267BC0 00264B00  80 04 00 04 */	lwz r0, 4(r4)
/* 80267BC4 00264B04  90 03 00 04 */	stw r0, 4(r3)
/* 80267BC8 00264B08  80 04 00 08 */	lwz r0, 8(r4)
/* 80267BCC 00264B0C  90 03 00 08 */	stw r0, 8(r3)
/* 80267BD0 00264B10  88 04 00 0C */	lbz r0, 0xc(r4)
/* 80267BD4 00264B14  98 03 00 0C */	stb r0, 0xc(r3)
/* 80267BD8 00264B18  4E 80 00 20 */	blr 

.global cBgS_Chk_NS_ChkSameActorPid
cBgS_Chk_NS_ChkSameActorPid:
/* 80267BDC 00264B1C  80 A3 00 08 */	lwz r5, 8(r3)
/* 80267BE0 00264B20  3C 05 00 01 */	addis r0, r5, 1
/* 80267BE4 00264B24  28 00 FF FF */	cmplwi r0, 0xffff
/* 80267BE8 00264B28  41 82 00 1C */	beq lbl_80267C04
/* 80267BEC 00264B2C  3C 04 00 01 */	addis r0, r4, 1
/* 80267BF0 00264B30  28 00 FF FF */	cmplwi r0, 0xffff
/* 80267BF4 00264B34  41 82 00 10 */	beq lbl_80267C04
/* 80267BF8 00264B38  88 03 00 0C */	lbz r0, 0xc(r3)
/* 80267BFC 00264B3C  28 00 00 00 */	cmplwi r0, 0
/* 80267C00 00264B40  40 82 00 0C */	bne lbl_80267C0C
lbl_80267C04:
/* 80267C04 00264B44  38 60 00 00 */	li r3, 0
/* 80267C08 00264B48  4E 80 00 20 */	blr 
lbl_80267C0C:
/* 80267C0C 00264B4C  7C 05 20 50 */	subf r0, r5, r4
/* 80267C10 00264B50  7C 00 00 34 */	cntlzw r0, r0
/* 80267C14 00264B54  54 03 DE 3E */	rlwinm r3, r0, 0x1b, 0x18, 0x1f
/* 80267C18 00264B58  4E 80 00 20 */	blr 
