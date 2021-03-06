	.include "asm/macros.inc"
	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x00009200 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x0000020C ; chunk size
	.short 64 ; number of files
	.balign 4
	.word 0x00000000, 0x000000C8
	.word 0x000000C8, 0x00000200
	.word 0x00000200, 0x00000338
	.word 0x00000338, 0x00000470
	.word 0x00000470, 0x000006D4
	.word 0x000006D4, 0x000007D4
	.word 0x000007D4, 0x000008D4
	.word 0x000008D4, 0x0000097C
	.word 0x0000097C, 0x00000A24
	.word 0x00000A24, 0x00000ABC
	.word 0x00000ABC, 0x00000B54
	.word 0x00000B54, 0x00000C18
	.word 0x00000C18, 0x00000CDC
	.word 0x00000CDC, 0x00000DA0
	.word 0x00000DA0, 0x0000102C
	.word 0x0000102C, 0x000011E4
	.word 0x000011E4, 0x0000139C
	.word 0x0000139C, 0x000014A8
	.word 0x000014A8, 0x0000175C
	.word 0x0000175C, 0x000018F8
	.word 0x000018F8, 0x000019CC
	.word 0x000019CC, 0x00001AA0
	.word 0x00001AA0, 0x00001BC4
	.word 0x00001BC4, 0x00001CD0
	.word 0x00001CD0, 0x00001E00
	.word 0x00001E00, 0x0000240C
	.word 0x0000240C, 0x00002938
	.word 0x00002938, 0x00002A94
	.word 0x00002A94, 0x00002BF0
	.word 0x00002BF0, 0x00002D10
	.word 0x00002D10, 0x00002E30
	.word 0x00002E30, 0x00002F70
	.word 0x00002F70, 0x000030B8
	.word 0x000030B8, 0x00003170
	.word 0x00003170, 0x00003228
	.word 0x00003228, 0x00003310
	.word 0x00003310, 0x000033F8
	.word 0x000033F8, 0x00003594
	.word 0x00003594, 0x0000372C
	.word 0x0000372C, 0x00004C7C
	.word 0x00004C7C, 0x00006250
	.word 0x00006250, 0x0000636C
	.word 0x0000636C, 0x00006488
	.word 0x00006488, 0x00006C34
	.word 0x00006C34, 0x00006D54
	.word 0x00006D54, 0x00007578
	.word 0x00007578, 0x0000769C
	.word 0x0000769C, 0x000077C0
	.word 0x000077C0, 0x000078E4
	.word 0x000078E4, 0x00007990
	.word 0x00007990, 0x00007A54
	.word 0x00007A54, 0x00007B60
	.word 0x00007B60, 0x00007C6C
	.word 0x00007C6C, 0x00007D8C
	.word 0x00007D8C, 0x00007F9C
	.word 0x00007F9C, 0x000080F8
	.word 0x000080F8, 0x00008254
	.word 0x00008254, 0x000083B0
	.word 0x000083B0, 0x000084CC
	.word 0x000084CC, 0x0000885C
	.word 0x0000885C, 0x000089B8
	.word 0x000089B8, 0x00008B54
	.word 0x00008B54, 0x00008CF0
	.word 0x00008CF0, 0x00008FCC

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x00008FD4 ; chunk size
	.incbin "baserom.nds", 0x3835234, 0x8FCC
	.balign 512, 255
