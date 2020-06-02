; Music converted from music.xrns 2017-08-13 13:21:40

%define MUSIC_LENGTH 912
%define TOTAL_SAMPLES 4980736
%define MAX_TOTAL_INSTRUMENT_SAMPLES 23658496

%define SAMPLES_PER_TICK 4295
%define TICKS_PER_SECOND 10.266666667

%define NUM_TRACKS_WITH_REVERB 7
%define NUM_TRACKS_WITHOUT_REVERB 0

%define REVERB_NUM_DELAYS   100
%define REVERB_MIN_DELAY    0
%define REVERB_MAX_DELAY    19200
%define REVERB_ADD_DELAY    2304
%define REVERB_RANDOMSEED   65536
%define REVERB_MAX_DECAY    0.668732498
%define REVERB_DECAY_MUL    1.000020957
%define REVERB_FILTER_HIGH  0x3F800000 ; 1.000000000
%define REVERB_FILTER_LOW   0x3C463F14 ; 0.012100000
%define REVERB_DAMPEN_HIGH  0x3F62339E ; 0.883600116
%define REVERB_DAMPEN_LOW   0x3BA0902C ; 0.004899999
%define REVERB_VOLUME_LEFT  0x3D89624F ; 0.067082040
%define REVERB_VOLUME_RIGHT 0x3DA842A8 ; 0.082158387

%define USES_PANNING


	section iparam data align=4

_InstrumentParams:
.i01:
	; 01|Flute_01
	dd	32,15,65,62,0x00000000,0x3F800000,0x3F75C324,0xBFE79585,0x3E78D789,0x42D333BE,0x42F00000,0x3BE0BD58,0xBDBA9E69,0xB6122F00,0xBB252961,0x414C733F,262144,0xB8662FDF,0x39AFDD60,0x45000000,0xBD4E0000
.i02:
	; 02|Superfrog
	dd	17,20,31,75,0x3DA19248,0x3F5F0169,0x3F7AE1D8,0xBF599814,0x3D5318F9,0x41E66865,0x42F00000,0x3EE76412,0xBD72F6BC,0x3C12160A,0xBD0B51DA,0x3E9FC995,393216,0xB7F472BD,0x3C3DD647,0x44E00000,0xBE840000
.i03:
	; 03|Harmonica_01
	dd	25,3,13,90,0x00000000,0x3F600000,0x3F7AE1E0,0xBF6BC78C,0x3DDA887F,0x41333715,0x425E0208,0x3DF0F02F,0xBF800000,0x3D0B51DA,0x3AA7527B,0x40141D4C,196608,0xB82C1CDF,0x3C683253,0x44600000,0xBD4E0000
.i04:
	; 04|Harmonica_01
	dd	25,3,13,80,0x3DF37E20,0x3F5C720A,0x3F7AE1DC,0xBF8DB2A6,0x3DDA886E,0x41333715,0x425E0201,0x3DF0F02F,0xBF800000,0x3D0B51DA,0x3AA7527B,0x404E94E5,983040,0xB82C1CE2,0x3C683258,0x44A00000,0x3DD60000
.i05:
	; 05|Basskick_01
	dd	24,1,52,52,0x00000000,0x3F800000,0x3F51EC16,0x3F800000,0x00000000,0x42F00000,0x41FA51C2,0x00000000,0xBDE27C67,0x3BE314AA,0x3BE314A8,0x41A0F9B7,131072,0xFF291522,0x3E213FE3,0x44E00000,0xBD4E0000
.i07:
	; 07|Closed_hard_01
	dd	64,16,64,100,0x3E41CE74,0x3EB69D38,0x3B121200,0xBCC5163F,0x3F7C9522,0x422C1770,0x42F00000,0x3E203F9D,0xBA2AA11D,0x38AEC4D7,0xBC7335AF,0x3E874C68,65536,0xB8BE841F,0x39E0BC67,0x46A00000,0xBD4E0000
.i08:
	; 08|Closed_hard_01
	dd	62,20,22,89,0xBE8A3D90,0x3EF0A408,0x3B1215FE,0x3CD4847F,0x419056F0,0x426A50A6,0x41C001A7,0x3C7636AB,0xBCC7C9C0,0xBB5112BD,0x33ED51DD,0x411294FC,65536,0xB8BE841E,0x3B97A367,0x46A00000,0x3E240000



	section itones data align=1

_InstrumentTones:
.i01:
	; 01|Flute_01
	db	29,2,2,2,1,2,2,3,1,1,2,2,1,2,3,1,1,2,-124
.i02:
	; 02|Superfrog
	db	40,5,2,1,1,3,1,2,1,1,2,1,2,2,3,1,1,2,1,1,1,2,2,1,2,2,5,-125
