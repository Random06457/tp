.include "macros.inc"

.section .text, "ax" # 802d69b8


.global JKRMemArchive
JKRMemArchive:
/* 802D69B8 002D38F8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D69BC 002D38FC  7C 08 02 A6 */	mflr r0
/* 802D69C0 002D3900  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D69C4 002D3904  39 61 00 20 */	addi r11, r1, 0x20
/* 802D69C8 002D3908  48 08 B8 15 */	bl func_803621DC
/* 802D69CC 002D390C  7C 7D 1B 78 */	mr r29, r3
/* 802D69D0 002D3910  7C 9E 23 78 */	mr r30, r4
/* 802D69D4 002D3914  7C BF 2B 78 */	mr r31, r5
/* 802D69D8 002D3918  38 A0 00 01 */	li r5, 1
/* 802D69DC 002D391C  4B FF F8 B9 */	bl JKRArchive
/* 802D69E0 002D3920  3C 60 80 3D */	lis r3, lbl_803CC2D8@ha
/* 802D69E4 002D3924  38 03 C2 D8 */	addi r0, r3, lbl_803CC2D8@l
/* 802D69E8 002D3928  90 1D 00 00 */	stw r0, 0(r29)
/* 802D69EC 002D392C  38 00 00 00 */	li r0, 0
/* 802D69F0 002D3930  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D69F4 002D3934  93 FD 00 60 */	stw r31, 0x60(r29)
/* 802D69F8 002D3938  7F A3 EB 78 */	mr r3, r29
/* 802D69FC 002D393C  7F C4 F3 78 */	mr r4, r30
/* 802D6A00 002D3940  80 BD 00 60 */	lwz r5, 0x60(r29)
/* 802D6A04 002D3944  48 00 01 C9 */	bl JKRMemArchive_NS_open
/* 802D6A08 002D3948  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D6A0C 002D394C  40 82 00 0C */	bne lbl_802D6A18
/* 802D6A10 002D3950  7F A3 EB 78 */	mr r3, r29
/* 802D6A14 002D3954  48 00 00 40 */	b lbl_802D6A54
lbl_802D6A18:
/* 802D6A18 002D3958  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 802D6A1C 002D395C  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 802D6A20 002D3960  90 1D 00 2C */	stw r0, 0x2c(r29)
/* 802D6A24 002D3964  80 9D 00 54 */	lwz r4, 0x54(r29)
/* 802D6A28 002D3968  80 7D 00 48 */	lwz r3, 0x48(r29)
/* 802D6A2C 002D396C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6A30 002D3970  7C 04 02 14 */	add r0, r4, r0
/* 802D6A34 002D3974  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802D6A38 002D3978  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D6A3C 002D397C  38 63 43 54 */	addi r3, r3, lbl_80434354@l
/* 802D6A40 002D3980  38 9D 00 18 */	addi r4, r29, 0x18
/* 802D6A44 002D3984  48 00 55 AD */	bl JSUPtrList_NS_prepend
/* 802D6A48 002D3988  38 00 00 01 */	li r0, 1
/* 802D6A4C 002D398C  98 1D 00 30 */	stb r0, 0x30(r29)
/* 802D6A50 002D3990  7F A3 EB 78 */	mr r3, r29
lbl_802D6A54:
/* 802D6A54 002D3994  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6A58 002D3998  48 08 B7 D1 */	bl func_80362228
/* 802D6A5C 002D399C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6A60 002D39A0  7C 08 03 A6 */	mtlr r0
/* 802D6A64 002D39A4  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6A68 002D39A8  4E 80 00 20 */	blr 

