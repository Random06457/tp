/* 8013F4A8 0013C3E8  94 21 FF C0 */ stwu r1, -0x40(r1)
/* 8013F4AC 0013C3EC  7C 08 02 A6 */ mflr r0
/* 8013F4B0 0013C3F0  90 01 00 44 */ stw r0, 0x44(r1)
/* 8013F4B4 0013C3F4  39 61 00 40 */ addi r11, r1, 0x40
/* 8013F4B8 0013C3F8  48 22 2D 21 */ bl _savegpr_28
/* 8013F4BC 0013C3FC  7C 7D 1B 78 */ mr r29, r3
/* 8013F4C0 0013C400  7C 9E 23 79 */ or. r30, r4, r4
/* 8013F4C4 0013C404  41 82 00 10 */ beq lbl_8013F4D4
/* 8013F4C8 0013C408  38 00 00 05 */ li r0, 5
/* 8013F4CC 0013C40C  B0 1D 06 04 */ sth r0, 0x604(r29)
/* 8013F4D0 0013C410  48 00 00 3C */ b lbl_8013F50C
lbl_8013F4D4:
/* 8013F4D4 0013C414  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013F4D8 0013C418  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013F4DC 0013C41C  38 63 4E C8 */ addi r3, r3, 0x4ec8
/* 8013F4E0 0013C420  7F A4 EB 78 */ mr r4, r29
/* 8013F4E4 0013C424  38 A0 00 00 */ li r5, 0
/* 8013F4E8 0013C428  3C C0 00 01 */ lis r6, 0x0000FFFF@ha
/* 8013F4EC 0013C42C  38 C6 FF FF */ addi r6, r6, 0x0000FFFF@l
/* 8013F4F0 0013C430  4B F0 3C 7D */ bl dEvt_control_c_NS_compulsory
/* 8013F4F4 0013C434  2C 03 00 00 */ cmpwi r3, 0
/* 8013F4F8 0013C438  40 82 00 0C */ bne lbl_8013F504
/* 8013F4FC 0013C43C  38 60 00 00 */ li r3, 0
/* 8013F500 0013C440  48 00 02 AC */ b lbl_8013F7AC
lbl_8013F504:
/* 8013F504 0013C444  38 00 00 05 */ li r0, 5
/* 8013F508 0013C448  B0 1D 06 04 */ sth r0, 0x604(r29)
lbl_8013F50C:
/* 8013F50C 0013C44C  7F A3 EB 78 */ mr r3, r29
/* 8013F510 0013C450  38 80 01 33 */ li r4, 0x133
/* 8013F514 0013C454  4B F8 2A 59 */ bl daAlink_c_NS_commonProcInit
/* 8013F518 0013C458  8B FD 2F BB */ lbz r31, 0x2fbb(r29)
/* 8013F51C 0013C45C  2C 1E 00 00 */ cmpwi r30, 0
/* 8013F520 0013C460  40 82 01 28 */ bne lbl_8013F648
/* 8013F524 0013C464  80 7D 27 F4 */ lwz r3, 0x27f4(r29)
/* 8013F528 0013C468  7F A4 EB 78 */ mr r4, r29
/* 8013F52C 0013C46C  4B ED B2 71 */ bl fopAcM_seenActorAngleY
/* 8013F530 0013C470  2C 03 40 00 */ cmpwi r3, 0x4000
/* 8013F534 0013C474  41 81 00 1C */ bgt lbl_8013F550
/* 8013F538 0013C478  80 7D 27 F4 */ lwz r3, 0x27f4(r29)
/* 8013F53C 0013C47C  A8 63 04 E6 */ lha r3, 0x4e6(r3)
/* 8013F540 0013C480  3C 63 00 01 */ addis r3, r3, 1
/* 8013F544 0013C484  38 03 80 00 */ addi r0, r3, -32768
/* 8013F548 0013C488  B0 1D 04 E6 */ sth r0, 0x4e6(r29)
/* 8013F54C 0013C48C  48 00 00 10 */ b lbl_8013F55C
lbl_8013F550:
/* 8013F550 0013C490  80 7D 27 F4 */ lwz r3, 0x27f4(r29)
/* 8013F554 0013C494  A8 03 04 E6 */ lha r0, 0x4e6(r3)
/* 8013F558 0013C498  B0 1D 04 E6 */ sth r0, 0x4e6(r29)
lbl_8013F55C:
/* 8013F55C 0013C49C  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 8013F560 0013C4A0  B0 1D 04 DE */ sth r0, 0x4de(r29)
/* 8013F564 0013C4A4  80 7D 27 F4 */ lwz r3, 0x27f4(r29)
/* 8013F568 0013C4A8  C0 03 04 D0 */ lfs f0, 0x4d0(r3)
/* 8013F56C 0013C4AC  D0 1D 04 D0 */ stfs f0, 0x4d0(r29)
/* 8013F570 0013C4B0  80 7D 27 F4 */ lwz r3, 0x27f4(r29)
/* 8013F574 0013C4B4  C0 03 04 D8 */ lfs f0, 0x4d8(r3)
/* 8013F578 0013C4B8  D0 1D 04 D8 */ stfs f0, 0x4d8(r29)
/* 8013F57C 0013C4BC  38 80 00 01 */ li r4, 1
/* 8013F580 0013C4C0  80 7D 27 F4 */ lwz r3, 0x27f4(r29)
/* 8013F584 0013C4C4  98 83 05 68 */ stb r4, 0x568(r3)
/* 8013F588 0013C4C8  80 7D 27 F4 */ lwz r3, 0x27f4(r29)
/* 8013F58C 0013C4CC  A8 03 05 6C */ lha r0, 0x56c(r3)
/* 8013F590 0013C4D0  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 8013F594 0013C4D4  A8 1D 30 10 */ lha r0, 0x3010(r29)
/* 8013F598 0013C4D8  2C 00 00 00 */ cmpwi r0, 0
/* 8013F59C 0013C4DC  41 80 00 0C */ blt lbl_8013F5A8
/* 8013F5A0 0013C4E0  90 9D 31 98 */ stw r4, 0x3198(r29)
/* 8013F5A4 0013C4E4  48 00 00 0C */ b lbl_8013F5B0
lbl_8013F5A8:
/* 8013F5A8 0013C4E8  38 00 00 03 */ li r0, 3
/* 8013F5AC 0013C4EC  90 1D 31 98 */ stw r0, 0x3198(r29)
lbl_8013F5B0:
/* 8013F5B0 0013C4F0  28 1D 00 00 */ cmplwi r29, 0
/* 8013F5B4 0013C4F4  41 82 00 0C */ beq lbl_8013F5C0
/* 8013F5B8 0013C4F8  83 9D 00 04 */ lwz r28, 4(r29)
/* 8013F5BC 0013C4FC  48 00 00 08 */ b lbl_8013F5C4
lbl_8013F5C0:
/* 8013F5C0 0013C500  3B 80 FF FF */ li r28, -1
lbl_8013F5C4:
/* 8013F5C4 0013C504  48 04 20 7D */ bl dCam_getBody
/* 8013F5C8 0013C508  38 80 00 1E */ li r4, 0x1e
/* 8013F5CC 0013C50C  7F 85 E3 78 */ mr r5, r28
/* 8013F5D0 0013C510  3C C0 80 39 */ lis r6, lbl_80392094@ha
/* 8013F5D4 0013C514  38 C6 20 94 */ addi r6, r6, lbl_80392094@l
/* 8013F5D8 0013C518  38 C6 00 43 */ addi r6, r6, 0x43
/* 8013F5DC 0013C51C  38 E0 00 01 */ li r7, 1
/* 8013F5E0 0013C520  39 1D 31 98 */ addi r8, r29, 0x3198
/* 8013F5E4 0013C524  39 20 00 00 */ li r9, 0
/* 8013F5E8 0013C528  4C C6 31 82 */ crclr 6
/* 8013F5EC 0013C52C  4B F4 94 91 */ bl dCamera_c_NS_StartEventCamera
/* 8013F5F0 0013C530  C0 5D 04 D8 */ lfs f2, 0x4d8(r29)
/* 8013F5F4 0013C534  C0 22 92 E0 */ lfs f1, lbl_80452CE0-_SDA2_BASE_(r2)
/* 8013F5F8 0013C538  80 7D 27 F4 */ lwz r3, 0x27f4(r29)
/* 8013F5FC 0013C53C  C0 03 04 D4 */ lfs f0, 0x4d4(r3)
/* 8013F600 0013C540  EC 21 00 2A */ fadds f1, f1, f0
/* 8013F604 0013C544  C0 1D 04 D0 */ lfs f0, 0x4d0(r29)
/* 8013F608 0013C548  D0 01 00 20 */ stfs f0, 0x20(r1)
/* 8013F60C 0013C54C  D0 21 00 24 */ stfs f1, 0x24(r1)
/* 8013F610 0013C550  D0 41 00 28 */ stfs f2, 0x28(r1)
/* 8013F614 0013C554  38 61 00 20 */ addi r3, r1, 0x20
/* 8013F618 0013C558  4B ED E6 A5 */ bl fopAcM_gc_c_NS_gndCheck
/* 8013F61C 0013C55C  54 60 06 3F */ clrlwi. r0, r3, 0x18
/* 8013F620 0013C560  41 82 00 7C */ beq lbl_8013F69C
/* 8013F624 0013C564  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013F628 0013C568  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 8013F62C 0013C56C  38 63 0F 38 */ addi r3, r3, 0xf38
/* 8013F630 0013C570  3C 80 80 3F */ lis r4, lbl_803F1CC4@ha
/* 8013F634 0013C574  38 84 1C C4 */ addi r4, r4, lbl_803F1CC4@l
/* 8013F638 0013C578  38 84 00 14 */ addi r4, r4, 0x14
/* 8013F63C 0013C57C  4B F3 58 15 */ bl dBgS_NS_GetPolyAtt0
/* 8013F640 0013C580  7C 7F 1B 78 */ mr r31, r3
/* 8013F644 0013C584  48 00 00 58 */ b lbl_8013F69C
lbl_8013F648:
/* 8013F648 0013C588  38 00 FF FF */ li r0, -1
/* 8013F64C 0013C58C  90 1D 31 98 */ stw r0, 0x3198(r29)
/* 8013F650 0013C590  B0 1D 30 10 */ sth r0, 0x3010(r29)
/* 8013F654 0013C594  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 8013F658 0013C598  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013F65C 0013C59C  3C 60 80 44 */ lis r3, lbl_80439A20@ha
/* 8013F660 0013C5A0  38 63 9A 20 */ addi r3, r3, lbl_80439A20@l
/* 8013F664 0013C5A4  7C 03 04 2E */ lfsx f0, r3, r0
/* 8013F668 0013C5A8  C0 3D 04 D0 */ lfs f1, 0x4d0(r29)
/* 8013F66C 0013C5AC  C0 42 92 E0 */ lfs f2, lbl_80452CE0-_SDA2_BASE_(r2)
/* 8013F670 0013C5B0  EC 02 00 32 */ fmuls f0, f2, f0
/* 8013F674 0013C5B4  EC 01 00 28 */ fsubs f0, f1, f0
/* 8013F678 0013C5B8  D0 1D 04 D0 */ stfs f0, 0x4d0(r29)
/* 8013F67C 0013C5BC  A8 1D 04 E6 */ lha r0, 0x4e6(r29)
/* 8013F680 0013C5C0  54 00 04 38 */ rlwinm r0, r0, 0, 0x10, 0x1c
/* 8013F684 0013C5C4  7C 63 02 14 */ add r3, r3, r0
/* 8013F688 0013C5C8  C0 03 00 04 */ lfs f0, 4(r3)
/* 8013F68C 0013C5CC  C0 3D 04 D8 */ lfs f1, 0x4d8(r29)
/* 8013F690 0013C5D0  EC 02 00 32 */ fmuls f0, f2, f0
/* 8013F694 0013C5D4  EC 01 00 28 */ fsubs f0, f1, f0
/* 8013F698 0013C5D8  D0 1D 04 D8 */ stfs f0, 0x4d8(r29)
lbl_8013F69C:
/* 8013F69C 0013C5DC  B3 DD 30 12 */ sth r30, 0x3012(r29)
/* 8013F6A0 0013C5E0  2C 1F 00 0D */ cmpwi r31, 0xd
/* 8013F6A4 0013C5E4  38 02 97 E0 */ addi r0, r2, 0x804531E0 - 0x80459A00 /*SDA HACK; original: lbl_804531E0-_SDA2_BASE_*/
/* 8013F6A8 0013C5E8  40 82 00 08 */ bne lbl_8013F6B0
/* 8013F6AC 0013C5EC  38 02 97 D8 */ addi r0, r2, 0x804531D8 - 0x80459A00 /*SDA HACK; original: lbl_804531D8-_SDA2_BASE_*/
lbl_8013F6B0:
/* 8013F6B0 0013C5F0  7C 1C 03 78 */ mr r28, r0
/* 8013F6B4 0013C5F4  3B E0 00 00 */ li r31, 0
/* 8013F6B8 0013C5F8  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 8013F6BC 0013C5FC  3B C3 61 C0 */ addi r30, r3, g_dComIfG_gameInfo@l
lbl_8013F6C0:
/* 8013F6C0 0013C600  80 7E 5D 3C */ lwz r3, 0x5d3c(r30)
/* 8013F6C4 0013C604  38 80 00 00 */ li r4, 0
/* 8013F6C8 0013C608  90 81 00 08 */ stw r4, 8(r1)
/* 8013F6CC 0013C60C  38 00 FF FF */ li r0, -1
/* 8013F6D0 0013C610  90 01 00 0C */ stw r0, 0xc(r1)
/* 8013F6D4 0013C614  90 81 00 10 */ stw r4, 0x10(r1)
/* 8013F6D8 0013C618  90 81 00 14 */ stw r4, 0x14(r1)
/* 8013F6DC 0013C61C  90 81 00 18 */ stw r4, 0x18(r1)
/* 8013F6E0 0013C620  38 80 00 00 */ li r4, 0
/* 8013F6E4 0013C624  A0 BC 00 00 */ lhz r5, 0(r28)
/* 8013F6E8 0013C628  38 DD 04 D0 */ addi r6, r29, 0x4d0
/* 8013F6EC 0013C62C  38 E0 00 00 */ li r7, 0
/* 8013F6F0 0013C630  39 1D 04 E4 */ addi r8, r29, 0x4e4
/* 8013F6F4 0013C634  39 20 00 00 */ li r9, 0
/* 8013F6F8 0013C638  39 40 00 FF */ li r10, 0xff
/* 8013F6FC 0013C63C  C0 22 92 B8 */ lfs f1, lbl_80452CB8-_SDA2_BASE_(r2)
/* 8013F700 0013C640  4B F0 D3 91 */ bl dPa_control_c_NS_set
/* 8013F704 0013C644  3B FF 00 01 */ addi r31, r31, 1
/* 8013F708 0013C648  2C 1F 00 04 */ cmpwi r31, 4
/* 8013F70C 0013C64C  3B 9C 00 02 */ addi r28, r28, 2
/* 8013F710 0013C650  41 80 FF B0 */ blt lbl_8013F6C0
/* 8013F714 0013C654  7F A3 EB 78 */ mr r3, r29
/* 8013F718 0013C658  3C 80 00 02 */ lis r4, 0x00020052@ha
/* 8013F71C 0013C65C  38 84 00 52 */ addi r4, r4, 0x00020052@l
/* 8013F720 0013C660  81 9D 06 28 */ lwz r12, 0x628(r29)
/* 8013F724 0013C664  81 8C 01 18 */ lwz r12, 0x118(r12)
/* 8013F728 0013C668  7D 89 03 A6 */ mtctr r12
/* 8013F72C 0013C66C  4E 80 04 21 */ bctrl
/* 8013F730 0013C670  7F A3 EB 78 */ mr r3, r29
/* 8013F734 0013C674  38 80 00 6A */ li r4, 0x6a
/* 8013F738 0013C678  4B FE 9F 41 */ bl daAlink_c_NS_setSingleAnimeWolfBase
/* 8013F73C 0013C67C  7F A3 EB 78 */ mr r3, r29
/* 8013F740 0013C680  38 80 00 99 */ li r4, 0x99
/* 8013F744 0013C684  4B F7 01 5D */ bl daAlink_c_NS_setFaceBasicTexture
/* 8013F748 0013C688  C0 22 92 C0 */ lfs f1, lbl_80452CC0-_SDA2_BASE_(r2)
/* 8013F74C 0013C68C  D0 3D 33 98 */ stfs f1, 0x3398(r29)
/* 8013F750 0013C690  D0 3D 04 FC */ stfs f1, 0x4fc(r29)
/* 8013F754 0013C694  7F A3 EB 78 */ mr r3, r29
/* 8013F758 0013C698  C0 5D 05 34 */ lfs f2, 0x534(r29)
/* 8013F75C 0013C69C  38 80 00 00 */ li r4, 0
/* 8013F760 0013C6A0  4B F7 C0 11 */ bl setSpecialGravity__9daAlink_cFffi
/* 8013F764 0013C6A4  3C 60 80 42 */ lis r3, lbl_8042561C@ha
/* 8013F768 0013C6A8  C4 03 56 1C */ lfsu f0, lbl_8042561C@l(r3)
/* 8013F76C 0013C6AC  D0 1D 35 88 */ stfs f0, 0x3588(r29)
/* 8013F770 0013C6B0  C0 03 00 04 */ lfs f0, 4(r3)
/* 8013F774 0013C6B4  D0 1D 35 8C */ stfs f0, 0x358c(r29)
/* 8013F778 0013C6B8  C0 03 00 08 */ lfs f0, 8(r3)
/* 8013F77C 0013C6BC  D0 1D 35 90 */ stfs f0, 0x3590(r29)
/* 8013F780 0013C6C0  38 00 00 04 */ li r0, 4
/* 8013F784 0013C6C4  98 1D 2F 99 */ stb r0, 0x2f99(r29)
/* 8013F788 0013C6C8  C0 03 00 00 */ lfs f0, 0(r3)
/* 8013F78C 0013C6CC  D0 1D 34 D4 */ stfs f0, 0x34d4(r29)
/* 8013F790 0013C6D0  C0 03 00 04 */ lfs f0, 4(r3)
/* 8013F794 0013C6D4  D0 1D 34 D8 */ stfs f0, 0x34d8(r29)
/* 8013F798 0013C6D8  C0 03 00 08 */ lfs f0, 8(r3)
/* 8013F79C 0013C6DC  D0 1D 34 DC */ stfs f0, 0x34dc(r29)
/* 8013F7A0 0013C6E0  38 00 00 00 */ li r0, 0
/* 8013F7A4 0013C6E4  B0 1D 30 0E */ sth r0, 0x300e(r29)
/* 8013F7A8 0013C6E8  38 60 00 01 */ li r3, 1
lbl_8013F7AC:
/* 8013F7AC 0013C6EC  39 61 00 40 */ addi r11, r1, 0x40
/* 8013F7B0 0013C6F0  48 22 2A 75 */ bl _restgpr_28
/* 8013F7B4 0013C6F4  80 01 00 44 */ lwz r0, 0x44(r1)
/* 8013F7B8 0013C6F8  7C 08 03 A6 */ mtlr r0
/* 8013F7BC 0013C6FC  38 21 00 40 */ addi r1, r1, 0x40
/* 8013F7C0 0013C700  4E 80 00 20 */ blr