.i03:
	; 03|Harmonica_01
	db	21,3,4,1,2,4,1,2,5,1,1,2,1,1,1,2,4,-124
.i04:
	; 04|Harmonica_01
	db	45,2,1,1,3,1,1,1,1,1,2,1,1,1,2,1,1,1,1,1,2,3,2,1,-121
.i05:
	; 05|Basskick_01
	db	5,-128
.i07:
	; 07|Closed_hard_01
	db	29,-128
.i08:
	; 08|Closed_hard_01
	db	29,-128


	section trdata data align=1

_TrackData:
.t_Track03_1:
	; Track 03, column 1
	db	0,0,8,1,8,1,6,0,8,1,8,3,8,-128
.t_Track03_2:
	; Track 03, column 2
	db	0,3,8,1,8,1,8,1,8,6,5,1,6,-128
.t_Track03_3:
	; Track 03, column 3
	db	0,7,8,1,4,0,8,1,6,0,8,1,8,1,8,-128
.t_Track03_4:
	; Track 03, column 4
	db	0,12,8,1,8,3,8,1,8,-128
.t_Track03_5:
	; Track 03, column 5
	db	0,14,8,1,8,1,8,1,8,-128
.t_Track04_1:
	; Track 04, column 1
	db	0,2,6,1,7,1,8,2,7,0,8,3,6,2,4,2,6,3,6,1,6,4,6,-128
.t_Track04_2:
	; Track 04, column 2
	db	0,1,8,6,6,0,7,1,8,1,6,2,6,0,7,0,8,3,5,1,6,0,8,1,6,2,6,4,6,-128
.t_Track04_3:
	; Track 04, column 3
	db	0,0,8,5,6,5,6,0,7,0,8,2,8,1,6,0,7,0,8,1,6,2,8,1,5,0,6,0,8,2,6,1,5,1,5,0,6,0,8,2,5,1,5,-128
.t_Track04_4:
	; Track 04, column 4
	db	0,10,6,2,5,0,7,1,7,1,8,2,4,0,7,1,5,0,6,2,6,1,5,0,7,1,5,0,6,0,7,2,5,1,7,1,6,1,5,-128
.t_Pad_1:
	; Pad, column 1
	db	0,0,22,0,32,1,22,0,32,1,22,0,24,0,28,0,32,1,16,0,22,0,24,0,32,1,22,-128
.t_Pad_2:
	; Pad, column 2
	db	0,2,10,0,20,0,24,2,10,0,16,0,20,1,12,0,14,0,18,0,20,0,24,0,26,0,28,0,32,1,6,0,10,0,12,0,14,0,18,0,19,0,20,0,24,1,19,0,20,-128
.t_Pad_3:
	; Pad, column 3
	db	0,8,14,0,16,0,18,0,20,0,22,0,28,0,32,1,22,0,32,1,12,0,14,0,16,0,20,0,22,0,28,1,22,0,28,-128
.t_Pad_4:
	; Pad, column 4
	db	0,10,32,2,16,0,20,0,22,0,24,0,32,2,16,0,20,0,22,0,24,0,32,1,22,0,32,1,14,0,16,-128
.t_Pad_5:
	; Pad, column 5
	db	0,13,18,0,30,1,16,0,24,1,16,0,24,-128
.t_Track02_1:
	; Track 02, column 1
	db	0,2,6,2,12,1,8,2,9,3,6,3,5,0,10,1,11,0,14,2,8,0,12,0,14,1,7,0,11,2,5,0,13,1,7,0,10,1,16,1,3,0,9,1,4,-128
.t_Track02_2:
	; Track 02, column 2
	db	0,0,14,1,16,2,9,1,16,1,16,2,12,2,8,1,10,0,12,0,16,1,6,3,10,6,11,-128
.t_Track02_3:
	; Track 02, column 3
	db	0,0,14,4,11,1,11,2,11,12,16,-128
.t_Track02_4:
	; Track 02, column 4
	db	0,4,11,0,12,3,13,0,16,1,16,1,13,0,16,5,13,0,15,3,13,-128
.t_Track02_5:
	; Track 02, column 5
	db	0,4,8,0,9,0,12,1,8,0,12,1,10,1,7,0,10,1,13,1,10,0,12,0,16,1,10,0,12,0,16,1,7,0,8,0,9,0,13,0,16,2,10,0,16,1,10,3,9,1,10,1,10,-128
.t_Track02_6:
	; Track 02, column 6
	db	0,4,12,0,16,5,16,1,13,0,16,1,16,2,10,1,9,0,14,5,12,-128