.global JKRMemArchive_X1_
JKRMemArchive_X1_:
/* 802D6A6C 002D39AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6A70 002D39B0  7C 08 02 A6 */	mflr r0
/* 802D6A74 002D39B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6A78 002D39B8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6A7C 002D39BC  48 08 B7 5D */	bl func_803621D8
/* 802D6A80 002D39C0  7C 7C 1B 78 */	mr r28, r3
/* 802D6A84 002D39C4  7C 9D 23 78 */	mr r29, r4
/* 802D6A88 002D39C8  7C BE 2B 78 */	mr r30, r5
/* 802D6A8C 002D39CC  7C DF 33 78 */	mr r31, r6
/* 802D6A90 002D39D0  38 A0 00 01 */	li r5, 1
/* 802D6A94 002D39D4  4B FF F8 01 */	bl JKRArchive
/* 802D6A98 002D39D8  3C 60 80 3D */	lis r3, lbl_803CC2D8@ha
/* 802D6A9C 002D39DC  38 03 C2 D8 */	addi r0, r3, lbl_803CC2D8@l
/* 802D6AA0 002D39E0  90 1C 00 00 */	stw r0, 0(r28)
/* 802D6AA4 002D39E4  38 00 00 00 */	li r0, 0
/* 802D6AA8 002D39E8  98 1C 00 30 */	stb r0, 0x30(r28)
/* 802D6AAC 002D39EC  7F 83 E3 78 */	mr r3, r28
/* 802D6AB0 002D39F0  7F A4 EB 78 */	mr r4, r29
/* 802D6AB4 002D39F4  7F C5 F3 78 */	mr r5, r30
/* 802D6AB8 002D39F8  7F E6 FB 78 */	mr r6, r31
/* 802D6ABC 002D39FC  48 00 02 75 */	bl JKRMemArchive_NS_open_X1_
/* 802D6AC0 002D3A00  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D6AC4 002D3A04  40 82 00 0C */	bne lbl_802D6AD0
/* 802D6AC8 002D3A08  7F 83 E3 78 */	mr r3, r28
/* 802D6ACC 002D3A0C  48 00 00 40 */	b lbl_802D6B0C
lbl_802D6AD0:
/* 802D6AD0 002D3A10  3C 60 52 41 */	lis r3, 0x52415243@ha
/* 802D6AD4 002D3A14  38 03 52 43 */	addi r0, r3, 0x52415243@l
/* 802D6AD8 002D3A18  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 802D6ADC 002D3A1C  80 9C 00 54 */	lwz r4, 0x54(r28)
/* 802D6AE0 002D3A20  80 7C 00 48 */	lwz r3, 0x48(r28)
/* 802D6AE4 002D3A24  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6AE8 002D3A28  7C 04 02 14 */	add r0, r4, r0
/* 802D6AEC 002D3A2C  90 1C 00 28 */	stw r0, 0x28(r28)
/* 802D6AF0 002D3A30  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D6AF4 002D3A34  38 63 43 54 */	addi r3, r3, lbl_80434354@l
/* 802D6AF8 002D3A38  38 9C 00 18 */	addi r4, r28, 0x18
/* 802D6AFC 002D3A3C  48 00 54 F5 */	bl JSUPtrList_NS_prepend
/* 802D6B00 002D3A40  38 00 00 01 */	li r0, 1
/* 802D6B04 002D3A44  98 1C 00 30 */	stb r0, 0x30(r28)
/* 802D6B08 002D3A48  7F 83 E3 78 */	mr r3, r28
lbl_802D6B0C:
/* 802D6B0C 002D3A4C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6B10 002D3A50  48 08 B7 15 */	bl func_80362224
/* 802D6B14 002D3A54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6B18 002D3A58  7C 08 03 A6 */	mtlr r0
/* 802D6B1C 002D3A5C  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6B20 002D3A60  4E 80 00 20 */	blr 
/* 802D6B24 002D3A64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6B28 002D3A68  7C 08 02 A6 */	mflr r0
/* 802D6B2C 002D3A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6B30 002D3A70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6B34 002D3A74  93 C1 00 08 */	stw r30, 8(r1)
/* 802D6B38 002D3A78  7C 7E 1B 79 */	or. r30, r3, r3
/* 802D6B3C 002D3A7C  7C 9F 23 78 */	mr r31, r4
/* 802D6B40 002D3A80  41 82 00 70 */	beq lbl_802D6BB0
/* 802D6B44 002D3A84  3C 60 80 3D */	lis r3, lbl_803CC2D8@ha
/* 802D6B48 002D3A88  38 03 C2 D8 */	addi r0, r3, lbl_803CC2D8@l
/* 802D6B4C 002D3A8C  90 1E 00 00 */	stw r0, 0(r30)
/* 802D6B50 002D3A90  88 1E 00 30 */	lbz r0, 0x30(r30)
/* 802D6B54 002D3A94  28 00 00 01 */	cmplwi r0, 1
/* 802D6B58 002D3A98  40 82 00 3C */	bne lbl_802D6B94
/* 802D6B5C 002D3A9C  88 1E 00 6C */	lbz r0, 0x6c(r30)
/* 802D6B60 002D3AA0  28 00 00 00 */	cmplwi r0, 0
/* 802D6B64 002D3AA4  41 82 00 18 */	beq lbl_802D6B7C
/* 802D6B68 002D3AA8  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 802D6B6C 002D3AAC  28 03 00 00 */	cmplwi r3, 0
/* 802D6B70 002D3AB0  41 82 00 0C */	beq lbl_802D6B7C
/* 802D6B74 002D3AB4  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 802D6B78 002D3AB8  4B FF 79 89 */	bl JKRHeap_NS_free
lbl_802D6B7C:
/* 802D6B7C 002D3ABC  3C 60 80 43 */	lis r3, lbl_80434354@ha
/* 802D6B80 002D3AC0  38 63 43 54 */	addi r3, r3, lbl_80434354@l
/* 802D6B84 002D3AC4  38 9E 00 18 */	addi r4, r30, 0x18
/* 802D6B88 002D3AC8  48 00 55 D5 */	bl JSUPtrList_NS_remove
/* 802D6B8C 002D3ACC  38 00 00 00 */	li r0, 0
/* 802D6B90 002D3AD0  98 1E 00 30 */	stb r0, 0x30(r30)
lbl_802D6B94:
/* 802D6B94 002D3AD4  7F C3 F3 78 */	mr r3, r30
/* 802D6B98 002D3AD8  38 80 00 00 */	li r4, 0
/* 802D6B9C 002D3ADC  4B FF F7 99 */	bl JKRArchive_NS_dtor
/* 802D6BA0 002D3AE0  7F E0 07 35 */	extsh. r0, r31
/* 802D6BA4 002D3AE4  40 81 00 0C */	ble lbl_802D6BB0
/* 802D6BA8 002D3AE8  7F C3 F3 78 */	mr r3, r30
/* 802D6BAC 002D3AEC  4B FF 81 91 */	bl __dl
lbl_802D6BB0:
/* 802D6BB0 002D3AF0  7F C3 F3 78 */	mr r3, r30
/* 802D6BB4 002D3AF4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6BB8 002D3AF8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D6BBC 002D3AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6BC0 002D3B00  7C 08 03 A6 */	mtlr r0
/* 802D6BC4 002D3B04  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6BC8 002D3B08  4E 80 00 20 */	blr 

