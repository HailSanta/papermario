.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218000_5125D0
/* 5125D0 80218000 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 5125D4 80218004 AFB10014 */  sw        $s1, 0x14($sp)
/* 5125D8 80218008 0080882D */  daddu     $s1, $a0, $zero
/* 5125DC 8021800C AFBF0020 */  sw        $ra, 0x20($sp)
/* 5125E0 80218010 AFB3001C */  sw        $s3, 0x1c($sp)
/* 5125E4 80218014 AFB20018 */  sw        $s2, 0x18($sp)
/* 5125E8 80218018 AFB00010 */  sw        $s0, 0x10($sp)
/* 5125EC 8021801C 8E30000C */  lw        $s0, 0xc($s1)
/* 5125F0 80218020 8E050000 */  lw        $a1, ($s0)
/* 5125F4 80218024 0C0B1EAF */  jal       get_variable
/* 5125F8 80218028 26100004 */   addiu    $s0, $s0, 4
/* 5125FC 8021802C 8E050000 */  lw        $a1, ($s0)
/* 512600 80218030 26100004 */  addiu     $s0, $s0, 4
/* 512604 80218034 0220202D */  daddu     $a0, $s1, $zero
/* 512608 80218038 0C0B1EAF */  jal       get_variable
/* 51260C 8021803C 0040982D */   daddu    $s3, $v0, $zero
/* 512610 80218040 8E050000 */  lw        $a1, ($s0)
/* 512614 80218044 26100004 */  addiu     $s0, $s0, 4
/* 512618 80218048 0220202D */  daddu     $a0, $s1, $zero
/* 51261C 8021804C 0C0B1EAF */  jal       get_variable
/* 512620 80218050 0040902D */   daddu    $s2, $v0, $zero
/* 512624 80218054 0220202D */  daddu     $a0, $s1, $zero
/* 512628 80218058 8E050000 */  lw        $a1, ($s0)
/* 51262C 8021805C 0C0B1EAF */  jal       get_variable
/* 512630 80218060 0040802D */   daddu    $s0, $v0, $zero
/* 512634 80218064 8E240148 */  lw        $a0, 0x148($s1)
/* 512638 80218068 0C09A75B */  jal       get_actor
/* 51263C 8021806C 0040882D */   daddu    $s1, $v0, $zero
/* 512640 80218070 0040182D */  daddu     $v1, $v0, $zero
/* 512644 80218074 8C620008 */  lw        $v0, 8($v1)
/* 512648 80218078 90420024 */  lbu       $v0, 0x24($v0)
/* 51264C 8021807C 8C640008 */  lw        $a0, 8($v1)
/* 512650 80218080 02629823 */  subu      $s3, $s3, $v0
/* 512654 80218084 A0730194 */  sb        $s3, 0x194($v1)
/* 512658 80218088 90820025 */  lbu       $v0, 0x25($a0)
/* 51265C 8021808C 02429023 */  subu      $s2, $s2, $v0
/* 512660 80218090 A0720195 */  sb        $s2, 0x195($v1)
/* 512664 80218094 90820026 */  lbu       $v0, 0x26($a0)
/* 512668 80218098 02028023 */  subu      $s0, $s0, $v0
/* 51266C 8021809C A0700196 */  sb        $s0, 0x196($v1)
/* 512670 802180A0 90840027 */  lbu       $a0, 0x27($a0)
/* 512674 802180A4 02248823 */  subu      $s1, $s1, $a0
/* 512678 802180A8 A0710197 */  sb        $s1, 0x197($v1)
/* 51267C 802180AC 8FBF0020 */  lw        $ra, 0x20($sp)
/* 512680 802180B0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 512684 802180B4 8FB20018 */  lw        $s2, 0x18($sp)
/* 512688 802180B8 8FB10014 */  lw        $s1, 0x14($sp)
/* 51268C 802180BC 8FB00010 */  lw        $s0, 0x10($sp)
/* 512690 802180C0 24020002 */  addiu     $v0, $zero, 2
/* 512694 802180C4 03E00008 */  jr        $ra
/* 512698 802180C8 27BD0028 */   addiu    $sp, $sp, 0x28
/* 51269C 802180CC 00000000 */  nop       