.t_Track02_7:
	; Track 02, column 7
	db	0,7,9,3,16,4,6,0,9,0,13,0,16,1,10,0,12,2,13,1,16,1,11,0,16,-128
.t_Track02_8:
	; Track 02, column 8
	db	0,9,10,1,13,2,16,1,16,1,8,4,16,-128
.t_Track05_1:
	; Track 05, column 1
	db	0,0,5,0,8,-128
.t_Track07_1:
	; Track 07, column 1
	db	0,0,1,-128
.t_Track06_1:
	; Track 06, column 1
	db	0,0,1,-128

	section notelen data align=1

_NoteLengths:
	; Track 03, column 1
L_Track03_1:
	db	-2,31
	; Position 5, pattern 5
	db	48
	; Position 6, pattern 6
	db	48
	; Position 7, pattern 7
	db	24
	; Position 8, pattern 8
	db	24,48
	; Position 9, pattern 9
	db	48
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	20
	; Position 13, pattern 13
	db	4,24,48
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	24
	; Position 16, pattern 16
	db	24,28
	; Position 17, pattern 17
	db	0

	; Track 03, column 2
L_Track03_2:
	db	-2,31
	; Position 5, pattern 5
	db	48
	; Position 6, pattern 6
	db	48
	; Position 7, pattern 7
	db	24
	; Position 8, pattern 8
	db	24,48
	; Position 9, pattern 9
	db	48
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	16
	; Position 13, pattern 13
	db	8,12,12,48
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	24
	; Position 16, pattern 16
	db	24,28
	; Position 17, pattern 17
	db	0

	; Track 03, column 3
L_Track03_3:
	db	-2,31
	; Position 5, pattern 5
	db	48
	; Position 6, pattern 6
	db	48
	; Position 7, pattern 7
	db	24
	; Position 8, pattern 8
	db	24,24
	; Position 9, pattern 9
	db	24,48
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	12
	; Position 13, pattern 13
	db	12,12,12,48
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	24
	; Position 16, pattern 16
	db	24,24
	; Position 17, pattern 17
	db	4
	db	0

	; Track 03, column 4
L_Track03_4:
	db	-2,31
	; Position 5, pattern 5
	db	48
	; Position 6, pattern 6
	db	48
	; Position 7, pattern 7
	db	24
	; Position 8, pattern 8
	db	12,12,48
	; Position 9, pattern 9
	db	48
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	8
	; Position 13, pattern 13
	db	40,48
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	24
	; Position 16, pattern 16
	db	12,12,28
	; Position 17, pattern 17
	db	0

	; Track 03, column 5
L_Track03_5:
	db	-2,127
	; Position 7, pattern 7
	db	48
	; Position 8, pattern 8
	db	24
	; Position 9, pattern 9
	db	24,48
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	4
	; Position 13, pattern 13
	db	-1,140
	; Position 15, pattern 15
	db	48
	; Position 16, pattern 16
	db	24
	; Position 17, pattern 17
	db	4
	db	0

	; Track 04, column 1
L_Track04_1:
	db	-2,32
	; Position 6, pattern 6
	db	48
	; Position 7, pattern 7
	db	48
	; Position 8, pattern 8
	db	48
	; Position 9, pattern 9
	db	48
	; Position 10, pattern 10
	db	24,24
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	48
	; Position 13, pattern 13
	db	48
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	48
	; Position 16, pattern 16
	db	48
	; Position 17, pattern 17
	db	48
	db	0

	; Track 04, column 2
L_Track04_2:
	db	-2,32
	; Position 6, pattern 6
	db	48
	; Position 7, pattern 7
	db	48
	; Position 8, pattern 8
	db	48
	; Position 9, pattern 9
	db	24,24
	; Position 10, pattern 10
	db	24,24
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	60
	; Position 13, pattern 13
	db	36
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	48
	; Position 16, pattern 16
	db	48
	; Position 17, pattern 17
	db	24,24
	db	0

	; Track 04, column 3
L_Track04_3:
	db	-2,32
	; Position 6, pattern 6
	db	24,12,24
	; Position 7, pattern 7
	db	12,12,12
	; Position 8, pattern 8
	db	24,12,12
	; Position 9, pattern 9
	db	48
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	72
	; Position 13, pattern 13
	db	24
	; Position 14, pattern 14
	db	24,12,24
	; Position 15, pattern 15
	db	12,12,12
	; Position 16, pattern 16
	db	24,12,12
	; Position 17, pattern 17
	db	48
	db	0

	; Track 04, column 4
