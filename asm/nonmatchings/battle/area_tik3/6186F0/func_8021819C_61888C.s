.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8021819C_61888C
/* 61888C 8021819C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 618890 802181A0 AFB10014 */  sw        $s1, 0x14($sp)
/* 618894 802181A4 0080882D */  daddu     $s1, $a0, $zero
/* 618898 802181A8 AFBF0020 */  sw        $ra, 0x20($sp)
/* 61889C 802181AC AFB3001C */  sw        $s3, 0x1c($sp)
/* 6188A0 802181B0 AFB20018 */  sw        $s2, 0x18($sp)
/* 6188A4 802181B4 AFB00010 */  sw        $s0, 0x10($sp)
/* 6188A8 802181B8 8E30000C */  lw        $s0, 0xc($s1)
/* 6188AC 802181BC 8E050000 */  lw        $a1, ($s0)
/* 6188B0 802181C0 0C0B1EAF */  jal       get_variable
/* 6188B4 802181C4 26100004 */   addiu    $s0, $s0, 4
/* 6188B8 802181C8 8E050000 */  lw        $a1, ($s0)
/* 6188BC 802181CC 26100004 */  addiu     $s0, $s0, 4
/* 6188C0 802181D0 0220202D */  daddu     $a0, $s1, $zero
/* 6188C4 802181D4 0C0B1EAF */  jal       get_variable
/* 6188C8 802181D8 0040982D */   daddu    $s3, $v0, $zero
/* 6188CC 802181DC 8E050000 */  lw        $a1, ($s0)
/* 6188D0 802181E0 26100004 */  addiu     $s0, $s0, 4
/* 6188D4 802181E4 0220202D */  daddu     $a0, $s1, $zero
/* 6188D8 802181E8 0C0B1EAF */  jal       get_variable
/* 6188DC 802181EC 0040902D */   daddu    $s2, $v0, $zero
/* 6188E0 802181F0 0220202D */  daddu     $a0, $s1, $zero
/* 6188E4 802181F4 8E050000 */  lw        $a1, ($s0)
/* 6188E8 802181F8 0C0B1EAF */  jal       get_variable
/* 6188EC 802181FC 0040802D */   daddu    $s0, $v0, $zero
/* 6188F0 80218200 44936000 */  mtc1      $s3, $f12
/* 6188F4 80218204 00000000 */  nop       
/* 6188F8 80218208 46806320 */  cvt.s.w   $f12, $f12
/* 6188FC 8021820C 44927000 */  mtc1      $s2, $f14
/* 618900 80218210 00000000 */  nop       
/* 618904 80218214 468073A0 */  cvt.s.w   $f14, $f14
/* 618908 80218218 44900000 */  mtc1      $s0, $f0
/* 61890C 8021821C 00000000 */  nop       
/* 618910 80218220 46800020 */  cvt.s.w   $f0, $f0
/* 618914 80218224 44060000 */  mfc1      $a2, $f0
/* 618918 80218228 0C0B5D18 */  jal       func_802D7460
/* 61891C 8021822C 0040382D */   daddu    $a3, $v0, $zero
/* 618920 80218230 8FBF0020 */  lw        $ra, 0x20($sp)
/* 618924 80218234 8FB3001C */  lw        $s3, 0x1c($sp)
/* 618928 80218238 8FB20018 */  lw        $s2, 0x18($sp)
/* 61892C 8021823C 8FB10014 */  lw        $s1, 0x14($sp)
/* 618930 80218240 8FB00010 */  lw        $s0, 0x10($sp)
/* 618934 80218244 24020002 */  addiu     $v0, $zero, 2
/* 618938 80218248 03E00008 */  jr        $ra
/* 61893C 8021824C 27BD0028 */   addiu    $sp, $sp, 0x28