.global JKRMemArchive_NS_open
JKRMemArchive_NS_open:
/* 802D6BCC 002D3B0C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6BD0 002D3B10  7C 08 02 A6 */	mflr r0
/* 802D6BD4 002D3B14  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6BD8 002D3B18  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802D6BDC 002D3B1C  7C 7F 1B 78 */	mr r31, r3
/* 802D6BE0 002D3B20  38 00 00 00 */	li r0, 0
/* 802D6BE4 002D3B24  90 03 00 64 */	stw r0, 0x64(r3)
/* 802D6BE8 002D3B28  90 03 00 44 */	stw r0, 0x44(r3)
/* 802D6BEC 002D3B2C  90 03 00 68 */	stw r0, 0x68(r3)
/* 802D6BF0 002D3B30  90 03 00 48 */	stw r0, 0x48(r3)
/* 802D6BF4 002D3B34  90 03 00 4C */	stw r0, 0x4c(r3)
/* 802D6BF8 002D3B38  90 03 00 54 */	stw r0, 0x54(r3)
/* 802D6BFC 002D3B3C  98 03 00 6C */	stb r0, 0x6c(r3)
/* 802D6C00 002D3B40  90 A3 00 60 */	stw r5, 0x60(r3)
/* 802D6C04 002D3B44  80 03 00 60 */	lwz r0, 0x60(r3)
/* 802D6C08 002D3B48  2C 00 00 01 */	cmpwi r0, 1
/* 802D6C0C 002D3B4C  40 82 00 4C */	bne lbl_802D6C58
/* 802D6C10 002D3B50  38 01 00 14 */	addi r0, r1, 0x14
/* 802D6C14 002D3B54  90 01 00 08 */	stw r0, 8(r1)
/* 802D6C18 002D3B58  7C 83 23 78 */	mr r3, r4
/* 802D6C1C 002D3B5C  38 80 00 00 */	li r4, 0
/* 802D6C20 002D3B60  38 A0 00 01 */	li r5, 1
/* 802D6C24 002D3B64  38 C0 00 00 */	li r6, 0
/* 802D6C28 002D3B68  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 802D6C2C 002D3B6C  39 00 00 01 */	li r8, 1
/* 802D6C30 002D3B70  39 20 00 00 */	li r9, 0
/* 802D6C34 002D3B74  39 5F 00 5C */	addi r10, r31, 0x5c
/* 802D6C38 002D3B78  48 00 30 1D */	bl JKRDvdRipper_NS_loadToMainRAM_X1_
/* 802D6C3C 002D3B7C  90 7F 00 64 */	stw r3, 0x64(r31)
/* 802D6C40 002D3B80  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D6C44 002D3B84  28 03 00 00 */	cmplwi r3, 0
/* 802D6C48 002D3B88  41 82 00 54 */	beq lbl_802D6C9C
/* 802D6C4C 002D3B8C  80 81 00 14 */	lwz r4, 0x14(r1)
/* 802D6C50 002D3B90  48 06 49 31 */	bl DCInvalidateRange
/* 802D6C54 002D3B94  48 00 00 48 */	b lbl_802D6C9C
lbl_802D6C58:
/* 802D6C58 002D3B98  38 01 00 10 */	addi r0, r1, 0x10
/* 802D6C5C 002D3B9C  90 01 00 08 */	stw r0, 8(r1)
/* 802D6C60 002D3BA0  7C 83 23 78 */	mr r3, r4
/* 802D6C64 002D3BA4  38 80 00 00 */	li r4, 0
/* 802D6C68 002D3BA8  38 A0 00 01 */	li r5, 1
/* 802D6C6C 002D3BAC  38 C0 00 00 */	li r6, 0
/* 802D6C70 002D3BB0  80 FF 00 38 */	lwz r7, 0x38(r31)
/* 802D6C74 002D3BB4  39 00 00 02 */	li r8, 2
/* 802D6C78 002D3BB8  39 20 00 00 */	li r9, 0
/* 802D6C7C 002D3BBC  39 5F 00 5C */	addi r10, r31, 0x5c
/* 802D6C80 002D3BC0  48 00 2F D5 */	bl JKRDvdRipper_NS_loadToMainRAM_X1_
/* 802D6C84 002D3BC4  90 7F 00 64 */	stw r3, 0x64(r31)
/* 802D6C88 002D3BC8  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D6C8C 002D3BCC  28 03 00 00 */	cmplwi r3, 0
/* 802D6C90 002D3BD0  41 82 00 0C */	beq lbl_802D6C9C
/* 802D6C94 002D3BD4  80 81 00 10 */	lwz r4, 0x10(r1)
/* 802D6C98 002D3BD8  48 06 48 E9 */	bl DCInvalidateRange
lbl_802D6C9C:
/* 802D6C9C 002D3BDC  80 7F 00 64 */	lwz r3, 0x64(r31)
/* 802D6CA0 002D3BE0  28 03 00 00 */	cmplwi r3, 0
/* 802D6CA4 002D3BE4  40 82 00 10 */	bne lbl_802D6CB4
/* 802D6CA8 002D3BE8  38 00 00 00 */	li r0, 0
/* 802D6CAC 002D3BEC  98 1F 00 3C */	stb r0, 0x3c(r31)
/* 802D6CB0 002D3BF0  48 00 00 60 */	b lbl_802D6D10
lbl_802D6CB4:
/* 802D6CB4 002D3BF4  80 03 00 08 */	lwz r0, 8(r3)
/* 802D6CB8 002D3BF8  7C 03 02 14 */	add r0, r3, r0
/* 802D6CBC 002D3BFC  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802D6CC0 002D3C00  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6CC4 002D3C04  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6CC8 002D3C08  7C 03 02 14 */	add r0, r3, r0
/* 802D6CCC 002D3C0C  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802D6CD0 002D3C10  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6CD4 002D3C14  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D6CD8 002D3C18  7C 03 02 14 */	add r0, r3, r0
/* 802D6CDC 002D3C1C  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 802D6CE0 002D3C20  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6CE4 002D3C24  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D6CE8 002D3C28  7C 03 02 14 */	add r0, r3, r0
/* 802D6CEC 002D3C2C  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802D6CF0 002D3C30  80 9F 00 64 */	lwz r4, 0x64(r31)
/* 802D6CF4 002D3C34  80 64 00 0C */	lwz r3, 0xc(r4)
/* 802D6CF8 002D3C38  80 04 00 08 */	lwz r0, 8(r4)
/* 802D6CFC 002D3C3C  7C 00 1A 14 */	add r0, r0, r3
/* 802D6D00 002D3C40  7C 04 02 14 */	add r0, r4, r0
/* 802D6D04 002D3C44  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802D6D08 002D3C48  38 00 00 01 */	li r0, 1
/* 802D6D0C 002D3C4C  98 1F 00 6C */	stb r0, 0x6c(r31)
lbl_802D6D10:
/* 802D6D10 002D3C50  88 7F 00 3C */	lbz r3, 0x3c(r31)
/* 802D6D14 002D3C54  30 03 FF FF */	addic r0, r3, -1
/* 802D6D18 002D3C58  7C 60 19 10 */	subfe r3, r0, r3
/* 802D6D1C 002D3C5C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802D6D20 002D3C60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6D24 002D3C64  7C 08 03 A6 */	mtlr r0
/* 802D6D28 002D3C68  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6D2C 002D3C6C  4E 80 00 20 */	blr 

