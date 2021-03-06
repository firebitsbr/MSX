'.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.
'.oO                                                       Oo.
'.oO All NestorBASIC functions with a macro name assigned  Oo.
'.oO                                                       Oo.
'.oO By Konami Man, 11-1999                                Oo.
'.oO                                                       Oo.
'.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.oOo.


'--- NestorBASIC control functions ---

@macro	NB_UNINST	e=usr(0)  'NestorBASIC uninstall
@macro	NB_INFO e=usr(1)  'Obtain NestorBASIC info

@macro	FINISH	p(0)=@YES: @NB_UNINST: end	'Uninstall freeing
						'BASIC memory

'-- Mapped memory access functions ---

@macro	R_SEG	e=usr(2)  'Read a byte from a segment
@macro	R_SEGI	e=usr(3)  'Read a byte from a segment with address incr.
@macro	R_INT	e=usr(4)  'Read an integer (2 bytes) from a segment
@macro	R_INTI	e=usr(5)  'Read an integer from a segment with ad. inc.

@macro	W_SEG	e=usr(6)  'Write a byte in a segment
@macro	W_SEGI	e=usr(7)  'Write a byte in a segment with address incr.
@macro	W_INT	e=usr(8)  'Write an integer (2 bytes) ina a segment
@macro	W_INTI	e=usr(9)  'Write an integer in a segment with ad. inc.

@macro	LDIRSS	e=usr(10) 'Copy memory block between segments
@macro	FILLS	e=usr(11) 'Fill a segment block with a byte
@macro	FILLSI	e=usr(12) 'FILLS with address increment


'--- VRAM access functions ---

@macro	R_VRAM	e=usr(13) 'Read a byte from VRAM
@macro	R_VRAMI e=usr(14) 'Read a byte from VRAM with address increment
@macro	R_VINT	e=usr(15) 'Read an integer (2 bytes) from VRAM
@macro	R_VINTI e=usr(16) 'Read an integer from VRAM with address increment
@macro	W_VRAM	e=usr(17) 'Write a byte in VRAM
@macro	W_VRAMI e=usr(18) 'Write a byte in VRAM with address increment
@macro	W_VINT	e=usr(19) 'Write an integer (2 bytes) in VRAM
@macro	W_VINTI e=usr(20) 'Write an integer in VRAM with address increment

@macro	LDIRVS	e=usr(21) 'VRAM -> Segment memory transfer
@macro	LDIRSV	e=usr(22) 'Segment -> VRAM memory transfer
@macro	LDIRVV	e=usr(23) 'VRAM -> VRAM memory transfer

@macro	FILLV	e=usr(24) 'Fill a VRAM block with a byte
@macro	FILLVI	e=usr(25) 'FILLV with address increment


'--- File access functions ---

@macro	F_FIND	e=usr(26) 'Search files
@macro	F_REN	e=usr(27) 'Rename files
@macro	F_DEL	e=usr(28) 'Delete files
@macro	F_MOVE	e=usr(29) 'Move files

@macro	F_MAKE	e=usr(30) 'Create file
@macro	F_OPEN	e=usr(31) 'Open file
@macro	F_CLOSE e=usr(32) 'Close file

@macro	F_READ	e=usr(33) 'Read from file
@macro	F_READV e=usr(34) 'Read from file to VRAM
@macro	R_SECT	e=usr(35) 'Read from disk sectors
@macro	R_SECTV e=usr(36) 'Read from disk sectors to VRAM
@macro	F_WRITE e=usr(37) 'Write to file
@macro	F_WRITEV e=usr(38) 'Write to file from VRAM
@macro	W_SECT	e=usr(39) 'Write to disk sectors
@macro	W_SECTV e=usr(40) 'Write to disk sectors from VRAM

@macro	F_FILL	e=usr(41) 'Fill a file with a byte

@macro	F_SEEK	e=usr(42) 'Move file pointer

@macro	GET_DRIVE e=usr(43) 'Obtain available drives and default drive
@macro	SET_DRIVE e=usr(44) 'Set default drive
@macro	GET_DISK  e=usr(45) 'Obtain disk info and free space
@macro	GET_DIR e=usr(46) 'Get current default directory
@macro	SET_DIR e=usr(47) 'Set default directory

@macro	GET_RDISK e=usr(48) 'Obtain RAMdisk size
@macro	SET_RDISK e=usr(49) 'Create RAMdisk

@macro	GET_ATTR e=usr(50) 'Obtain attribute byte of a file
@macro	SET_ATTR e=usr(51) 'Set attribute byte of a file

@macro	PARSE_PATH e=usr(52) 'Parse pathname


'--- Graphic compress and decompress functions ---

@macro	G_COMP	e=usr(53) 'Graphic compress
@macro	G_DECOMP e=usr(54) 'Graphic decompress


'--- BASIC program execution ---

@macro	B_EXE	e=usr(55) 'BASIC program stored in segment execution
@macro	B_LOAD	e=usr(56) 'BASIC program stored in segment activation
@macro	B_SAVE	e=usr(57) 'BASIC program with header save


'--- Miscellaneous functions ---

@macro	BIOS	e=usr(58) 'BIOS routine execution
@macro	MC_EXE	e=usr(59) 'Machine code routine in a segment execution

@macro	G_PRINT e=usr(60) 'String print in graphic mode

@macro	STR_SAVE e=usr(61) 'Store a string in mapped memory
@macro	STR_LOAD e=usr(62) 'Recover a string from mapped memory

@macro	BLK_INIT e=usr(63) 'Blink mode initialization
@macro	BLK_MAKE e=usr(64) 'Blink block make or erase

@macro	GET_INT e=usr(65) 'Get information about user interrupt
@macro	SET_INT e=usr(65) 'Set user interrupt


'--- PSG sound effects functions ---

@macro	PSG_INFO e=usr(67) 'Obtain PSG sound effects information
@macro	PSG_INIT e=usr(68) 'PSG sound effects set initialization

@macro	PSG_PLAY e=usr(69) 'PSG sound effect replay
@macro	PSG_STOP e=usr(70) 'PSG sound stop


'--- MoonBlaster music replay functions ---

@macro	MUS_INIT e=usr(71) 'MB replayer load and initialization
@macro	MUS_INFO e=usr(72) 'Obtain information about current music
@macro	MUS_CHIPS e=usr(73) 'Get/set music chips state

@macro	MUS_PLAY e=usr(74) 'Starts music replay
@macro	MUS_STOP e=usr(75) 'Stops music
@macro	MUS_PAUSE e=usr(76) 'Pause music
@macro	MUS_FADE e=usr(77) 'Fade music

@macro	MBK_LOAD e=usr(78) 'Music Module samplekit load
@macro	MWK_LOAD e=usr(79) 'MoonSound wavekit load


'--- Other macros ---

@define FILE0 f$(0)
@define FILE1 f$(1)
@define S_STRING f$(0)
@define D_STRING f$(1)

