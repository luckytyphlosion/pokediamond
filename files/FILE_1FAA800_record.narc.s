	.include "asm/macros.inc"
	.text
	; NARC header
	.ascii "NARC"
	.short 0xFFFE ; byte order
	.short 0x0100 ; version
	.word 0x000059C4 ; size
	.short 0x0010 ; chunk size
	.short 3 ; number following chunks

	; BTAF header
	.ascii "BTAF"
	.word 0x00000084 ; chunk size
	.short 15 ; number of files
	.balign 4
	.word 0x00000000, 0x00000228
	.word 0x00000228, 0x00000450
	.word 0x00000450, 0x000008F1
	.word 0x000008F4, 0x00000B0F
	.word 0x00000B10, 0x0000106F
	.word 0x00001070, 0x000012BB
	.word 0x000012BC, 0x00001503
	.word 0x00001504, 0x0000172C
	.word 0x0000172C, 0x00001954
	.word 0x00001954, 0x00003AA0
	.word 0x00003AA0, 0x00003CFB
	.word 0x00003CFC, 0x00003F3D
	.word 0x00003F40, 0x00004FEB
	.word 0x00004FEC, 0x000054E7
	.word 0x000054E8, 0x00005915

	; BTNF header
	.ascii "BTNF"
	.word 0x00000010 ; chunk size
	.word 0x00000004 ; offset to first dir
	.short 0 ; first file
	.short 1 ; number of directories

	; GMIF header
	.ascii "GMIF"
	.word 0x00005920 ; chunk size
	.incbin "baserom.nds", 0x1FAA8AC, 0x5918
	.balign 512, 255
