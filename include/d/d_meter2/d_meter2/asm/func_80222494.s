/* 80222494 0021F3D4  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80222498 0021F3D8  7C 08 02 A6 */ mflr r0
/* 8022249C 0021F3DC  90 01 00 14 */ stw r0, 0x14(r1)
/* 802224A0 0021F3E0  7C 65 1B 78 */ mr r5, r3
/* 802224A4 0021F3E4  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802224A8 0021F3E8  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 802224AC 0021F3EC  88 83 5E 40 */ lbz r4, 0x5e40(r3)
/* 802224B0 0021F3F0  28 04 00 00 */ cmplwi r4, 0
/* 802224B4 0021F3F4  41 82 00 20 */ beq lbl_802224D4
/* 802224B8 0021F3F8  88 03 5E 5A */ lbz r0, 0x5e5a(r3)
/* 802224BC 0021F3FC  98 83 5E 32 */ stb r4, 0x5e32(r3)
/* 802224C0 0021F400  98 03 5E 4D */ stb r0, 0x5e4d(r3)
/* 802224C4 0021F404  38 00 00 00 */ li r0, 0
/* 802224C8 0021F408  98 03 5E 40 */ stb r0, 0x5e40(r3)
/* 802224CC 0021F40C  98 03 5E 5A */ stb r0, 0x5e5a(r3)
/* 802224D0 0021F410  48 00 00 10 */ b lbl_802224E0
lbl_802224D4:
/* 802224D4 0021F414  38 00 00 00 */ li r0, 0
/* 802224D8 0021F418  98 03 5E 32 */ stb r0, 0x5e32(r3)
/* 802224DC 0021F41C  98 03 5E 4D */ stb r0, 0x5e4d(r3)
lbl_802224E0:
/* 802224E0 0021F420  88 05 01 CC */ lbz r0, 0x1cc(r5)
/* 802224E4 0021F424  3C 60 80 40 */ lis r3, g_dComIfG_gameInfo@ha
/* 802224E8 0021F428  38 63 61 C0 */ addi r3, r3, g_dComIfG_gameInfo@l
/* 802224EC 0021F42C  88 63 5E 32 */ lbz r3, 0x5e32(r3)
/* 802224F0 0021F430  7C 00 18 40 */ cmplw r0, r3
/* 802224F4 0021F434  41 82 00 14 */ beq lbl_80222508
/* 802224F8 0021F438  98 65 01 CC */ stb r3, 0x1cc(r5)
/* 802224FC 0021F43C  80 65 01 0C */ lwz r3, 0x10c(r5)
/* 80222500 0021F440  88 85 01 CC */ lbz r4, 0x1cc(r5)
/* 80222504 0021F444  4B FF 54 BD */ bl dMeter2Draw_c_NS_drawButtonS
lbl_80222508:
/* 80222508 0021F448  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8022250C 0021F44C  7C 08 03 A6 */ mtlr r0
/* 80222510 0021F450  38 21 00 10 */ addi r1, r1, 0x10
/* 80222514 0021F454  4E 80 00 20 */ blr