L_Track04_4:
	db	-2,68
	; Position 6, pattern 6
	db	12
	; Position 7, pattern 7
	db	60
	; Position 8, pattern 8
	db	40
	; Position 9, pattern 9
	db	4,4,4,4,4,24
	; Position 10, pattern 10
	db	36,40
	; Position 11, pattern 11
	db	4,4,4,4,4
	; Position 12, pattern 12
	db	-1,132
	; Position 14, pattern 14
	db	12
	; Position 15, pattern 15
	db	60
	; Position 16, pattern 16
	db	40
	; Position 17, pattern 17
	db	4,4,4,4,4,24
	db	0

	; Pad, column 1
L_Pad_1:
	; Position 0, pattern 0
	db	24,24
	; Position 1, pattern 1
	db	24,24
	; Position 2, pattern 2
	db	24,24
	; Position 3, pattern 3
	db	24,24
	; Position 4, pattern 4
	db	24,24
	; Position 5, pattern 5
	db	24,24
	; Position 6, pattern 6
	db	24,24
	; Position 7, pattern 7
	db	24,24
	; Position 8, pattern 8
	db	24,24
	; Position 9, pattern 9
	db	24,24
	; Position 10, pattern 10
	db	24,24
	; Position 11, pattern 11
	db	24,24
	; Position 12, pattern 12
	db	24,24
	; Position 13, pattern 13
	db	24,24
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	0

	; Pad, column 2
L_Pad_2:
	db	4,16,8,16,8
	; Position 1, pattern 1
	db	16,8,16,8
	; Position 2, pattern 2
	db	16,8,16,8
	; Position 3, pattern 3
	db	16,8,16,8
	; Position 4, pattern 4
	db	16,8,16,8
	; Position 5, pattern 5
	db	16,8,16,8
	; Position 6, pattern 6
	db	16,8,16,8
	; Position 7, pattern 7
	db	16,8,16,8
	; Position 8, pattern 8
	db	16,8,16,8
	; Position 9, pattern 9
	db	16,8,16,8
	; Position 10, pattern 10
	db	16,8,16,8
	; Position 11, pattern 11
	db	16,8,16,8
	; Position 12, pattern 12
	db	16,8,16,8
	; Position 13, pattern 13
	db	16,28
	; Position 14, pattern 14
	db	0

	; Pad, column 3
L_Pad_3:
	db	8,8,16,8,16
	; Position 1, pattern 1
	db	8,16,8,16
	; Position 2, pattern 2
	db	8,16,8,16
	; Position 3, pattern 3
	db	8,16,8,16
	; Position 4, pattern 4
	db	8,16,8,16
	; Position 5, pattern 5
	db	8,16,8,16
	; Position 6, pattern 6
	db	8,16,8,16
	; Position 7, pattern 7
	db	8,16,8,16
	; Position 8, pattern 8
	db	8,16,8,16
	; Position 9, pattern 9
	db	8,16,8,16
	; Position 10, pattern 10
	db	8,16,8,16
	; Position 11, pattern 11
	db	8,16,8,16
	; Position 12, pattern 12
	db	8,16,8,16
	; Position 13, pattern 13
	db	8,32
	; Position 14, pattern 14
	db	0

	; Pad, column 4
L_Pad_4:
	db	12,24,24
	; Position 1, pattern 1
	db	24,24
	; Position 2, pattern 2
	db	24,24
	; Position 3, pattern 3
	db	24,24
	; Position 4, pattern 4
	db	24,24
	; Position 5, pattern 5
	db	24,24
	; Position 6, pattern 6
	db	24,24
	; Position 7, pattern 7
	db	24,24
	; Position 8, pattern 8
	db	24,24
	; Position 9, pattern 9
	db	24,24
	; Position 10, pattern 10
	db	24,24
	; Position 11, pattern 11
	db	24,24
	; Position 12, pattern 12
	db	24,24
	; Position 13, pattern 13
	db	12,12,12
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	0

	; Pad, column 5
L_Pad_5:
	db	-2,144
	; Position 8, pattern 8
	db	-1,140
	; Position 11, pattern 11
	db	24,72
	; Position 13, pattern 13
	db	12,12,12
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	0

	; Track 02, column 1
L_Track02_1:
	db	92
	; Position 1, pattern 1
	db	2,2
	; Position 2, pattern 2
	db	4,4,4,76
	; Position 3, pattern 3
	db	2,2,2,50
	; Position 5, pattern 5
	db	4,4,4,12,6,6,4,2,2,2,2
	; Position 6, pattern 6
	db	-2,128
	; Position 14, pattern 14
	db	0

	; Track 02, column 2
L_Track02_2:
	db	-1,144
	; Position 3, pattern 3
	db	12,88
	; Position 5, pattern 5
	db	4,2,2,6,34
	; Position 6, pattern 6
	db	44
	; Position 7, pattern 7
	db	42,24
	; Position 8, pattern 8
	db	78
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	48
	; Position 13, pattern 13
	db	48
	; Position 14, pattern 14
	db	0

	; Track 02, column 3
