/* 80027928 00024868  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 8002792C 0002486C  7C 08 02 A6 */ mflr r0
/* 80027930 00024870  90 01 00 14 */ stw r0, 0x14(r1)
/* 80027934 00024874  3C 60 80 38 */ lis r3, lbl_80378A50@ha
/* 80027938 00024878  38 63 8A 50 */ addi r3, r3, lbl_80378A50@l
/* 8002793C 0002487C  38 63 02 3F */ addi r3, r3, 0x23f
/* 80027940 00024880  4C C6 31 82 */ crclr 6
/* 80027944 00024884  4B FD F1 79 */ bl OSReport
/* 80027948 00024888  38 60 00 00 */ li r3, 0
/* 8002794C 0002488C  80 01 00 14 */ lwz r0, 0x14(r1)
/* 80027950 00024890  7C 08 03 A6 */ mtlr r0
/* 80027954 00024894  38 21 00 10 */ addi r1, r1, 0x10
/* 80027958 00024898  4E 80 00 20 */ blr