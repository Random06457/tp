/* getResource__12JKRFileCacheFUlPCc __ct__12JKRFileCacheFPCcPCc::getResource(unsigned long, char const *) */
/* missing reference */
/* 802D4EDC 002D1E1C  94 21 FE E0 */	stwu r1, -0x120(r1)
/* 802D4EE0 002D1E20  7C 08 02 A6 */	mflr r0
/* 802D4EE4 002D1E24  90 01 01 24 */	stw r0, 0x124(r1)
/* 802D4EE8 002D1E28  39 61 01 20 */	addi r11, r1, 0x120
/* 802D4EEC 002D1E2C  48 08 D2 F1 */	bl _savegpr_29
/* 802D4EF0 002D1E30  7C 7D 1B 78 */	mr r29, r3
/* 802D4EF4 002D1E34  7C BE 2B 78 */	mr r30, r5
/* 802D4EF8 002D1E38  80 63 00 48 */	lwz r3, 0x48(r3)
/* 802D4EFC 002D1E3C  48 09 3C E9 */	bl strlen
/* 802D4F00 002D1E40  3B E1 00 08 */	addi r31, r1, 8
/* 802D4F04 002D1E44  7F FF 1A 14 */	add r31, r31, r3
/* 802D4F08 002D1E48  38 61 00 08 */	addi r3, r1, 8
/* 802D4F0C 002D1E4C  80 9D 00 48 */	lwz r4, 0x48(r29)
/* 802D4F10 002D1E50  48 09 3C 1D */	bl strcpy
/* 802D4F14 002D1E54  7F A3 EB 78 */	mr r3, r29
/* 802D4F18 002D1E58  38 81 00 08 */	addi r4, r1, 8
/* 802D4F1C 002D1E5C  7F C5 F3 78 */	mr r5, r30
/* 802D4F20 002D1E60  48 00 04 F1 */	bl findFile__12JKRFileCacheCFPcPCc
/* 802D4F24 002D1E64  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802D4F28 002D1E68  41 82 00 20 */	beq lbl_802D4F48
/* 802D4F2C 002D1E6C  7F A3 EB 78 */	mr r3, r29
/* 802D4F30 002D1E70  7F E4 FB 78 */	mr r4, r31
/* 802D4F34 002D1E74  81 9D 00 00 */	lwz r12, 0(r29)
/* 802D4F38 002D1E78  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802D4F3C 002D1E7C  7D 89 03 A6 */	mtctr r12
/* 802D4F40 002D1E80  4E 80 04 21 */	bctrl
/* 802D4F44 002D1E84  48 00 00 08 */	b lbl_802D4F4C
lbl_802D4F48:
/* 802D4F48 002D1E88  38 60 00 00 */	li r3, 0
lbl_802D4F4C:
/* 802D4F4C 002D1E8C  39 61 01 20 */	addi r11, r1, 0x120
/* 802D4F50 002D1E90  48 08 D2 D9 */	bl _restgpr_29
/* 802D4F54 002D1E94  80 01 01 24 */	lwz r0, 0x124(r1)
/* 802D4F58 002D1E98  7C 08 03 A6 */	mtlr r0
/* 802D4F5C 002D1E9C  38 21 01 20 */	addi r1, r1, 0x120
/* 802D4F60 002D1EA0  4E 80 00 20 */	blr