L_Track02_3:
	db	-2,40
	; Position 6, pattern 6
	db	84
	; Position 7, pattern 7
	db	24
	; Position 8, pattern 8
	db	76
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	48
	; Position 13, pattern 13
	db	48
	; Position 14, pattern 14
	db	0

	; Track 02, column 4
L_Track02_4:
	db	-2,44
	; Position 6, pattern 6
	db	24,24
	; Position 7, pattern 7
	db	34,24
	; Position 8, pattern 8
	db	26
	; Position 9, pattern 9
	db	24,24
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	48
	; Position 13, pattern 13
	db	48
	; Position 14, pattern 14
	db	0

	; Track 02, column 5
L_Track02_5:
	db	116
	; Position 2, pattern 2
	db	4,4,4,4,8,52
	; Position 4, pattern 4
	db	12,4,4,4,12,80
	; Position 6, pattern 6
	db	8,16,28
	; Position 7, pattern 7
	db	24
	; Position 8, pattern 8
	db	12,12,20,52
	; Position 10, pattern 10
	db	72
	; Position 11, pattern 11
	db	24
	; Position 12, pattern 12
	db	48
	; Position 13, pattern 13
	db	48
	; Position 14, pattern 14
	db	24,12,12
	; Position 15, pattern 15
	db	24,12,12
	; Position 16, pattern 16
	db	24,12,12
	; Position 17, pattern 17
	db	24,24
	db	0

	; Track 02, column 6
L_Track02_6:
	db	-1,168
	; Position 3, pattern 3
	db	124
	; Position 6, pattern 6
	db	4,4,12,8,40
	; Position 7, pattern 7
	db	36
	; Position 8, pattern 8
	db	24,60
	; Position 10, pattern 10
	db	60
	; Position 11, pattern 11
	db	24,36
	; Position 12, pattern 12
	db	72
	; Position 14, pattern 14
	db	0

	; Track 02, column 7
L_Track02_7:
	db	-1,168
	; Position 3, pattern 3
	db	-1,152
	; Position 6, pattern 6
	db	76
	; Position 8, pattern 8
	db	36
	; Position 9, pattern 9
	db	24,64
	; Position 10, pattern 10
	db	2,2,2,2
	; Position 11, pattern 11
	db	40,44
	; Position 12, pattern 12
	db	12
	; Position 13, pattern 13
	db	48
	; Position 14, pattern 14
	db	0

	; Track 02, column 8
L_Track02_8:
	db	-2,60
	; Position 6, pattern 6
	db	80
	; Position 8, pattern 8
	db	24,116
	; Position 11, pattern 11
	db	36,46
	; Position 12, pattern 12
	db	54
	; Position 14, pattern 14
	db	0

	; Track 05, column 1
L_Track05_1:
	db	-2,32
	; Position 6, pattern 6
	db	20,4,24
	; Position 7, pattern 7
	db	20,4,24
	; Position 8, pattern 8
	db	20,4,24
	; Position 9, pattern 9
	db	20,4,24
	; Position 10, pattern 10
	db	20,4,24
	; Position 11, pattern 11
	db	20,4,24
	; Position 12, pattern 12
	db	20,4,24
	; Position 13, pattern 13
	db	20,4,24
	; Position 14, pattern 14
	db	20,4,24
	; Position 15, pattern 15
	db	20,4,24
	; Position 16, pattern 16
	db	20,4,24
	; Position 17, pattern 17
	db	20,4,24
	db	0

	; Track 07, column 1
L_Track07_1:
	db	-2,68
	; Position 6, pattern 6
	db	48
	; Position 7, pattern 7
	db	48
	; Position 8, pattern 8
	db	48
	; Position 9, pattern 9
	db	48
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	48
	; Position 13, pattern 13
	db	48
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	48
	; Position 16, pattern 16
	db	48
	; Position 17, pattern 17
	db	12
	db	0

	; Track 06, column 1
L_Track06_1:
	db	-2,44
	; Position 6, pattern 6
	db	48
	; Position 7, pattern 7
	db	48
	; Position 8, pattern 8
	db	48
	; Position 9, pattern 9
	db	48
	; Position 10, pattern 10
	db	48
	; Position 11, pattern 11
	db	48
	; Position 12, pattern 12
	db	48
	; Position 13, pattern 13
	db	48
	; Position 14, pattern 14
	db	48
	; Position 15, pattern 15
	db	48
	; Position 16, pattern 16
	db	48
	; Position 17, pattern 17
	db	36
	db	0


	section notesamp data align=1

