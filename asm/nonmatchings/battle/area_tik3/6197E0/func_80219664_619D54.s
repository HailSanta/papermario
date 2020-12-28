.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80219664_619D54
/* 619D54 80219664 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 619D58 80219668 AFB00010 */  sw        $s0, 0x10($sp)
/* 619D5C 8021966C 0080802D */  daddu     $s0, $a0, $zero
/* 619D60 80219670 10A00005 */  beqz      $a1, .L80219688
/* 619D64 80219674 AFBF0014 */   sw       $ra, 0x14($sp)
/* 619D68 80219678 AE000070 */  sw        $zero, 0x70($s0)
/* 619D6C 8021967C AE000074 */  sw        $zero, 0x74($s0)
/* 619D70 80219680 AE000078 */  sw        $zero, 0x78($s0)
/* 619D74 80219684 AE00007C */  sw        $zero, 0x7c($s0)
.L80219688:
/* 619D78 80219688 8E020070 */  lw        $v0, 0x70($s0)
/* 619D7C 8021968C 1440000E */  bnez      $v0, .L802196C8
/* 619D80 80219690 00000000 */   nop      
/* 619D84 80219694 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 619D88 80219698 8E020088 */  lw        $v0, 0x88($s0)
/* 619D8C 8021969C 00621821 */  addu      $v1, $v1, $v0
/* 619D90 802196A0 04610004 */  bgez      $v1, .L802196B4
/* 619D94 802196A4 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 619D98 802196A8 3C020002 */  lui       $v0, 2
/* 619D9C 802196AC 080865B1 */  j         .L802196C4
/* 619DA0 802196B0 00621021 */   addu     $v0, $v1, $v0
.L802196B4:
/* 619DA4 802196B4 3C040002 */  lui       $a0, 2
/* 619DA8 802196B8 0083102A */  slt       $v0, $a0, $v1
/* 619DAC 802196BC 10400002 */  beqz      $v0, .L802196C8
/* 619DB0 802196C0 00641023 */   subu     $v0, $v1, $a0
.L802196C4:
/* 619DB4 802196C4 AE0200A8 */  sw        $v0, 0xa8($s0)
.L802196C8:
/* 619DB8 802196C8 8E020074 */  lw        $v0, 0x74($s0)
/* 619DBC 802196CC 1440000E */  bnez      $v0, .L80219708
/* 619DC0 802196D0 00000000 */   nop      
/* 619DC4 802196D4 8E0300AC */  lw        $v1, 0xac($s0)
/* 619DC8 802196D8 8E02008C */  lw        $v0, 0x8c($s0)
/* 619DCC 802196DC 00621821 */  addu      $v1, $v1, $v0
/* 619DD0 802196E0 04610004 */  bgez      $v1, .L802196F4
/* 619DD4 802196E4 AE0300AC */   sw       $v1, 0xac($s0)
/* 619DD8 802196E8 3C020002 */  lui       $v0, 2
/* 619DDC 802196EC 080865C1 */  j         .L80219704
/* 619DE0 802196F0 00621021 */   addu     $v0, $v1, $v0
.L802196F4:
/* 619DE4 802196F4 3C040002 */  lui       $a0, 2
/* 619DE8 802196F8 0083102A */  slt       $v0, $a0, $v1
/* 619DEC 802196FC 10400002 */  beqz      $v0, .L80219708
/* 619DF0 80219700 00641023 */   subu     $v0, $v1, $a0
.L80219704:
/* 619DF4 80219704 AE0200AC */  sw        $v0, 0xac($s0)
.L80219708:
/* 619DF8 80219708 8E020078 */  lw        $v0, 0x78($s0)
/* 619DFC 8021970C 1440000E */  bnez      $v0, .L80219748
/* 619E00 80219710 00000000 */   nop      
/* 619E04 80219714 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 619E08 80219718 8E020090 */  lw        $v0, 0x90($s0)
/* 619E0C 8021971C 00621821 */  addu      $v1, $v1, $v0
/* 619E10 80219720 04610004 */  bgez      $v1, .L80219734
/* 619E14 80219724 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 619E18 80219728 3C020002 */  lui       $v0, 2
/* 619E1C 8021972C 080865D1 */  j         .L80219744
/* 619E20 80219730 00621021 */   addu     $v0, $v1, $v0
.L80219734:
/* 619E24 80219734 3C040002 */  lui       $a0, 2
/* 619E28 80219738 0083102A */  slt       $v0, $a0, $v1
/* 619E2C 8021973C 10400002 */  beqz      $v0, .L80219748
/* 619E30 80219740 00641023 */   subu     $v0, $v1, $a0
.L80219744:
/* 619E34 80219744 AE0200B0 */  sw        $v0, 0xb0($s0)
.L80219748:
/* 619E38 80219748 8E02007C */  lw        $v0, 0x7c($s0)
/* 619E3C 8021974C 1440000E */  bnez      $v0, .L80219788
/* 619E40 80219750 00000000 */   nop      
/* 619E44 80219754 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 619E48 80219758 8E020094 */  lw        $v0, 0x94($s0)
/* 619E4C 8021975C 00621821 */  addu      $v1, $v1, $v0
/* 619E50 80219760 04610004 */  bgez      $v1, .L80219774
/* 619E54 80219764 AE0300B4 */   sw       $v1, 0xb4($s0)
/* 619E58 80219768 3C020002 */  lui       $v0, 2
/* 619E5C 8021976C 080865E1 */  j         .L80219784
/* 619E60 80219770 00621021 */   addu     $v0, $v1, $v0
.L80219774:
/* 619E64 80219774 3C040002 */  lui       $a0, 2
/* 619E68 80219778 0083102A */  slt       $v0, $a0, $v1
/* 619E6C 8021977C 10400002 */  beqz      $v0, .L80219788
/* 619E70 80219780 00641023 */   subu     $v0, $v1, $a0
.L80219784:
/* 619E74 80219784 AE0200B4 */  sw        $v0, 0xb4($s0)
.L80219788:
/* 619E78 80219788 8E040084 */  lw        $a0, 0x84($s0)
/* 619E7C 8021978C 0C046F07 */  jal       set_main_pan_u
/* 619E80 80219790 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 619E84 80219794 8E040084 */  lw        $a0, 0x84($s0)
/* 619E88 80219798 0C046F0D */  jal       set_main_pan_v
/* 619E8C 8021979C 8E0500AC */   lw       $a1, 0xac($s0)
/* 619E90 802197A0 8E040084 */  lw        $a0, 0x84($s0)
/* 619E94 802197A4 0C046F13 */  jal       set_aux_pan_u
/* 619E98 802197A8 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 619E9C 802197AC 8E040084 */  lw        $a0, 0x84($s0)
/* 619EA0 802197B0 0C046F19 */  jal       set_aux_pan_v
/* 619EA4 802197B4 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 619EA8 802197B8 8E020070 */  lw        $v0, 0x70($s0)
/* 619EAC 802197BC 8E030078 */  lw        $v1, 0x78($s0)
/* 619EB0 802197C0 8E040098 */  lw        $a0, 0x98($s0)
/* 619EB4 802197C4 24420001 */  addiu     $v0, $v0, 1
/* 619EB8 802197C8 AE020070 */  sw        $v0, 0x70($s0)
/* 619EBC 802197CC 8E020074 */  lw        $v0, 0x74($s0)
/* 619EC0 802197D0 24630001 */  addiu     $v1, $v1, 1
/* 619EC4 802197D4 AE030078 */  sw        $v1, 0x78($s0)
/* 619EC8 802197D8 8E030070 */  lw        $v1, 0x70($s0)
/* 619ECC 802197DC 24420001 */  addiu     $v0, $v0, 1
/* 619ED0 802197E0 AE020074 */  sw        $v0, 0x74($s0)
/* 619ED4 802197E4 8E02007C */  lw        $v0, 0x7c($s0)
/* 619ED8 802197E8 0064182A */  slt       $v1, $v1, $a0
/* 619EDC 802197EC 24420001 */  addiu     $v0, $v0, 1
/* 619EE0 802197F0 14600002 */  bnez      $v1, .L802197FC
/* 619EE4 802197F4 AE02007C */   sw       $v0, 0x7c($s0)
/* 619EE8 802197F8 AE000070 */  sw        $zero, 0x70($s0)
.L802197FC:
/* 619EEC 802197FC 8E020074 */  lw        $v0, 0x74($s0)
/* 619EF0 80219800 8E03009C */  lw        $v1, 0x9c($s0)
/* 619EF4 80219804 0043102A */  slt       $v0, $v0, $v1
/* 619EF8 80219808 50400001 */  beql      $v0, $zero, .L80219810
/* 619EFC 8021980C AE000074 */   sw       $zero, 0x74($s0)
.L80219810:
/* 619F00 80219810 8E020078 */  lw        $v0, 0x78($s0)
/* 619F04 80219814 8E0300A0 */  lw        $v1, 0xa0($s0)
/* 619F08 80219818 0043102A */  slt       $v0, $v0, $v1
/* 619F0C 8021981C 50400001 */  beql      $v0, $zero, .L80219824
/* 619F10 80219820 AE000078 */   sw       $zero, 0x78($s0)
.L80219824:
/* 619F14 80219824 8E02007C */  lw        $v0, 0x7c($s0)
/* 619F18 80219828 8E0300A4 */  lw        $v1, 0xa4($s0)
/* 619F1C 8021982C 0043102A */  slt       $v0, $v0, $v1
/* 619F20 80219830 50400001 */  beql      $v0, $zero, .L80219838
/* 619F24 80219834 AE00007C */   sw       $zero, 0x7c($s0)
.L80219838:
/* 619F28 80219838 8FBF0014 */  lw        $ra, 0x14($sp)
/* 619F2C 8021983C 8FB00010 */  lw        $s0, 0x10($sp)
/* 619F30 80219840 0000102D */  daddu     $v0, $zero, $zero
/* 619F34 80219844 03E00008 */  jr        $ra
/* 619F38 80219848 27BD0018 */   addiu    $sp, $sp, 0x18
/* 619F3C 8021984C 00000000 */  nop       