.global JKRMemArchive_NS_open_X1_
JKRMemArchive_NS_open_X1_:
/* 802D6D30 002D3C70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6D34 002D3C74  7C 08 02 A6 */	mflr r0
/* 802D6D38 002D3C78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6D3C 002D3C7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6D40 002D3C80  7C 7F 1B 78 */	mr r31, r3
/* 802D6D44 002D3C84  90 83 00 64 */	stw r4, 0x64(r3)
/* 802D6D48 002D3C88  80 63 00 64 */	lwz r3, 0x64(r3)
/* 802D6D4C 002D3C8C  80 03 00 08 */	lwz r0, 8(r3)
/* 802D6D50 002D3C90  7C 03 02 14 */	add r0, r3, r0
/* 802D6D54 002D3C94  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802D6D58 002D3C98  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6D5C 002D3C9C  80 03 00 04 */	lwz r0, 4(r3)
/* 802D6D60 002D3CA0  7C 03 02 14 */	add r0, r3, r0
/* 802D6D64 002D3CA4  90 1F 00 48 */	stw r0, 0x48(r31)
/* 802D6D68 002D3CA8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6D6C 002D3CAC  80 03 00 0C */	lwz r0, 0xc(r3)
/* 802D6D70 002D3CB0  7C 03 02 14 */	add r0, r3, r0
/* 802D6D74 002D3CB4  90 1F 00 4C */	stw r0, 0x4c(r31)
/* 802D6D78 002D3CB8  80 7F 00 44 */	lwz r3, 0x44(r31)
/* 802D6D7C 002D3CBC  80 03 00 14 */	lwz r0, 0x14(r3)
/* 802D6D80 002D3CC0  7C 03 02 14 */	add r0, r3, r0
/* 802D6D84 002D3CC4  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802D6D88 002D3CC8  80 BF 00 64 */	lwz r5, 0x64(r31)
/* 802D6D8C 002D3CCC  80 65 00 0C */	lwz r3, 0xc(r5)
/* 802D6D90 002D3CD0  80 05 00 08 */	lwz r0, 8(r5)
/* 802D6D94 002D3CD4  7C 00 1A 14 */	add r0, r0, r3
/* 802D6D98 002D3CD8  7C 05 02 14 */	add r0, r5, r0
/* 802D6D9C 002D3CDC  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802D6DA0 002D3CE0  20 06 00 01 */	subfic r0, r6, 1
/* 802D6DA4 002D3CE4  7C 00 00 34 */	cntlzw r0, r0
/* 802D6DA8 002D3CE8  54 00 D9 7E */	srwi r0, r0, 5
/* 802D6DAC 002D3CEC  98 1F 00 6C */	stb r0, 0x6c(r31)
/* 802D6DB0 002D3CF0  7C 83 23 78 */	mr r3, r4
/* 802D6DB4 002D3CF4  4B FF 7A 89 */	bl JKRHeap_NS_findFromRoot
/* 802D6DB8 002D3CF8  90 7F 00 38 */	stw r3, 0x38(r31)
/* 802D6DBC 002D3CFC  38 00 00 00 */	li r0, 0
/* 802D6DC0 002D3D00  90 1F 00 5C */	stw r0, 0x5c(r31)
/* 802D6DC4 002D3D04  38 60 00 01 */	li r3, 1
/* 802D6DC8 002D3D08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D6DCC 002D3D0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6DD0 002D3D10  7C 08 03 A6 */	mtlr r0
/* 802D6DD4 002D3D14  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6DD8 002D3D18  4E 80 00 20 */	blr 
/* 802D6DDC 002D3D1C  80 04 00 10 */	lwz r0, 0x10(r4)
/* 802D6DE0 002D3D20  28 00 00 00 */	cmplwi r0, 0
/* 802D6DE4 002D3D24  40 82 00 14 */	bne lbl_802D6DF8
/* 802D6DE8 002D3D28  80 63 00 68 */	lwz r3, 0x68(r3)
/* 802D6DEC 002D3D2C  80 04 00 08 */	lwz r0, 8(r4)
/* 802D6DF0 002D3D30  7C 03 02 14 */	add r0, r3, r0
/* 802D6DF4 002D3D34  90 04 00 10 */	stw r0, 0x10(r4)
lbl_802D6DF8:
/* 802D6DF8 002D3D38  28 05 00 00 */	cmplwi r5, 0
/* 802D6DFC 002D3D3C  41 82 00 0C */	beq lbl_802D6E08
/* 802D6E00 002D3D40  80 04 00 0C */	lwz r0, 0xc(r4)
/* 802D6E04 002D3D44  90 05 00 00 */	stw r0, 0(r5)
lbl_802D6E08:
/* 802D6E08 002D3D48  80 64 00 10 */	lwz r3, 0x10(r4)
/* 802D6E0C 002D3D4C  4E 80 00 20 */	blr 
/* 802D6E10 002D3D50  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802D6E14 002D3D54  7C 08 02 A6 */	mflr r0
/* 802D6E18 002D3D58  90 01 00 24 */	stw r0, 0x24(r1)
/* 802D6E1C 002D3D5C  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6E20 002D3D60  48 08 B3 BD */	bl func_803621DC
/* 802D6E24 002D3D64  7C 9D 23 78 */	mr r29, r4
/* 802D6E28 002D3D68  7C A8 2B 78 */	mr r8, r5
/* 802D6E2C 002D3D6C  7C FE 3B 78 */	mr r30, r7
/* 802D6E30 002D3D70  83 E6 00 0C */	lwz r31, 0xc(r6)
/* 802D6E34 002D3D74  7C 1F 40 40 */	cmplw r31, r8
/* 802D6E38 002D3D78  40 81 00 08 */	ble lbl_802D6E40
/* 802D6E3C 002D3D7C  7D 1F 43 78 */	mr r31, r8
lbl_802D6E40:
/* 802D6E40 002D3D80  80 86 00 10 */	lwz r4, 0x10(r6)
/* 802D6E44 002D3D84  28 04 00 00 */	cmplwi r4, 0
/* 802D6E48 002D3D88  41 82 00 14 */	beq lbl_802D6E5C
/* 802D6E4C 002D3D8C  7F A3 EB 78 */	mr r3, r29
/* 802D6E50 002D3D90  7F E5 FB 78 */	mr r5, r31
/* 802D6E54 002D3D94  4B D2 C6 ED */	bl func_80003540
/* 802D6E58 002D3D98  48 00 00 50 */	b lbl_802D6EA8
lbl_802D6E5C:
/* 802D6E5C 002D3D9C  80 06 00 04 */	lwz r0, 4(r6)
/* 802D6E60 002D3DA0  54 04 46 3E */	srwi r4, r0, 0x18
/* 802D6E64 002D3DA4  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D6E68 002D3DA8  40 82 00 0C */	bne lbl_802D6E74
/* 802D6E6C 002D3DAC  38 E0 00 00 */	li r7, 0
/* 802D6E70 002D3DB0  48 00 00 18 */	b lbl_802D6E88
lbl_802D6E74:
/* 802D6E74 002D3DB4  54 80 06 31 */	rlwinm. r0, r4, 0, 0x18, 0x18
/* 802D6E78 002D3DB8  41 82 00 0C */	beq lbl_802D6E84
/* 802D6E7C 002D3DBC  38 E0 00 02 */	li r7, 2
/* 802D6E80 002D3DC0  48 00 00 08 */	b lbl_802D6E88
lbl_802D6E84:
/* 802D6E84 002D3DC4  38 E0 00 01 */	li r7, 1
lbl_802D6E88:
/* 802D6E88 002D3DC8  80 63 00 68 */	lwz r3, 0x68(r3)
/* 802D6E8C 002D3DCC  80 06 00 08 */	lwz r0, 8(r6)
/* 802D6E90 002D3DD0  7C 63 02 14 */	add r3, r3, r0
/* 802D6E94 002D3DD4  7F E4 FB 78 */	mr r4, r31
/* 802D6E98 002D3DD8  7F A5 EB 78 */	mr r5, r29
/* 802D6E9C 002D3DDC  7D 06 43 78 */	mr r6, r8
/* 802D6EA0 002D3DE0  48 00 00 BD */	bl JKRMemArchive_NS_fetchResource_subroutine
/* 802D6EA4 002D3DE4  7C 7F 1B 78 */	mr r31, r3
lbl_802D6EA8:
/* 802D6EA8 002D3DE8  28 1E 00 00 */	cmplwi r30, 0
/* 802D6EAC 002D3DEC  41 82 00 08 */	beq lbl_802D6EB4
/* 802D6EB0 002D3DF0  93 FE 00 00 */	stw r31, 0(r30)
lbl_802D6EB4:
/* 802D6EB4 002D3DF4  7F A3 EB 78 */	mr r3, r29
/* 802D6EB8 002D3DF8  39 61 00 20 */	addi r11, r1, 0x20
/* 802D6EBC 002D3DFC  48 08 B3 6D */	bl func_80362228
/* 802D6EC0 002D3E00  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802D6EC4 002D3E04  7C 08 03 A6 */	mtlr r0
/* 802D6EC8 002D3E08  38 21 00 20 */	addi r1, r1, 0x20
/* 802D6ECC 002D3E0C  4E 80 00 20 */	blr 
/* 802D6ED0 002D3E10  80 03 00 44 */	lwz r0, 0x44(r3)
/* 802D6ED4 002D3E14  28 00 00 00 */	cmplwi r0, 0
/* 802D6ED8 002D3E18  4D 82 00 20 */	beqlr 
/* 802D6EDC 002D3E1C  88 03 00 3C */	lbz r0, 0x3c(r3)
/* 802D6EE0 002D3E20  28 00 00 01 */	cmplwi r0, 1
/* 802D6EE4 002D3E24  4D 82 00 20 */	beqlr 
/* 802D6EE8 002D3E28  80 C3 00 4C */	lwz r6, 0x4c(r3)
/* 802D6EEC 002D3E2C  38 E0 00 00 */	li r7, 0
/* 802D6EF0 002D3E30  38 A0 00 00 */	li r5, 0
/* 802D6EF4 002D3E34  48 00 00 18 */	b lbl_802D6F0C
lbl_802D6EF8:
/* 802D6EF8 002D3E38  80 06 00 10 */	lwz r0, 0x10(r6)
/* 802D6EFC 002D3E3C  28 00 00 00 */	cmplwi r0, 0
/* 802D6F00 002D3E40  41 82 00 08 */	beq lbl_802D6F08
/* 802D6F04 002D3E44  90 A6 00 10 */	stw r5, 0x10(r6)
lbl_802D6F08:
/* 802D6F08 002D3E48  38 E7 00 01 */	addi r7, r7, 1
lbl_802D6F0C:
/* 802D6F0C 002D3E4C  80 83 00 44 */	lwz r4, 0x44(r3)
/* 802D6F10 002D3E50  80 04 00 08 */	lwz r0, 8(r4)
/* 802D6F14 002D3E54  7C 07 00 40 */	cmplw r7, r0
/* 802D6F18 002D3E58  41 80 FF E0 */	blt lbl_802D6EF8
/* 802D6F1C 002D3E5C  4E 80 00 20 */	blr 
/* 802D6F20 002D3E60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6F24 002D3E64  7C 08 02 A6 */	mflr r0
/* 802D6F28 002D3E68  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6F2C 002D3E6C  4B FF F8 09 */	bl JKRArchive_NS_findPtrResource
/* 802D6F30 002D3E70  28 03 00 00 */	cmplwi r3, 0
/* 802D6F34 002D3E74  40 82 00 0C */	bne lbl_802D6F40
/* 802D6F38 002D3E78  38 60 00 00 */	li r3, 0
/* 802D6F3C 002D3E7C  48 00 00 10 */	b lbl_802D6F4C
lbl_802D6F40:
/* 802D6F40 002D3E80  38 00 00 00 */	li r0, 0
/* 802D6F44 002D3E84  90 03 00 10 */	stw r0, 0x10(r3)
/* 802D6F48 002D3E88  38 60 00 01 */	li r3, 1
lbl_802D6F4C:
/* 802D6F4C 002D3E8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D6F50 002D3E90  7C 08 03 A6 */	mtlr r0
/* 802D6F54 002D3E94  38 21 00 10 */	addi r1, r1, 0x10
/* 802D6F58 002D3E98  4E 80 00 20 */	blr 