_NoteSamples:
	; Track 03, column 1
S_Track03_1:
	db	0
	; Position 5, pattern 5
	db	1
	; Position 6, pattern 6
	db	6
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	2,5
	; Position 9, pattern 9
	db	2
	; Position 10, pattern 10
	db	4
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	4
	; Position 13, pattern 13
	db	0,3,1
	; Position 14, pattern 14
	db	6
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	2,5
	; Position 17, pattern 17
	db	0

	; Track 03, column 2
S_Track03_2:
	db	0
	; Position 5, pattern 5
	db	2
	; Position 6, pattern 6
	db	1
	; Position 7, pattern 7
	db	2
	; Position 8, pattern 8
	db	3,4
	; Position 9, pattern 9
	db	2
	; Position 10, pattern 10
	db	4
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	4
	; Position 13, pattern 13
	db	0,5,6,2
	; Position 14, pattern 14
	db	1
	; Position 15, pattern 15
	db	2
	; Position 16, pattern 16
	db	3,4
	; Position 17, pattern 17
	db	0

	; Track 03, column 3
S_Track03_3:
	db	0
	; Position 5, pattern 5
	db	5
	; Position 6, pattern 6
	db	1
	; Position 7, pattern 7
	db	5
	; Position 8, pattern 8
	db	6,5
	; Position 9, pattern 9
	db	3,6
	; Position 10, pattern 10
	db	7
	; Position 11, pattern 11
	db	6
	; Position 12, pattern 12
	db	7
	; Position 13, pattern 13
	db	0,2,4,5
	; Position 14, pattern 14
	db	1
	; Position 15, pattern 15
	db	5
	; Position 16, pattern 16
	db	6,5
	; Position 17, pattern 17
	db	3,0

	; Track 03, column 4
S_Track03_4:
	db	0
	; Position 5, pattern 5
	db	2
	; Position 6, pattern 6
	db	1
	; Position 7, pattern 7
	db	2
	; Position 8, pattern 8
	db	3,4,2
	; Position 9, pattern 9
	db	2
	; Position 10, pattern 10
	db	2
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	2
	; Position 13, pattern 13
	db	0,2
	; Position 14, pattern 14
	db	1
	; Position 15, pattern 15
	db	2
	; Position 16, pattern 16
	db	3,4,2
	; Position 17, pattern 17
	db	0

	; Track 03, column 5
S_Track03_5:
	db	0
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	3
	; Position 9, pattern 9
	db	4,0
	; Position 10, pattern 10
	db	2
	; Position 11, pattern 11
	db	0
	; Position 12, pattern 12
	db	2
	; Position 13, pattern 13
	db	0
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	3
	; Position 17, pattern 17
	db	4,0

	; Track 04, column 1
S_Track04_1:
	db	0
	; Position 6, pattern 6
	db	5
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	9
	; Position 9, pattern 9
	db	11
	; Position 10, pattern 10
	db	2,10
	; Position 11, pattern 11
	db	11
	; Position 12, pattern 12
	db	7
	; Position 13, pattern 13
	db	3
	; Position 14, pattern 14
	db	4
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	6
	; Position 17, pattern 17
	db	8,0

	; Track 04, column 2
S_Track04_2:
	db	0
	; Position 6, pattern 6
	db	8
	; Position 7, pattern 7
	db	2
	; Position 8, pattern 8
	db	13
	; Position 9, pattern 9
	db	12,11
	; Position 10, pattern 10
	db	3,14
	; Position 11, pattern 11
	db	10
	; Position 12, pattern 12
	db	9
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	7
	; Position 15, pattern 15
	db	2
	; Position 16, pattern 16
	db	6
	; Position 17, pattern 17
	db	5,4,0

	; Track 04, column 3
S_Track04_3:
	db	0
	; Position 6, pattern 6
	db	9,21,20
	; Position 7, pattern 7
	db	12,16,17
	; Position 8, pattern 8
	db	7,12,18
	; Position 9, pattern 9
	db	13
	; Position 10, pattern 10
	db	4
	; Position 11, pattern 11
	db	15
	; Position 12, pattern 12
	db	12
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	8,11,10
	; Position 15, pattern 15
	db	5,6,9
	; Position 16, pattern 16
	db	2,14,19
	; Position 17, pattern 17
	db	3,0

	; Track 04, column 4
S_Track04_4:
	db	0
	; Position 6, pattern 6
	db	14
	; Position 7, pattern 7
	db	3
	; Position 8, pattern 8
	db	16
	; Position 9, pattern 9
	db	19,18,17,15,9,11
	; Position 10, pattern 10
	db	4,13
	; Position 11, pattern 11
	db	6,8,10,12,15
	; Position 12, pattern 12
	db	14
	; Position 14, pattern 14
	db	4
	; Position 15, pattern 15
	db	3
	; Position 16, pattern 16
	db	5
	; Position 17, pattern 17
	db	13,9,7,4,1,2,0

	; Pad, column 1
