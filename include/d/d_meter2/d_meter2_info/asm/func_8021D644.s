/* 8021D644 0021A584  94 21 FF D0 */ stwu r1, -0x30(r1)
/* 8021D648 0021A588  7C 08 02 A6 */ mflr r0
/* 8021D64C 0021A58C  90 01 00 34 */ stw r0, 0x34(r1)
/* 8021D650 0021A590  39 61 00 30 */ addi r11, r1, 0x30
/* 8021D654 0021A594  48 14 4B 89 */ bl _savegpr_29
/* 8021D658 0021A598  7C BF 2B 78 */ mr r31, r5
/* 8021D65C 0021A59C  3C 60 80 3A */ lis r3, lbl_80398A78@ha
/* 8021D660 0021A5A0  3B C3 8A 78 */ addi r30, r3, lbl_80398A78@l
/* 8021D664 0021A5A4  54 9D 15 BA */ rlwinm r29, r4, 2, 0x16, 0x1d
/* 8021D668 0021A5A8  38 7E 04 0C */ addi r3, r30, 0x40c
/* 8021D66C 0021A5AC  7C 03 E8 2E */ lwzx r0, r3, r29
/* 8021D670 0021A5B0  90 01 00 18 */ stw r0, 0x18(r1)
/* 8021D674 0021A5B4  38 7E 03 78 */ addi r3, r30, 0x378
/* 8021D678 0021A5B8  7C 03 E8 2E */ lwzx r0, r3, r29
/* 8021D67C 0021A5BC  90 01 00 1C */ stw r0, 0x1c(r1)
/* 8021D680 0021A5C0  7F E3 FB 78 */ mr r3, r31
/* 8021D684 0021A5C4  38 81 00 1C */ addi r4, r1, 0x1c
/* 8021D688 0021A5C8  38 A1 00 18 */ addi r5, r1, 0x18
/* 8021D68C 0021A5CC  81 9F 00 00 */ lwz r12, 0(r31)
/* 8021D690 0021A5D0  81 8C 01 30 */ lwz r12, 0x130(r12)
/* 8021D694 0021A5D4  7D 89 03 A6 */ mtctr r12
/* 8021D698 0021A5D8  4E 80 04 21 */ bctrl
/* 8021D69C 0021A5DC  38 7E 06 5C */ addi r3, r30, 0x65c
/* 8021D6A0 0021A5E0  7C 03 E8 2E */ lwzx r0, r3, r29
/* 8021D6A4 0021A5E4  90 01 00 08 */ stw r0, 8(r1)
/* 8021D6A8 0021A5E8  38 7E 05 C8 */ addi r3, r30, 0x5c8
/* 8021D6AC 0021A5EC  7C 03 E8 2E */ lwzx r0, r3, r29
/* 8021D6B0 0021A5F0  90 01 00 0C */ stw r0, 0xc(r1)
/* 8021D6B4 0021A5F4  38 7E 05 34 */ addi r3, r30, 0x534
/* 8021D6B8 0021A5F8  7C 03 E8 2E */ lwzx r0, r3, r29
/* 8021D6BC 0021A5FC  90 01 00 10 */ stw r0, 0x10(r1)
/* 8021D6C0 0021A600  38 7E 04 A0 */ addi r3, r30, 0x4a0
/* 8021D6C4 0021A604  7C 03 E8 2E */ lwzx r0, r3, r29
/* 8021D6C8 0021A608  90 01 00 14 */ stw r0, 0x14(r1)
/* 8021D6CC 0021A60C  88 01 00 14 */ lbz r0, 0x14(r1)
/* 8021D6D0 0021A610  98 1F 01 38 */ stb r0, 0x138(r31)
/* 8021D6D4 0021A614  88 01 00 15 */ lbz r0, 0x15(r1)
/* 8021D6D8 0021A618  98 1F 01 39 */ stb r0, 0x139(r31)
/* 8021D6DC 0021A61C  88 01 00 16 */ lbz r0, 0x16(r1)
/* 8021D6E0 0021A620  98 1F 01 3A */ stb r0, 0x13a(r31)
/* 8021D6E4 0021A624  88 01 00 17 */ lbz r0, 0x17(r1)
/* 8021D6E8 0021A628  98 1F 01 3B */ stb r0, 0x13b(r31)
/* 8021D6EC 0021A62C  88 01 00 10 */ lbz r0, 0x10(r1)
/* 8021D6F0 0021A630  98 1F 01 3C */ stb r0, 0x13c(r31)
/* 8021D6F4 0021A634  88 01 00 11 */ lbz r0, 0x11(r1)
/* 8021D6F8 0021A638  98 1F 01 3D */ stb r0, 0x13d(r31)
/* 8021D6FC 0021A63C  88 01 00 12 */ lbz r0, 0x12(r1)
/* 8021D700 0021A640  98 1F 01 3E */ stb r0, 0x13e(r31)
/* 8021D704 0021A644  88 01 00 13 */ lbz r0, 0x13(r1)
/* 8021D708 0021A648  98 1F 01 3F */ stb r0, 0x13f(r31)
/* 8021D70C 0021A64C  88 01 00 0C */ lbz r0, 0xc(r1)
/* 8021D710 0021A650  98 1F 01 40 */ stb r0, 0x140(r31)
/* 8021D714 0021A654  88 01 00 0D */ lbz r0, 0xd(r1)
/* 8021D718 0021A658  98 1F 01 41 */ stb r0, 0x141(r31)
/* 8021D71C 0021A65C  88 01 00 0E */ lbz r0, 0xe(r1)
/* 8021D720 0021A660  98 1F 01 42 */ stb r0, 0x142(r31)
/* 8021D724 0021A664  88 01 00 0F */ lbz r0, 0xf(r1)
/* 8021D728 0021A668  98 1F 01 43 */ stb r0, 0x143(r31)
/* 8021D72C 0021A66C  88 01 00 08 */ lbz r0, 8(r1)
/* 8021D730 0021A670  98 1F 01 44 */ stb r0, 0x144(r31)
/* 8021D734 0021A674  88 01 00 09 */ lbz r0, 9(r1)
/* 8021D738 0021A678  98 1F 01 45 */ stb r0, 0x145(r31)
/* 8021D73C 0021A67C  88 01 00 0A */ lbz r0, 0xa(r1)
/* 8021D740 0021A680  98 1F 01 46 */ stb r0, 0x146(r31)
/* 8021D744 0021A684  88 01 00 0B */ lbz r0, 0xb(r1)
/* 8021D748 0021A688  98 1F 01 47 */ stb r0, 0x147(r31)
/* 8021D74C 0021A68C  39 61 00 30 */ addi r11, r1, 0x30
/* 8021D750 0021A690  48 14 4A D9 */ bl _restgpr_29
/* 8021D754 0021A694  80 01 00 34 */ lwz r0, 0x34(r1)
/* 8021D758 0021A698  7C 08 03 A6 */ mtlr r0
/* 8021D75C 0021A69C  38 21 00 30 */ addi r1, r1, 0x30
/* 8021D760 0021A6A0  4E 80 00 20 */ blr