.global JKRMemArchive_NS_fetchResource_subroutine
JKRMemArchive_NS_fetchResource_subroutine:
/* 802D6F5C 002D3E9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D6F60 002D3EA0  7C 08 02 A6 */	mflr r0
/* 802D6F64 002D3EA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D6F68 002D3EA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D6F6C 002D3EAC  7C 68 1B 78 */	mr r8, r3
/* 802D6F70 002D3EB0  7C 9F 23 78 */	mr r31, r4
/* 802D6F74 002D3EB4  2C 07 00 00 */	cmpwi r7, 0
/* 802D6F78 002D3EB8  41 82 00 14 */	beq lbl_802D6F8C
/* 802D6F7C 002D3EBC  41 80 00 80 */	blt lbl_802D6FFC
/* 802D6F80 002D3EC0  2C 07 00 03 */	cmpwi r7, 3
/* 802D6F84 002D3EC4  40 80 00 78 */	bge lbl_802D6FFC
/* 802D6F88 002D3EC8  48 00 00 28 */	b lbl_802D6FB0
lbl_802D6F8C:
/* 802D6F8C 002D3ECC  7C 1F 30 40 */	cmplw r31, r6
/* 802D6F90 002D3ED0  40 81 00 08 */	ble lbl_802D6F98
/* 802D6F94 002D3ED4  7C DF 33 78 */	mr r31, r6
lbl_802D6F98:
/* 802D6F98 002D3ED8  7C A3 2B 78 */	mr r3, r5
/* 802D6F9C 002D3EDC  7D 04 43 78 */	mr r4, r8
/* 802D6FA0 002D3EE0  7F E5 FB 78 */	mr r5, r31
/* 802D6FA4 002D3EE4  4B D2 C5 9D */	bl func_80003540
/* 802D6FA8 002D3EE8  7F E3 FB 78 */	mr r3, r31
/* 802D6FAC 002D3EEC  48 00 00 70 */	b lbl_802D701C
lbl_802D6FB0:
/* 802D6FB0 002D3EF0  88 E8 00 07 */	lbz r7, 7(r8)
/* 802D6FB4 002D3EF4  88 88 00 06 */	lbz r4, 6(r8)
/* 802D6FB8 002D3EF8  88 68 00 04 */	lbz r3, 4(r8)
/* 802D6FBC 002D3EFC  88 08 00 05 */	lbz r0, 5(r8)
/* 802D6FC0 002D3F00  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D6FC4 002D3F04  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D6FC8 002D3F08  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D6FCC 002D3F0C  7C E0 03 78 */	or r0, r7, r0
/* 802D6FD0 002D3F10  7C 1F 03 78 */	mr r31, r0
/* 802D6FD4 002D3F14  7C 00 30 40 */	cmplw r0, r6
/* 802D6FD8 002D3F18  40 81 00 08 */	ble lbl_802D6FE0
/* 802D6FDC 002D3F1C  7C DF 33 78 */	mr r31, r6
lbl_802D6FE0:
/* 802D6FE0 002D3F20  7D 03 43 78 */	mr r3, r8
/* 802D6FE4 002D3F24  7C A4 2B 78 */	mr r4, r5
/* 802D6FE8 002D3F28  7F E5 FB 78 */	mr r5, r31
/* 802D6FEC 002D3F2C  38 C0 00 00 */	li r6, 0
/* 802D6FF0 002D3F30  48 00 49 99 */	bl JKRDecomp_NS_orderSync
/* 802D6FF4 002D3F34  7F E3 FB 78 */	mr r3, r31
/* 802D6FF8 002D3F38  48 00 00 24 */	b lbl_802D701C
lbl_802D6FFC:
/* 802D6FFC 002D3F3C  3C 60 80 3A */	lis r3, lbl_8039D160@ha
/* 802D7000 002D3F40  38 63 D1 60 */	addi r3, r3, lbl_8039D160@l
/* 802D7004 002D3F44  38 80 02 D3 */	li r4, 0x2d3
/* 802D7008 002D3F48  38 A3 00 12 */	addi r5, r3, 0x12
/* 802D700C 002D3F4C  38 C3 00 15 */	addi r6, r3, 0x15
/* 802D7010 002D3F50  4C C6 31 82 */	crclr 6
/* 802D7014 002D3F54  48 00 B1 E9 */	bl JUTException_NS_panic_f
/* 802D7018 002D3F58  38 60 00 00 */	li r3, 0
lbl_802D701C:
/* 802D701C 002D3F5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D7020 002D3F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D7024 002D3F64  7C 08 03 A6 */	mtlr r0
/* 802D7028 002D3F68  38 21 00 10 */	addi r1, r1, 0x10
/* 802D702C 002D3F6C  4E 80 00 20 */	blr 
/* 802D7030 002D3F70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802D7034 002D3F74  7C 08 02 A6 */	mflr r0
/* 802D7038 002D3F78  90 01 00 14 */	stw r0, 0x14(r1)
/* 802D703C 002D3F7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802D7040 002D3F80  93 C1 00 08 */	stw r30, 8(r1)
/* 802D7044 002D3F84  7C 7E 1B 78 */	mr r30, r3
/* 802D7048 002D3F88  7C 9F 23 78 */	mr r31, r4
/* 802D704C 002D3F8C  4B FF F6 E9 */	bl JKRArchive_NS_findPtrResource
/* 802D7050 002D3F90  28 03 00 00 */	cmplwi r3, 0
/* 802D7054 002D3F94  40 82 00 0C */	bne lbl_802D7060
/* 802D7058 002D3F98  38 60 FF FF */	li r3, -1
/* 802D705C 002D3F9C  48 00 00 4C */	b lbl_802D70A8
lbl_802D7060:
/* 802D7060 002D3FA0  80 03 00 04 */	lwz r0, 4(r3)
/* 802D7064 002D3FA4  54 00 47 7B */	rlwinm. r0, r0, 8, 0x1d, 0x1d
/* 802D7068 002D3FA8  40 82 00 20 */	bne lbl_802D7088
/* 802D706C 002D3FAC  7F C3 F3 78 */	mr r3, r30
/* 802D7070 002D3FB0  7F E4 FB 78 */	mr r4, r31
/* 802D7074 002D3FB4  81 9E 00 00 */	lwz r12, 0(r30)
/* 802D7078 002D3FB8  81 8C 00 30 */	lwz r12, 0x30(r12)
/* 802D707C 002D3FBC  7D 89 03 A6 */	mtctr r12
/* 802D7080 002D3FC0  4E 80 04 21 */	bctrl 
/* 802D7084 002D3FC4  48 00 00 24 */	b lbl_802D70A8
lbl_802D7088:
/* 802D7088 002D3FC8  88 BF 00 07 */	lbz r5, 7(r31)
/* 802D708C 002D3FCC  88 9F 00 06 */	lbz r4, 6(r31)
/* 802D7090 002D3FD0  88 7F 00 04 */	lbz r3, 4(r31)
/* 802D7094 002D3FD4  88 1F 00 05 */	lbz r0, 5(r31)
/* 802D7098 002D3FD8  54 00 80 1E */	slwi r0, r0, 0x10
/* 802D709C 002D3FDC  50 60 C0 0E */	rlwimi r0, r3, 0x18, 0, 7
/* 802D70A0 002D3FE0  50 80 44 2E */	rlwimi r0, r4, 8, 0x10, 0x17
/* 802D70A4 002D3FE4  7C A3 03 78 */	or r3, r5, r0
lbl_802D70A8:
/* 802D70A8 002D3FE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802D70AC 002D3FEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802D70B0 002D3FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802D70B4 002D3FF4  7C 08 03 A6 */	mtlr r0
/* 802D70B8 002D3FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 802D70BC 002D3FFC  4E 80 00 20 */	blr 