S_Pad_1:
	; Position 0, pattern 0
	db	11,9
	; Position 1, pattern 1
	db	11,10
	; Position 2, pattern 2
	db	11,9
	; Position 3, pattern 3
	db	6,5
	; Position 4, pattern 4
	db	11,9
	; Position 5, pattern 5
	db	6,6
	; Position 6, pattern 6
	db	12,10
	; Position 7, pattern 7
	db	8,7
	; Position 8, pattern 8
	db	12,13
	; Position 9, pattern 9
	db	8,7
	; Position 10, pattern 10
	db	4,3
	; Position 11, pattern 11
	db	2,1
	; Position 12, pattern 12
	db	4,3
	; Position 13, pattern 13
	db	2,2
	; Position 14, pattern 14
	db	12
	; Position 15, pattern 15
	db	0

	; Pad, column 2
S_Pad_2:
	db	0,19,15,18,18
	; Position 1, pattern 1
	db	19,17,18,21
	; Position 2, pattern 2
	db	19,15,18,18
	; Position 3, pattern 3
	db	9,7,8,10
	; Position 4, pattern 4
	db	19,15,18,18
	; Position 5, pattern 5
	db	9,7,9,14
	; Position 6, pattern 6
	db	22,16,21,20
	; Position 7, pattern 7
	db	11,12,10,13
	; Position 8, pattern 8
	db	22,16,24,23
	; Position 9, pattern 9
	db	11,12,10,13
	; Position 10, pattern 10
	db	5,4,6,6
	; Position 11, pattern 11
	db	3,1,2,2
	; Position 12, pattern 12
	db	5,4,6,6
	; Position 13, pattern 13
	db	3,1
	; Position 14, pattern 14
	db	0

	; Pad, column 3
S_Pad_3:
	db	0,12,10,12,13
	; Position 1, pattern 1
	db	12,11,12,12
	; Position 2, pattern 2
	db	12,10,12,13
	; Position 3, pattern 3
	db	2,1,2,2
	; Position 4, pattern 4
	db	12,10,12,13
	; Position 5, pattern 5
	db	2,1,5,4
	; Position 6, pattern 6
	db	14,12,14,15
	; Position 7, pattern 7
	db	5,2,5,7
	; Position 8, pattern 8
	db	14,12,16,17
	; Position 9, pattern 9
	db	14,12,8,9
	; Position 10, pattern 10
	db	6,3,5,6
	; Position 11, pattern 11
	db	14,12,14,15
	; Position 12, pattern 12
	db	6,3,5,6
	; Position 13, pattern 13
	db	14,12
	; Position 14, pattern 14
	db	0

	; Pad, column 4
S_Pad_4:
	db	0,2,5
	; Position 1, pattern 1
	db	2,3
	; Position 2, pattern 2
	db	2,5
	; Position 3, pattern 3
	db	7,8
	; Position 4, pattern 4
	db	2,5
	; Position 5, pattern 5
	db	7,10
	; Position 6, pattern 6
	db	4,6
	; Position 7, pattern 7
	db	9,9
	; Position 8, pattern 8
	db	4,11
	; Position 9, pattern 9
	db	12,12
	; Position 10, pattern 10
	db	12,13
	; Position 11, pattern 11
	db	14,15
	; Position 12, pattern 12
	db	12,13
	; Position 13, pattern 13
	db	14,14,14
	; Position 14, pattern 14
	db	1
	; Position 15, pattern 15
	db	0

	; Pad, column 5
S_Pad_5:
	db	0
	; Position 8, pattern 8
	db	5
	; Position 11, pattern 11
	db	1,2
	; Position 13, pattern 13
	db	1,3,6
	; Position 14, pattern 14
	db	4
	; Position 15, pattern 15
	db	0

	; Track 02, column 1
S_Track02_1:
	db	0
	; Position 1, pattern 1
	db	20,22
	; Position 2, pattern 2
	db	21,17,15,9
	; Position 3, pattern 3
	db	1,2,3,4
	; Position 5, pattern 5
	db	8,11,6,5,7,13,12,10,14,16,18
	; Position 6, pattern 6
	db	19
	; Position 14, pattern 14
	db	0

	; Track 02, column 2
