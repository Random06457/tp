/* 8020D650 0020A590  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8020D654 0020A594  7C 08 02 A6 */ mflr r0
/* 8020D658 0020A598  90 01 00 14 */ stw r0, 0x14(r1)
/* 8020D65C 0020A59C  4B FF FE 41 */ bl dMeterMap_c_NS_isEnableDispMap
/* 8020D660 0020A5A0  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8020D664 0020A5A4  41 82 00 18 */ beq lbl_8020D67C
/* 8020D668 0020A5A8  4B FF FE C1 */ bl dMeterMap_c_NS_getMapDispSizeTypeNo
/* 8020D66C 0020A5AC  2C 03 00 00 */ cmpwi r3, 0
/* 8020D670 0020A5B0  41 82 00 0C */ beq lbl_8020D67C
/* 8020D674 0020A5B4  38 60 00 01 */ li r3, 1
/* 8020D678 0020A5B8  48 00 00 08 */ b lbl_8020D680
lbl_8020D67C:
/* 8020D67C 0020A5BC  38 60 00 00 */ li r3, 0
lbl_8020D680:
/* 8020D680 0020A5C0  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8020D684 0020A5C4  7C 08 03 A6 */ mtlr r0
/* 8020D688 0020A5C8  38 21 00 10 */ addi r1, r1, 0x10
/* 8020D68C 0020A5CC  4E 80 00 20 */ blr
