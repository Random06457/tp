/* 8002E0E0 0002B020  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002E0E4 0002B024  7C 08 02 A6 */ mflr r0
/* 8002E0E8 0002B028  90 01 00 14 */ stw r0, 0x14(r1)
/* 8002E0EC 0002B02C  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002E0F0 0002B030  93 C1 00 08 */ stw r30, 8(r1)
/* 8002E0F4 0002B034  7C 7E 1B 78 */ mr r30, r3
/* 8002E0F8 0002B038  54 60 06 3E */ clrlwi r0, r3, 0x18
/* 8002E0FC 0002B03C  28 00 00 07 */ cmplwi r0, 7
/* 8002E100 0002B040  41 82 00 0C */ beq lbl_8002E10C
/* 8002E104 0002B044  28 00 00 08 */ cmplwi r0, 8
/* 8002E108 0002B048  40 82 00 44 */ bne lbl_8002E14C
lbl_8002E10C:
/* 8002E10C 0002B04C  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002E110 0002B050  3B E3 61 C0 */ addi r31, r3, g_dComIfG_gameInfo@l
/* 8002E114 0002B054  88 1F 5E 8F */ lbz r0, 0x5e8f(r31)
/* 8002E118 0002B058  28 00 00 00 */ cmplwi r0, 0
/* 8002E11C 0002B05C  40 82 00 08 */ bne lbl_8002E124
/* 8002E120 0002B060  48 00 01 0D */ bl dComIfGp_createSubExpHeap2D
lbl_8002E124:
/* 8002E124 0002B064  38 00 00 05 */ li r0, 5
/* 8002E128 0002B068  98 1F 5E 8F */ stb r0, 0x5e8f(r31)
/* 8002E12C 0002B06C  48 00 02 1D */ bl dComIfGp_checkEmptySubHeap2D
/* 8002E130 0002B070  2C 03 00 00 */ cmpwi r3, 0
/* 8002E134 0002B074  41 80 00 38 */ blt lbl_8002E16C
/* 8002E138 0002B078  3C 80 80 40 */ lis r4, g_dComIfG_gameInfo@ha
/* 8002E13C 0002B07C  38 04 61 C0 */ addi r0, r4, g_dComIfG_gameInfo@l
/* 8002E140 0002B080  7C 60 1A 14 */ add r3, r0, r3
/* 8002E144 0002B084  9B C3 5E 90 */ stb r30, 0x5e90(r3)
/* 8002E148 0002B088  48 00 00 24 */ b lbl_8002E16C
lbl_8002E14C:
/* 8002E14C 0002B08C  28 00 00 00 */ cmplwi r0, 0
/* 8002E150 0002B090  40 82 00 10 */ bne lbl_8002E160
/* 8002E154 0002B094  38 60 00 00 */ li r3, 0
/* 8002E158 0002B098  48 00 00 31 */ bl dComIfGp_offHeapLockFlag
/* 8002E15C 0002B09C  48 00 00 10 */ b lbl_8002E16C
lbl_8002E160:
/* 8002E160 0002B0A0  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8002E164 0002B0A4  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8002E168 0002B0A8  9B C3 5E 8F */ stb r30, 0x5e8f(r3)
lbl_8002E16C:
/* 8002E16C 0002B0AC  38 60 00 01 */ li r3, 1
/* 8002E170 0002B0B0  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 8002E174 0002B0B4  83 C1 00 08 */ lwz r30, 8(r1)
/* 8002E178 0002B0B8  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002E17C 0002B0BC  7C 08 03 A6 */ mtlr r0
/* 8002E180 0002B0C0  38 21 00 10 */ addi r1, r1, 0x10
/* 8002E184 0002B0C4  4E 80 00 20 */ blr