S_Track02_2:
	db	0
	; Position 3, pattern 3
	db	9,6
	; Position 5, pattern 5
	db	11,12,11,8,7
	; Position 6, pattern 6
	db	13
	; Position 7, pattern 7
	db	10,4
	; Position 8, pattern 8
	db	5
	; Position 10, pattern 10
	db	2
	; Position 11, pattern 11
	db	1
	; Position 12, pattern 12
	db	2
	; Position 13, pattern 13
	db	3
	; Position 14, pattern 14
	db	0

	; Track 02, column 3
S_Track02_3:
	db	0
	; Position 6, pattern 6
	db	5
	; Position 7, pattern 7
	db	3
	; Position 8, pattern 8
	db	4
	; Position 10, pattern 10
	db	2
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	2
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	0

	; Track 02, column 4
S_Track02_4:
	db	0
	; Position 6, pattern 6
	db	8,9
	; Position 7, pattern 7
	db	4,3
	; Position 8, pattern 8
	db	6
	; Position 9, pattern 9
	db	7,5
	; Position 10, pattern 10
	db	10
	; Position 11, pattern 11
	db	2
	; Position 12, pattern 12
	db	3
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	0

	; Track 02, column 5
S_Track02_5:
	db	0
	; Position 2, pattern 2
	db	18,14,17,24,23,17
	; Position 4, pattern 4
	db	11,5,2,4,7,21
	; Position 6, pattern 6
	db	20,19,20
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	12,16,15,14
	; Position 10, pattern 10
	db	22
	; Position 11, pattern 11
	db	9
	; Position 12, pattern 12
	db	22
	; Position 13, pattern 13
	db	3
	; Position 14, pattern 14
	db	0,10,8
	; Position 15, pattern 15
	db	23,6,8
	; Position 16, pattern 16
	db	10,13,23
	; Position 17, pattern 17
	db	26,25,0

	; Track 02, column 6
S_Track02_6:
	db	0
	; Position 3, pattern 3
	db	1
	; Position 6, pattern 6
	db	8,7,8,5,4
	; Position 7, pattern 7
	db	2
	; Position 8, pattern 8
	db	10,6
	; Position 10, pattern 10
	db	5
	; Position 11, pattern 11
	db	3,3
	; Position 12, pattern 12
	db	9
	; Position 14, pattern 14
	db	0

	; Track 02, column 7
S_Track02_7:
	db	0
	; Position 3, pattern 3
	db	3
	; Position 6, pattern 6
	db	9
	; Position 8, pattern 8
	db	1
	; Position 9, pattern 9
	db	11,10
	; Position 10, pattern 10
	db	5,8,4,7
	; Position 11, pattern 11
	db	6,2
	; Position 12, pattern 12
	db	12
	; Position 13, pattern 13
	db	6
	; Position 14, pattern 14
	db	0

	; Track 02, column 8
S_Track02_8:
	db	0
	; Position 6, pattern 6
	db	1
	; Position 8, pattern 8
	db	5,4
	; Position 11, pattern 11
	db	2,3
	; Position 12, pattern 12
	db	6
	; Position 14, pattern 14
	db	0

	; Track 05, column 1
S_Track05_1:
	db	0
	; Position 6, pattern 6
	db	2,1,2
	; Position 7, pattern 7
	db	2,1,2
	; Position 8, pattern 8
	db	2,1,2
	; Position 9, pattern 9
	db	2,1,2
	; Position 10, pattern 10
	db	2,1,2
	; Position 11, pattern 11
	db	2,1,2
	; Position 12, pattern 12
	db	2,1,2
	; Position 13, pattern 13
	db	2,1,2
	; Position 14, pattern 14
	db	2,1,2
	; Position 15, pattern 15
	db	2,1,2
	; Position 16, pattern 16
	db	2,1,2
	; Position 17, pattern 17
	db	2,1,2,0

	; Track 07, column 1
S_Track07_1:
	db	0
	; Position 6, pattern 6
	db	1
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	1
	; Position 9, pattern 9
	db	1
	; Position 10, pattern 10
	db	1
	; Position 11, pattern 11
	db	1
	; Position 12, pattern 12
	db	1
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	1
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	1
	; Position 17, pattern 17
	db	1,0

	; Track 06, column 1
S_Track06_1:
	db	0
	; Position 6, pattern 6
	db	1
	; Position 7, pattern 7
	db	1
	; Position 8, pattern 8
	db	1
	; Position 9, pattern 9
	db	1
	; Position 10, pattern 10
	db	1
	; Position 11, pattern 11
	db	1
	; Position 12, pattern 12
	db	1
	; Position 13, pattern 13
	db	1
	; Position 14, pattern 14
	db	1
	; Position 15, pattern 15
	db	1
	; Position 16, pattern 16
	db	1
	; Position 17, pattern 17
	db	1,0

