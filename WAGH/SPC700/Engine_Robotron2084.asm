
%SPCDataBlockStart(0200)
DATA_0200:
	db $04,$02,$04,$02,$C3,$99,$99,$99,$99,$99,$99,$99,$99
	
CODE_020D:
	CMP $F4, #$3F
	BEQ CODE_0215
	JMP CODE_0335

CODE_0215:
	MOV $17, $F5
	MOV $F5, $F5
CODE_021B:
	CMP $F7, $18
	BNE CODE_022B
	CMP $F4, #$3F
	BEQ CODE_021B
	CMP $F5, $17
	BNE CODE_020D
	RET

CODE_022B:
	MOV A, $F3
CODE_022D:
	MOV $F3, A
	PUSH A
	POP A
	PUSH A
	POP A
	BEQ CODE_023F
	BPL CODE_023B
	INC A
	JMP CODE_022D

CODE_023B:
	DEC A
	JMP CODE_022D

CODE_023F:
	JMP !REGISTER_SPC700_IPLROMLoc

SPC700_Engine:
	CLRP
	MOV X, #$7F
	MOV SP, X
	MOV A, #$5F
	MOV $0F, A
	MOV A, $0F
	MOV $11, A
	MOV $F2, #$4D
	MOV $F3, #$00
	MOV $F2, #$5C
	MOV $F3, #$FC
	MOV $F2, #$4C
	MOV $F3, #$03
	MOV A, #$00
CODE_0262:
	MOV $F2, A
	CMP A, #$6C
	BNE CODE_0272
	MOV $F3, #$20
	MOV X, #$00
CODE_026D:
	DEC X
	BEQ CODE_0275
	BRA CODE_026D

CODE_0272:
	MOV $F3, #$00
CODE_0275:
	INC A
	CMP A, #$80
	BNE CODE_0262
	MOV $F2, #$00
	MOV $F3, #$7F
	MOV $F2, #$01
	MOV $F3, #$7F
	MOV $F2, #$10
	MOV $F3, #$7F
	MOV $F2, #$11
	MOV $F3, #$7F
	MOV $F2, #$0C
	MOV $F3, #$7F
	MOV $F2, #$1C
	MOV $F3, #$7F
	MOV $F2, #$02
	MOV $F3, #$00
	MOV $F2, #$03
	MOV $F3, #$00
	MOV $F2, #$5D
	MOV $F3, #$02
	MOV $F2, #$5D
	MOV $F3, #$02
	MOV $F2, #$04
	MOV $F3, #$00
	MOV $F2, #$14
	MOV $F3, #$00
	MOV $F2, #$3D
	MOV $F3, #$00
	MOV $F2, #$6C
	MOV $F3, #$20
	MOV $F2, #$4C
	MOV $F3, #$03
	MOV $F2, #$17
	MOV $F3, #$BF
	MOV $F2, #$07
	MOV $F3, #$00
	MOV A, #$00
	MOV $F4, A
	MOV $16, $F4
	MOV $F5, $F5
	MOV $17, $F5
	MOV $18, $F7
	MOV Y, #$00
	MOV A, #$32
	MOVW $24, YA
	MOV Y, #$00
	MOV A, #$33
	MOVW $26, YA
	MOV Y, #$00
	MOV A, #$34
	MOVW $28, YA
	MOV Y, #$00
	MOV A, #$3A
	MOVW $1E, YA
	MOV Y, #$00
	MOV A, #$32
	MOVW $20, YA
	MOV Y, #$00
	MOV A, #$43
	MOVW $22, YA
	MOV Y, #$00
	MOV A, #$02
	MOVW $1A, YA
	MOV A, #$01
	MOVW $1C, YA
	MOV A, #$3C
	MOV $0F, A
	MOV A, $0F
	MOV $0A, A
	MOV $0F, #$00
	MOV A, $0F
	MOV $08, A
	MOV $05, A
	MOV $06, A
	MOV $07, A
	MOV $09, A
CODE_0335:
	MOV A, $F5
	CMP A, $F5
	BNE CODE_0335
	CMP $F7, $18
	BEQ CODE_0343
	JMP CODE_022B

CODE_0343:
	CMP A, $17
	BEQ CODE_0335
	MOV A, $F4
	MOV $16, A
	MOV $F4, A
	MOV A, $F5
	MOV $17, A
	MOV $F5, A
	MOV X, #$7F
	MOV SP, X
CODE_0356:
	MOV A, $16
	MOV $0F, A
	MOV A, #$96
	MOV Y, #$05
	MOVW $0C, YA
	MOV A, #$32
	MOV Y, #$00
	MOVW $2E, YA
	MOV A, #$AF
	MOV $0E, A
	EOR $0F, #$FF
	MOV A, $0F
	AND A, #$3F
	MOV $0F, A
	MOV A, $09
	MOV $10, A
	BEQ CODE_037C
	CALL CODE_1322
CODE_037C:
	MOV $10, #$00
	MOV A, $0F
	CMP A, #$0E
	BEQ CODE_0389
	MOV A, $10
	MOV $07, A
CODE_0389:
	MOV A, $0F
	CMP A, #$12
	BEQ CODE_0393
	MOV A, $10
	MOV $08, A
CODE_0393:
	MOV A, $0F
	CMP A, #$00
	BNE CODE_039C
	JMP CODE_0438

CODE_039C:
	DEC $0F
	MOV A, $0F
	SETC
	SBC A, #$1F
	BPL CODE_03AA
	BVS CODE_03AC
CODE_03A7:
	JMP CODE_03E5

CODE_03AA:
	BVS CODE_03A7
CODE_03AC:
	MOV A, $0F
CODE_03AE:
	SETC
	SBC A, #$3D
	BEQ CODE_03BC
	BPL CODE_03BA
	BVC CODE_03BC
CODE_03B7:
	JMP CODE_03D1

CODE_03BA:
	BVC CODE_03B7
CODE_03BC:
	MOV A, $0F
	CMP A, #$2A
	BCC CODE_03C7
	BEQ CODE_03C7
	JMP CODE_03DB

CODE_03C7:
	MOV A, $0F
	SETC
	SBC A, #$10
	MOV $0F, A
	JMP CODE_03F0

CODE_03D1:
	MOV A, $0F
	SETC
	SBC A, #$39
	MOV $0F, A
	JMP CODE_0432

CODE_03DB:
	MOV A, $0F
	SETC
	SBC A, #$1C
	MOV $0F, A
	JMP CODE_040B

CODE_03E5:
	MOV A, $0F
	CMP A, #$0C
	BCC CODE_03F0
	BEQ CODE_03F0
	JMP CODE_03F9

CODE_03F0:
	CALL CODE_1553
	CALL CODE_1612
	JMP CODE_0438

CODE_03F9:
	MOV A, $0F
	CMP A, #$1B
	BCC CODE_0404
	BEQ CODE_0404
	JMP CODE_042B

CODE_0404:
	MOV A, $0F
	SETC
	SBC A, #$0D
	MOV $0F, A
CODE_040B:
	ASL $0F
	MOV A, #DATA_172E
	MOV Y, #DATA_172E>>8
	MOVW $12, YA
	CALL CODE_045D
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $14, A
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $13, A
	MOV $12, $14
	CALL $0011
	JMP CODE_0438

CODE_042B:
	MOV A, $0F
	SETC
	SBC A, #$1C
	MOV $0F, A
CODE_0432:
	CALL CODE_0C4A
	CALL CODE_0C73
CODE_0438:
	MOV A, $05
	MOV $0F, A
	MOV A, $0F
	OR A, $06
	MOV $0F, A
	BNE CODE_0447
	JMP CODE_0335

CODE_0447:
	MOV $0F, #$00
	MOV A, $0F
	MOV $08, A
	MOV A, $05
	MOV $0F, A
	BNE CODE_0457
	JMP CODE_045A

CODE_0457:
	JMP CODE_10C1

CODE_045A:
	JMP CODE_14CA

CODE_045D:
	MOVW YA, $12
	MOVW $2C, YA
	MOV A, $0F
	CLRC
	ADC A, $2C
	MOV $0F, A
	MOV $2C, A
	BCC CODE_046E
	INC $2D
CODE_046E:
	MOVW YA, $2C
	MOVW $12, YA
	RET

CODE_0473:
	MOVW YA, $12
	MOVW $2C, YA
	MOV A, #CODE_0596
	MOV Y, #CODE_0596>>8
	MOVW $12, YA
	MOVW $0C, YA
	MOV $0F, #$80
CODE_0482:
	MOV A, $35
	MOV $10, A
	BPL CODE_0494
	MOV A, $0B
	LSR A
	LSR A
	LSR A
	INC A
	MOV $10, A
CODE_0490:
	DEC $10
	BNE CODE_0490
CODE_0494:
	DEC $3A
	BNE CODE_049F
	MOVW YA, $24
	MOVW $12, YA
	JMP CODE_052E

CODE_049F:
	DEC $3B
	BNE CODE_04AA
	MOVW YA, $26
	MOVW $12, YA
	JMP CODE_052E

CODE_04AA:
	DEC $3C
	BNE CODE_04B5
	MOVW YA, $28
	MOVW $12, YA
	JMP CODE_052E

CODE_04B5:
	DEC $3D
	BNE CODE_0482
	MOV A, $35
	MOV $10, A
	BEQ CODE_0482
	MOV A, $10
	AND A, #$7F
	MOV $3D, A
	MOV A, $0B
	ASL A
	CLRC
	ADC A, $0B
	CLRC
	ADC A, #$0B
	MOV $10, A
	MOV $0B, A
	DEC $4D
	BNE CODE_04F7
	MOV A, $41
	MOV $10, A
	MOV $4D, A
	MOVW YA, $0C
	MOVW $12, YA
	DECW $12
	DECW $12
	MOV A, #$88
	MOV Y, #$05
	MOVW $14, YA
	MOVW YA, $12
	CMPW YA, $14
	BNE CODE_04F3
	JMP CODE_0581

CODE_04F3:
	MOVW YA, $12
	MOVW $0C, YA
CODE_04F7:
	MOV A, $0B
	MOV $10, A
	BMI CODE_0508
	MOV A, $10
	AND A, $39
	AND A, #$7F
	MOV $10, A
	JMP CODE_0517

CODE_0508:
	MOV A, $10
	AND A, $39
	AND A, #$7F
	MOV $10, A
	MOV A, #$00
	SETC
	SBC A, $10
	MOV $10, A
CODE_0517:
	MOV A, $0F
	PUSH A
	CLRC
	ADC $0F, $10
	MOV $10, $0F
	POP A
	MOV $0F, A
	MOVW YA, $0C
	MOVW $12, YA
	CALL $0011
	JMP CODE_0482

CODE_052E:
	MOV Y, #$18
	MOV A, ($12)+y
	BEQ CODE_055A
	MOV Y, #$18
	MOV A, ($12)+y
	DEC A
	MOV ($12)+y, A
	BNE CODE_055A
	MOV Y, #$0C
	MOV A, ($12)+y
	MOV Y, #$18
	MOV ($12)+y, A
	MOV Y, #$00
	MOV A, ($12)+y
	CLRC
	MOV Y, #$10
	ADC A, ($12)+y
	MOV $10, A
	MOV Y, #$14
	CMP A, ($12)+y
	BEQ CODE_0581
	MOV Y, #$00
	MOV ($12)+y, A
CODE_055A:
	MOV Y, #$00
	MOV A, ($12)+y
	MOV Y, #$08
	MOV ($12)+y, A
	MOV A, $0F
	CLRC
	MOV Y, #$04
	ADC A, ($12)+y
	MOV $0F, A
	MOV A, #$00
	MOV Y, #$04
	SETC
	SBC A, ($12)+y
	MOV ($12)+y, A
	MOV $10, $0F
	MOVW YA, $0C
	MOVW $12, YA
	CALL $0011
	JMP CODE_0482

CODE_0581:
	MOVW YA, $2C
	MOVW $12, YA
	RET

CODE_0586:
	LSR $10
	LSR $10
	LSR $10
	LSR $10
	LSR $10
	LSR $10
	LSR $10
	LSR $10
CODE_0596:
	CMP $F5, $17
	BEQ CODE_059E
	CALL CODE_020D
CODE_059E:
	MOV A, $10
	LSR A
	MOV $F3, A
	RET

CODE_05A4:
	MOV A, #DATA_0B2E
	MOV Y, #DATA_0B2E>>8
	MOVW $12, YA
	NOP
CODE_05AB:
	MOV A, #$1C
	MOV $10, A
	CALL CODE_146A
	CALL CODE_0473
	RET

CODE_05B6:
	MOV A, #DATA_0B4A
	MOV Y, #DATA_0B4A>>8
	MOVW $12, YA
	JMP CODE_05AB

CODE_05BF:
	MOV A, #DATA_0B66
	MOV Y, #DATA_0B66>>8
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_05AB

CODE_05CB:
	MOV A, #DATA_0B82
	MOV Y, #DATA_0B82>>8
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_05AB

CODE_05D7:
	MOV A, #DATA_0B9E
	MOV Y, #DATA_0B9E>>8
	MOVW $12, YA
	JMP CODE_05AB

CODE_05E0:
	MOV A, #DATA_0BD6
	MOV Y, #DATA_0BD6>>8
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_05AB

CODE_05EC:
	MOV A, #DATA_0BF2
	MOV Y, #DATA_0BF2>>8
	MOVW $12, YA
	JMP CODE_05AB

CODE_05F5:
	MOV A, #$60
	MOV Y, #$00
	MOVW $12, YA
	NOP
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	NOP
	MOV A, $0F
	SETC
	SBC A, #$02
	MOV $0F, A
	MOV Y, #$00
	MOV A, $0F
	MOV ($12)+y, A
	NOP
	NOP
	POP A
	PUSH A
	POP A
	PUSH A
	CALL CODE_09EF
	NOP
	NOP
	JMP CODE_0A3A

CODE_061E:
	MOV A, #$01
	MOV Y, #$00
	MOVW $12, YA
	MOVW $32, YA
	MOV A, #$80
	MOV Y, #$03
	MOVW $12, YA
	MOVW $34, YA
CODE_062E:
	MOV $F3, #$00
	MOVW YA, $32
	MOVW $12, YA
	INCW $12
	MOVW YA, $12
	MOVW $32, YA
CODE_063B:
	DECW $12
	BNE CODE_063B
	EOR $F3, #$7F
	CMP $F5, $17
	BEQ CODE_064A
	CALL CODE_020D
CODE_064A:
	MOVW YA, $34
	MOVW $12, YA
CODE_064E:
	DECW $12
	BNE CODE_064E
	JMP CODE_062E

CODE_0655:
	MOV $32, #$FF
	MOV A, #$C0
	MOV Y, #$FE
	MOVW $12, YA
	MOVW $34, YA
	MOV $0F, #$20
	MOV A, #$E0
	MOV Y, #$FF
	MOVW $12, YA
	CALL CODE_0675
	MOV $0F, #$01
	MOV A, #$44
	MOV Y, #$00
	MOVW $12, YA
CODE_0675:
	MOV $36, $0F
	MOVW YA, $12
	MOVW $37, YA
CODE_067C:
	MOV A, #$10
	MOV Y, #$00
	MOVW $12, YA
CODE_0682:
	CALL CODE_06B2
	MOV A, $33
	CLRC
	ADC A, $34
	MOV $33, A
	MOV A, $32
	ADC A, $35
	MOV $0F, A
	MOV $32, A
	DECW $12
	BNE CODE_0682
	MOV A, $34
	CLRC
	ADC A, $36
	MOV $0F, A
	MOV $34, A
	BCC CODE_06A5
	INC $35
CODE_06A5:
	MOVW YA, $34
	MOVW $12, YA
	MOVW $14, YA
	MOVW YA, $12
	CMPW YA, $37
	BNE CODE_067C
	RET

CODE_06B2:
	MOV A, #$00
CODE_06B4:
	MOV $0F, A
	LSR A
	MOV $F3, A
	MOV A, $0F
	CLRC
	ADC A, #$20
	MOV $0F, A
	BCC CODE_06B4
	CALL CODE_06D7
	MOV A, #$E0
	MOV $0F, A
CODE_06C9:
	MOV A, $0F
	LSR A
	MOV $F3, A
	MOV A, $0F
	SETC
	SBC A, #$20
	MOV $0F, A
	BCS CODE_06C9
CODE_06D7:
	CMP $F5, $17
	BEQ CODE_06DF
	CALL CODE_020D
CODE_06DF:
	MOV $10, $32
CODE_06E2:
	MOV A, #$02
CODE_06E4:
	DEC A
	BNE CODE_06E4
	DEC $10
	BNE CODE_06E2
	RET

DATA_06EC:
	db $80,$8C,$98,$A5,$B0,$BC,$C6,$D0,$DA,$E2,$EA,$F0,$F5,$FA,$FD,$FE
	db $FF,$FE,$FD,$FA,$F5,$F0,$EA,$E2,$DA,$D0,$C6,$BC,$B0,$A5,$98,$8C
	db $80,$73,$67,$5A,$4F,$43,$39,$2F,$25,$1D,$15,$0F,$0A,$05,$02,$01
	db $00,$01,$02,$05,$0A,$0F,$15,$1D,$25,$2F,$39,$43,$4F,$5A,$67,$73

CODE_072C:
	MOV A, #$80
	MOV $3C, A
	MOV A, #$06
	MOV $3B, A
CODE_0734:
	MOV A, #$80
	MOV $30, A
CODE_0738:
	MOV A, #$12
CODE_073A:
	DEC A
	BNE CODE_073A
CODE_073E:
	MOV A, $39
	MOV $0F, A
	CLRC
	ADC A, $3C
	MOV $0F, A
	MOV $39, A
	LSR $0F
	LSR $0F
	LSR $0F
	MOV A, $0F
	CLRC
	ADC A, #$EC
	MOV $0F, A
	MOV $3A, A
	MOVW YA, $3A
	MOVW $12, YA
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	LSR A
	MOV $F3, A
	CMP $F5, $17
	BEQ CODE_076C
	CALL CODE_020D
CODE_076C:
	DEC $30
	BEQ CODE_0773
	JMP CODE_0738

CODE_0773:
	DEC $3C
	MOV A, $3C
	MOV $0F, A
	CMP A, #$20
	BEQ CODE_0780
	JMP CODE_0734

CODE_0780:
	RET

CODE_0781:
	MOV A, #$FF
	MOV Y, #$07
	MOVW $12, YA
	MOVW $34, YA
CODE_0789:
	MOVW YA, $34
	MOVW $12, YA
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	BNE CODE_0798
	JMP CODE_07FE

CODE_0798:
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $10, A
	MOV A, $10
	AND A, #$F0
	MOV $10, A
	MOV A, $10
	MOV $33, A
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $10, A
	INCW $12
	INCW $12
	MOVW YA, $12
	MOVW $34, YA
	MOV A, $0F
	MOV $32, A
	MOV A, $10
	AND A, #$0F
	MOV $10, A
CODE_07C0:
	MOV A, $33
	LSR A
	MOV $F3, A
	CMP $F5, $17
	BEQ CODE_07CD
	CALL CODE_020D
CODE_07CD:
	MOV A, $32
	MOV $0F, A
CODE_07D1:
	MOV A, #$05
	MOV Y, #$00
	MOVW $12, YA
CODE_07D7:
	DECW $12
	BNE CODE_07D7
	DEC $0F
	BNE CODE_07D1
	MOV $F3, #$00
	MOV A, $32
	MOV $0F, A
CODE_07E6:
	MOV A, #$05
	MOV Y, #$00
	MOVW $12, YA
CODE_07EC:
	DECW $12
	BNE CODE_07EC
	DEC $0F
	BNE CODE_07E6
	DEC $10
	BEQ CODE_07FB
	JMP CODE_07C0

CODE_07FB:
	JMP CODE_0789

CODE_07FE:
	RET

DATA_07FF:
	db $01,$FC,$02,$FC,$03,$F8,$04,$F8,$06,$F8,$08,$F4,$0C,$F4,$10,$F4
	db $20,$F2,$40,$F1,$60,$F1,$80,$F1,$A0,$F1,$C0,$F1,$00

CODE_081C:
	DEC $4E
	JMP CODE_0829

CODE_0821:
	MOV A, #$A0
	MOV $10, A
	MOV A, $10
	MOV $4E, A
CODE_0829:
	MOV A, #$04
	MOV $0F, A
	MOV A, $0F
	MOV $33, A
CODE_0831:
	MOV A, #$9F
	MOV $0F, A
	MOV A, $4E
	MOV $10, A
CODE_0839:
	MOV A, #$C0
	MOV Y, #$01
	MOVW $12, YA
CODE_083F:
	DECW $12
	BNE CODE_0846
	JMP CODE_0891

CODE_0846:
	MOV A, $10
	MOV $32, A
	MOV A, $0F
	LSR A
	MOV $F3, A
	CMP $F5, $17
	BEQ CODE_0857
	CALL CODE_020D
CODE_0857:
	DECW $12
	BNE CODE_085E
	JMP CODE_0891

CODE_085E:
	DEC $32
	NOP
	BEQ CODE_0866
	JMP CODE_0857

CODE_0866:
	DECW $12
	BNE CODE_086D
	JMP CODE_0891

CODE_086D:
	MOV A, $10
	MOV $32, A
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
	CMP $F5, $17
	BEQ CODE_087F
	CALL CODE_020D
CODE_087F:
	DECW $12
	BNE CODE_0886
	JMP CODE_0891

CODE_0886:
	DEC $32
	NOP
	BEQ CODE_088E
	JMP CODE_087F

CODE_088E:
	JMP CODE_083F

CODE_0891:
	MOV A, $10
	SETC
	SBC A, $33
	MOV $10, A
	MOV A, $10
	CMP A, #$10
	BCC CODE_08A3
	BEQ CODE_08A3
	JMP CODE_0839

CODE_08A3:
	RET

CODE_08A4:
	MOV A, #$11
	MOV $10, A
	MOV A, $10
	MOV $4E, A
	MOV A, #$FE
	MOV $0F, A
	MOV A, $0F
	MOV $33, A
	JMP CODE_0831

CODE_08B7:
	MOV A, #$0E
	MOV Y, #$0C
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_092C

CODE_08C3:
	POP A
	PUSH A
	POP A
	PUSH A
	CALL CODE_09EF
	POP A
	PUSH A
	POP A
	PUSH A
	CALL CODE_0A3A
	POP A
	PUSH A
	RET

CODE_08D4:
	MOV A, #$14
	MOV Y, #$0C
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_08C3

CODE_08E0:
	MOV A, #$FF
	MOV $10, A
	NOP
	XCN A
	MOV A, $10
	MOV $0E, A
CODE_08EA:
	MOV A, #$1A
	MOV Y, #$0C
	MOVW $12, YA
	NOP
	NOP
	NOP
	NOP
	POP A
	PUSH A
	CALL CODE_08C3
	MOV A, #$20
	MOV Y, #$0C
	MOVW $12, YA
	NOP
	NOP
	NOP
	NOP
	POP A
	PUSH A
	CALL CODE_08C3
	DEC $10
	BEQ CODE_0912
	NOP
	NOP
	NOP
	JMP CODE_08EA

CODE_0912:
	MOV $14, $14
	NOP
	POP A
	PUSH A
	RET

CODE_0919:
	MOV A, #$26
	MOV Y, #$0C
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_08C3

CODE_0925:
	MOV A, #$32
	MOV Y, #$0C
	MOVW $12, YA
	NOP
CODE_092C:
	NOP
	NOP
	NOP
	POP A
	PUSH A
	CALL CODE_08C3
	NOP
	NOP
	NOP
	POP A
	PUSH A
	CALL CODE_09C4
	POP A
	PUSH A
	JMP CODE_092C

CODE_0941:
	MOV A, #$FF
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $0E, A
	MOV A, #$38
	MOV Y, #$0C
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_092C

CODE_0957:
	MOV A, #$FF
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $0E, A
	MOV A, #$2C
	MOV Y, #$0C
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_092C

CODE_096D:
	MOV A, #$30
	MOV $10, A
	NOP
	MOV A, #$3E
	MOV Y, #$0C
	MOVW $12, YA
	NOP
	NOP
	NOP
	NOP
	POP A
	PUSH A
	CALL CODE_09EF
CODE_0981:
	MOV A, $0B
	MOV $0F, A
	NOP
	ASL $0F
	MOV A, $0F
	CLRC
	ADC A, $0B
	MOV $0F, A
	MOV A, $0F
	CLRC
	ADC A, #$0B
	MOV $0F, A
	XCN A
	MOV A, $0F
	MOV $0B, A
	LSR $0F
	LSR $0F
	MOV A, $0F
	CLRC
	ADC A, #$0C
	MOV $0F, A
	XCN A
	MOV A, $0F
	MOV $33, A
	NOP
	NOP
	NOP
	POP A
	PUSH A
	CALL CODE_0A3A
	DEC $10
	BEQ CODE_09BD
	NOP
	NOP
	NOP
	JMP CODE_0981

CODE_09BD:
	MOV $14, $14
	NOP
	POP A
	PUSH A
	RET

CODE_09C4:
	MOV A, $0E
	MOV $0F, A
	NOP
	MOV A, $0F
	SETC
	SBC A, #$08
	MOV $0F, A
	BMI CODE_09D8
	NOP
	NOP
	NOP
	JMP CODE_09E4

CODE_09D8:
	MOV $14, $14
	NOP
	XCN A
	MOV A, $0F
	MOV $0E, A
	POP A
	PUSH A
	RET

CODE_09E4:
	POP A
	MOV $0F, A
	NOP
	POP A
	MOV $0F, A
	NOP
	POP A
	PUSH A
	RET

CODE_09EF:
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $33, A
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $34, A
	MOV Y, #$02
	MOV A, ($12)+y
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $35, A
	MOV Y, #$03
	MOV A, ($12)+y
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $36, A
	MOV Y, #$04
	MOV A, ($12)+y
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $37, A
	MOV Y, #$05
	MOV A, ($12)+y
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $38, A
	POP A
	PUSH A
	RET

CODE_0A3A:
	MOV A, $0E
	MOV $0F, A
	MOV A, $10
	PUSH A
	MOV A, $37
	MOV $10, A
	MOV A, $10
	MOV $39, A
	MOV A, $34
	MOV $10, A
	MOV A, $10
	MOV $3A, A
CODE_0A51:
	EOR $0F, #$FF
	MOV A, $33
	MOV $10, A
	MOV A, $0F
	LSR A
	CMP $F5, $17
	BEQ CODE_0A63
	CALL CODE_020D
CODE_0A63:
	MOV $F3, A
CODE_0A65:
	DEC $10
	BNE CODE_0A65
	EOR $0F, #$FF
	MOV A, $33
	MOV $10, A
	INCW $12
	DECW $12
	INCW $12
	DECW $12
	MOV A, $0F
	LSR A
	MOV $F3, A
CODE_0A7D:
	DEC $10
	BNE CODE_0A7D
	DEC $3A
	BNE CODE_0A88
	JMP CODE_0ABA

CODE_0A88:
	DEC $39
	BEQ CODE_0A8F
	JMP CODE_0A51

CODE_0A8F:
	EOR $0F, #$FF
	MOV A, $37
	MOV $10, A
	MOV A, $0F
	LSR A
	CMP $F5, $17
	BEQ CODE_0AA1
	CALL CODE_020D
CODE_0AA1:
	MOV $F3, A
	MOV A, $10
	MOV $39, A
	MOV A, $33
	MOV $10, A
	MOV A, $0F
	CLRC
	ADC A, $38
	MOV $0F, A
	BPL CODE_0AB7
	JMP CODE_0AFC

CODE_0AB7:
	JMP CODE_0AEE

CODE_0ABA:
	INCW $12
	DECW $12
	EOR $0F, #$FF
	MOV A, $34
	MOV $10, A
	MOV A, $0F
	LSR A
	CMP $F5, $17
	BEQ CODE_0AD0
	CALL CODE_020D
CODE_0AD0:
	MOV $F3, A
	MOV A, $10
	MOV $3A, A
	MOV A, $33
	MOV $10, A
	MOV A, $10
	SETC
	SBC A, $35
	MOV $10, A
	MOV A, $10
	CMP A, $36
	MOV A, $10
	CMP A, $36
	BNE CODE_0AEE
	JMP CODE_0AFC

CODE_0AEE:
	MOV A, $10
	MOV $33, A
	MOV A, $10
	SETC
	SBC A, #$05
	MOV $10, A
	JMP CODE_0A65

CODE_0AFC:
	POP A
	MOV $10, A
	RET

DATA_0B00:
	db $DA,$FF,$DA,$80,$26,$01,$26,$80,$07,$0A,$07,$00,$F9,$F6,$F9,$00
	db $3A,$3E,$50,$46,$33,$2C,$27,$20,$25,$1C,$1A,$17,$14,$11,$10,$33
	db $08,$03,$02,$01,$02,$03,$04,$05,$06,$0A,$1E,$32,$70,$00

DATA_0B2E:
	db $FF,$FF,$FF,$90,$FF,$FF,$FF,$FF,$FF,$FF,$FF,$90,$FF,$FF,$FF,$FF
	db $FF,$FF,$FF,$FF,$00,$00,$00,$00,$00,$00,$00,$00

DATA_0B4A:
	db $48,$01,$00,$00,$3F,$3F,$00,$00,$48,$01,$00,$00,$01,$08,$00,$00
	db $81,$01,$00,$00,$01,$FF,$00,$00,$01,$08,$00,$00

DATA_0B66:
	db $01,$10,$00,$00,$3F,$3F,$00,$00,$01,$10,$00,$00,$05,$05,$00,$00
	db $01,$01,$00,$00,$31,$FF,$00,$00,$05,$05,$00,$00

DATA_0B82:
	db $30,$00,$00,$00,$7F,$00,$00,$00,$30,$00,$00,$00,$01,$00,$00,$00
	db $7F,$00,$00,$00,$02,$00,$00,$00,$01,$00,$00,$00

DATA_0B9E:
	db $04,$00,$00,$04,$7F,$00,$00,$7F,$04,$00,$00,$04,$FF,$00,$00,$A0
	db $00,$00,$00,$00,$00,$00,$00,$00,$FF,$00,$00,$A0,$0C,$68,$68,$00
	db $07,$1F,$0F,$00,$0C,$80,$80,$00,$FF,$FF,$FF,$00,$00,$00,$00,$00
	db $00,$00,$00,$00,$FF,$FF,$FF,$00

DATA_0BD6:
	db $01,$04,$00,$00,$3F,$7F,$00,$00,$01,$04,$00,$00,$05,$FF,$00,$00
	db $01,$00,$00,$00,$48,$00,$00,$00,$05,$FF,$00,$00

DATA_0BF2:
	db $02,$80,$00,$30,$0A,$7F,$00,$7F,$02,$80,$00,$30,$C0,$80,$00,$20
	db $01,$10,$00,$15,$C0,$10,$00,$00,$C0,$80,$00,$00,$FF,$01,$02,$C3
	db $FF,$00,$01,$03,$FF,$80,$FF,$00,$20,$03,$FF,$50,$FF,$00,$50,$03
	db $01,$20,$FF,$00,$FE,$04,$02,$04,$FF,$00,$48,$03,$01,$0C,$FF,$00
	db $48,$02,$01,$0C,$FF,$00,$E0,$01,$02,$10,$FF,$00,$50,$FF,$00,$00
	db $60,$80,$FF,$02,$01,$06,$FF,$00

CODE_0C4A:
	MOV $10, $0F
	ASL $0F
	ASL $0F
	ASL $0F
	CLRC
	ADC $0F, $10
	MOV Y, #$00
	MOV A, #$32
	MOVW $12, YA
	MOVW YA, $12
	MOV $2E, A
	MOV $2F, Y
	MOV Y, #DATA_1772>>8
	MOV A, #DATA_1772
	MOVW $12, YA
	CALL CODE_045D
	MOV A, #$09
	MOV $10, A
	JMP CODE_146A

CODE_0C73:
	MOV A, $3A
	LSR A
	MOV $F3, A
CODE_0C78:
	MOV $3B, $32
	MOV $3C, $33
CODE_0C7E:
	MOVW YA, $37
	MOVW $12, YA
CODE_0C82:
	MOV A, $3B
	MOV $0F, A
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
CODE_0C8C:
	DECW $12
	BEQ CODE_0CB1
	DEC $0F
	BNE CODE_0C8C
	CMP $F5, $17
	BEQ CODE_0C9C
	CALL CODE_020D
CODE_0C9C:
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
	MOV A, $3C
	MOV $0F, A
CODE_0CA6:
	DECW $12
	BEQ CODE_0CB1
	DEC $0F
	BNE CODE_0CA6
	JMP CODE_0C82

CODE_0CB1:
	MOV A, $F3
	ASL A
	MOV $0F, A
	BMI CODE_0CBB
	EOR $0F, #$FF
CODE_0CBB:
	MOV A, $0F
	CLRC
	ADC A, #$00
	MOV $0F, A
	LSR A
	MOV $F3, A
	MOV A, $3B
	MOV $0F, A
	CLRC
	ADC A, $34
	MOV $0F, A
	MOV $3B, A
	MOV A, $3C
	MOV $0F, A
	CLRC
	ADC A, $35
	MOV $0F, A
	MOV $3C, A
	CMP A, $36
	BNE CODE_0C7E
	MOV A, $39
	MOV $0F, A
	BEQ CODE_0CFB
	CMP $F5, $17
	BEQ CODE_0CED
	CALL CODE_020D
CODE_0CED:
	MOV A, $0F
	CLRC
	ADC A, $32
	MOV $0F, A
	MOV $32, A
	BEQ CODE_0CFB
	JMP CODE_0C78

CODE_0CFB:
	RET

CODE_0CFC:
	MOV A, #$FF
	MOV $0F, A
	NOP
	XCN A
	MOV A, $0F
	MOV $39, A
	MOV A, #$60
	MOV $0F, A
	NOP
	MOV A, #$FF
	MOV $10, A
	NOP
	POP A
	PUSH A
	JMP CODE_0D37

CODE_0D15:
	MOV A, #$01
	MOV $0F, A
	MOV A, $0F
	MOV $39, A
	MOV A, #$03
	MOV $10, A
	JMP CODE_0D37

CODE_0D24:
	MOV A, #$FE
	MOV $0F, A
	MOV A, $0F
	MOV $39, A
	MOV A, #$C0
	MOV $0F, A
	MOV A, #$10
	MOV $10, A
	JMP CODE_0D37

CODE_0D37:
	MOV A, $0F
	MOV $38, A
	MOV A, #$FF
	MOV $0F, A
	MOV A, $0F
	LSR A
	MOV $F3, A
	MOV A, $10
	MOV $34, A
CODE_0D48:
	MOV A, $34
	MOV $10, A
CODE_0D4C:
	MOV A, $0B
	MOV $0F, A
	LSR $0F
	LSR $0F
	LSR $0F
	MOV A, $0F
	EOR A, $0B
	MOV $0F, A
	LSR $0F
	ROR $0A
	ROR $0B
	BCC CODE_0D72
	CMP $F5, $17
	BEQ CODE_0D6C
	CALL CODE_020D
CODE_0D6C:
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
CODE_0D72:
	MOV A, $38
	MOV $0F, A
CODE_0D76:
	DEC $0F
	BNE CODE_0D76
	DEC $10
	BNE CODE_0D4C
	MOV A, $38
	MOV $0F, A
	MOV A, $0F
	CLRC
	ADC A, $39
	MOV $0F, A
	MOV A, $0F
	MOV $38, A
	BNE CODE_0D48
	RET

CODE_0D90:
	MOV A, #$20
	MOV $0F, A
	MOV A, $0F
	MOV $34, A
	MOV A, $0F
	MOV $37, A
	MOV A, #$01
	MOV $0F, A
	MOV Y, #$00
	MOV A, #$01
	MOVW $12, YA
	MOV A, #$FF
	MOV $10, A
	JMP CODE_0DAD

CODE_0DAD:
	MOV A, $0F
	MOV $32, A
CODE_0DB1:
	MOVW YA, $12
	MOV $35, A
	MOV $36, Y
CODE_0DB7:
	MOV A, $10
	MOV $33, A
	MOV A, $34
	MOV $10, A
CODE_0DBF:
	MOV A, $0B
	MOV $0F, A
	LSR $0F
	LSR $0F
	LSR $0F
	MOV A, $0F
	EOR A, $0B
	MOV $0F, A
	LSR $0F
	ROR $0A
	ROR $0B
	MOV A, #$00
	MOV $0F, A
	BCC CODE_0DDF
	MOV A, $33
	MOV $0F, A
CODE_0DDF:
	CMP $F5, $17
	BEQ CODE_0DE7
	CALL CODE_020D
CODE_0DE7:
	MOV A, $0F
	LSR A
	MOV $F3, A
	MOV A, $35
	MOV Y, $36
	MOVW $12, YA
CODE_0DF2:
	DECW $12
	BNE CODE_0DF2
	DEC $10
	BNE CODE_0DBF
	MOV A, $33
	MOV $10, A
	MOV A, $10
	SETC
	SBC A, $32
	MOV $10, A
	BEQ CODE_0E18
	MOV A, $35
	MOV Y, $36
	MOVW $12, YA
	INCW $12
	MOV A, $37
	MOV $0F, A
	BEQ CODE_0DB7
	JMP CODE_0DB1

CODE_0E18:
	RET

CODE_0E19:
	MOV A, #DATA_0E44
	MOV Y, #DATA_0E44>>8
	MOVW $12, YA
	MOVW $43, YA
	CALL CODE_101B
	MOV A, #$A5
	MOV Y, #$00
	MOVW $12, YA
	MOVW $0A, YA
	MOV A, #DATA_0E6D
	MOV Y, #DATA_0E6D>>8
	MOVW $12, YA
	CALL CODE_0E77
	CALL CODE_0F83
	MOV A, #DATA_0E72
	MOV Y, #DATA_0E72>>8
	MOVW $12, YA
	CALL CODE_0E77
	JMP CODE_0F95

DATA_0E44:
	db $90,$10,$02,$14,$40,$B4,$40,$FF,$14,$30,$D0,$32,$02,$10,$60,$EE
	db $20,$02,$08,$54,$E9,$54,$FF,$20,$28,$C0,$30,$02,$14,$58,$AC,$20
	db $02,$08,$58,$A6,$58,$FF,$18,$22,$00

DATA_0E6D:
	db $30,$10,$FC,$00,$01

DATA_0E72:
	db $30,$FC,$01,$00,$01

CODE_0E77:
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $4A, A
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $33, A
	MOV Y, #$02
	MOV A, ($12)+y
	MOV $32, A
	MOV Y, #$03
	MOV A, ($12)+y
	MOV $37, A
	MOV Y, #$04
	MOV A, ($12)+y
	MOV $0F, A
	MOV $4F, A
CODE_0E97:
	RET

CODE_0E98:
	CALL CODE_0E77
	CALL CODE_0EF2
CODE_0E9E:
	CALL CODE_0F3C
	MOV A, $4E
	MOV $0F, A
	MOV A, $0F
	CMP A, $4F
	BEQ CODE_0EAE
	JMP CODE_0E9E

CODE_0EAE:
	ROL $10
	MOV A, $10
	LSR A
	CMP $F5, $17
	BEQ CODE_0EBB
	CALL CODE_020D
CODE_0EBB:
	MOV $F3, A
	CALL CODE_0F03
	CALL CODE_0F20
	CALL CODE_0F5B
	MOV A, $33
	CMP A, #$00
	BNE CODE_0ECF
	JMP CODE_0E97

CODE_0ECF:
	MOV A, $34
	CMP A, #$00
	BEQ CODE_0ED8
	JMP CODE_0E9E

CODE_0ED8:
	MOV A, $37
	CMP A, #$00
	BNE CODE_0EE1
	JMP CODE_0E9E

CODE_0EE1:
	BPL CODE_0EE6
	JMP CODE_0EEB

CODE_0EE6:
	INC $4F
	JMP CODE_0E9E

CODE_0EEB:
	DEC $4F
	DEC $4E
	JMP CODE_0E9E

CODE_0EF2:
	MOV A, #$00
	MOV $34, A
	MOV A, $4F
	MOV $0F, A
	MOV A, $0F
	MOV $4E, A
	MOV A, #$00
	MOV $4D, A
	RET

CODE_0F03:
	MOV A, $0B
	MOV $0F, A
	LSR $0F
	LSR $0F
	LSR $0F
	MOV A, $0F
	EOR A, $0B
	MOV $0F, A
	MOV A, $0F
	MOV $48, A
	INCW $12
	MOV A, $0F
	AND A, #$07
	MOV $0F, A
	RET

CODE_0F20:
	MOV A, $48
	MOV $0F, A
	LSR $0F
	ROR $0A
	ROR $0B
	MOV A, #$00
	MOV $0F, A
	BCS CODE_0F33
	JMP CODE_0F37

CODE_0F33:
	MOV A, $33
	MOV $0F, A
CODE_0F37:
	MOV A, $0F
	MOV $4D, A
	RET

CODE_0F3C:
	MOV A, $4F
	MOV $0F, A
	DEC $4E
	BNE CODE_0F47
	JMP CODE_0F4E

CODE_0F47:
	INCW $12
	DECW $12
	JMP CODE_0F5A

CODE_0F4E:
	MOV A, $0F
	MOV $4E, A
	MOV A, $4D
	MOV $10, A
	LSR $10
	INC $34
CODE_0F5A:
	RET

CODE_0F5B:
	MOV A, $4A
	MOV $0F, A
	MOV A, $0F
	CMP A, $34
	BNE CODE_0F68
	JMP CODE_0F6F

CODE_0F68:
	INCW $12
	DECW $12
	JMP CODE_0F82

CODE_0F6F:
	MOV A, #$00
	MOV $34, A
	MOV A, $33
	MOV $0F, A
	MOV A, $0F
	SETC
	SBC A, $32
	MOV $0F, A
	MOV A, $0F
	MOV $33, A
CODE_0F82:
	RET

CODE_0F83:
	MOV A, #$00
	MOV $41, A
	MOV $4B, A
	MOV A, #$0E
	MOV $0F, A
	MOV A, $0F
	MOV $42, A
	MOV A, #$00
	MOV $47, A
CODE_0F95:
	CALL CODE_0EF2
CODE_0F98:
	CALL CODE_0F03
	CALL CODE_1098
	CALL CODE_0F20
	CALL CODE_1098
	CALL CODE_0F3C
	CALL CODE_1098
	CALL CODE_0F5B
	CALL CODE_1098
	CALL CODE_0FC2
	CALL CODE_1098
	CALL CODE_0FEE
	CALL CODE_1098
	CALL CODE_1069
	JMP CODE_0F98

CODE_0FC2:
	MOV A, $46
	MOV $0F, A
	DEC $42
	BNE CODE_0FCD
	JMP CODE_0FDA

CODE_0FCD:
	MOV A, $0033
	MOV $0F, A
	BEQ CODE_0FD7
	JMP CODE_0FED

CODE_0FD7:
	JMP CODE_10C0

CODE_0FDA:
	MOV A, $0F
	MOV $42, A
	MOV A, $41
	MOV $0F, A
	MOV A, $0F
	CLRC
	ADC A, $4B
	MOV $0F, A
	MOV A, $0F
	MOV $41, A
CODE_0FED:
	RET

CODE_0FEE:
	MOV A, $41
	MOV $0F, A
	MOV A, $0F
	CMP A, $49
	BNE CODE_0FFB
	JMP CODE_1009

CODE_0FFB:
	INCW $12
	MOV A, $33
	MOV $0F, A
	BEQ CODE_1006
	JMP CODE_1061

CODE_1006:
	JMP CODE_1062

CODE_1009:
	MOV A, #$00
	MOV $41, A
	MOV A, #$00
	MOV $4B, A
	MOV A, #$00
	MOV $47, A
	MOV A, $43
	MOV Y, $44
	MOVW $12, YA
CODE_101B:
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	MOV A, $0F
	MOV $40, A
	BNE CODE_102A
	JMP CODE_1061

CODE_102A:
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $0F, A
	MOV A, $0F
	MOV $45, A
	MOV Y, #$02
	MOV A, ($12)+y
	MOV $0F, A
	MOV A, $0F
	MOV $4C, A
	MOV Y, #$03
	MOV A, ($12)+y
	MOV $0F, A
	MOV A, $0F
	MOV $46, A
	MOV Y, #$04
	MOV A, ($12)+y
	MOV $0F, A
	MOV A, $0F
	MOV $49, A
	MOV Y, #$05
	MOV A, ($12)+y
	MOV $0F, A
	CALL CODE_045D
	MOVW YA, $12
	MOV $43, A
	MOV $44, Y
CODE_1061:
	RET

CODE_1062:
	POP A
	MOV $0F, A
	POP A
	MOV $0F, A
	RET

CODE_1069:
	MOV A, $40
	MOV $0F, A
	BNE CODE_1072
	JMP CODE_107E

CODE_1072:
	MOV A, $0F
	CMP A, $33
	BEQ CODE_107B
	JMP CODE_1082

CODE_107B:
	JMP CODE_1083

CODE_107E:
	INCW $12
	DECW $12
CODE_1082:
	RET

CODE_1083:
	MOV A, #$00
	MOV $40, A
	MOV A, $45
	MOV $0F, A
	MOV A, $0F
	MOV $41, A
	MOV A, $4C
	MOV $0F, A
	MOV A, $0F
	MOV $4B, A
	RET

CODE_1098:
	MOV A, $47
	MOV $0F, A
	MOV A, $0F
	CLRC
	ADC A, $41
	MOV $0F, A
	MOV A, $0F
	MOV $47, A
	BMI CODE_10AC
	JMP CODE_10AF

CODE_10AC:
	EOR $0F, #$FF
CODE_10AF:
	CLRC
	ADC $0F, $10
	MOV A, $0F
	LSR A
	CMP $F5, $17
	BEQ CODE_10BE
	CALL CODE_020D
CODE_10BE:
	MOV $F3, A
CODE_10C0:
	RET

CODE_10C1:
	MOV A, #$01
	MOV $10, A
	MOV A, $10
	MOV $05, A
	MOV A, #DATA_10E7
	MOV Y, #DATA_10E7>>8
	MOVW $12, YA
	JMP CODE_110A

CODE_10D2:
	MOV A, #DATA_10ED
	MOV Y, #DATA_10ED>>8
	MOVW $12, YA
	JMP CODE_110A

CODE_10DB:
	MOV A, #DATA_10F3
	MOV Y, #DATA_10F3>>8
	MOVW $12, YA
	NOP
	POP A
	PUSH A
	JMP CODE_110A

DATA_10E7:
	db $00,$00,$00,$01,$00,$00

DATA_10ED:
	db $00,$00,$00,$03,$00,$00

DATA_10F3:
	db $01,$00,$01,$FF,$E8,$03

DATA_10F9:
	db $01,$01,$01,$40,$00,$10,$01,$80,$01,$FF,$40

CODE_1104:
	MOV A, #DATA_10F9
	MOV Y, #DATA_10F9>>8
	MOVW $12, YA
CODE_110A:
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	MOV A, $0F
	MOV $39, A
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $0F, A
	MOV A, $0F
	MOV $35, A
	MOV Y, #$02
	MOV A, ($12)+y
	MOV $0F, A
	MOV Y, #$03
	MOV A, ($12)+y
	MOV $10, A
	MOV Y, #$05
	MOV A, ($12)+y
	MOV $14, A
	DEC Y
	MOV A, ($12)+y
	MOV Y, $14
	MOVW $12, YA
	MOV A, $0F
	MOV $38, A
	MOV A, $10
	MOV $32, A
	MOVW YA, $12
	MOVW $36, YA
	MOV $34, #$00
CODE_1146:
	MOVW YA, $36
	MOVW $12, YA
	MOV A, $19
	MOV $0F, A
CODE_114E:
	MOV A, $0F
	LSR A
	LSR A
	LSR A
	EOR A, $0B
	LSR A
	MOV $10, A
	ROR $0A
	ROR $0B
	MOV $10, $32
	CMP $39, #$00
	BEQ CODE_116D
	MOV A, $10
	AND A, $0A
	CLRC
	ADC A, $35
	MOV $10, A
CODE_116D:
	MOV $33, $10
	MOV A, $34
	MOV $10, A
	CMP $0F, $0B
	BCC CODE_117B
	BNE CODE_11A1
CODE_117B:
	DECW $12
	BEQ CODE_11C8
	MOV A, $0F
	MOV $19, A
	LSR A
	MOV $F3, A
	CMP $F5, $17
	BEQ CODE_118E
	CALL CODE_020D
CODE_118E:
	CLRC
	ADC $10, $34
	ADC $0F, $33
	BCS CODE_11BC
	CMP $0F, $0B
	BCC CODE_117B
	BEQ CODE_117B
	JMP CODE_11BC

CODE_11A1:
	DECW $12
	BEQ CODE_11C8
	MOV A, $0F
	MOV $19, A
	LSR A
	MOV $F3, A
	SETC
	SBC $10, $34
	SBC $0F, $33
	BCC CODE_11BC
	CMP $0F, $0B
	BCC CODE_11BC
	BNE CODE_11A1
CODE_11BC:
	MOV A, $0B
	MOV $0F, A
	MOV $19, A
	LSR A
	MOV $F3, A
	JMP CODE_114E

CODE_11C8:
	MOV A, $38
	MOV $10, A
	BNE CODE_11D1
	JMP CODE_114E

CODE_11D1:
	MOV $0F, $32
	MOV $10, $34
	LSR $0F
	ROR $10
	LSR $0F
	ROR $10
	LSR $0F
	ROR $10
	EOR $0F, #$FF
	MOV A, #$00
	SETC
	SBC A, $10
	MOV $10, A
	MOV A, $0F
	SBC A, #$FF
	MOV $0F, A
	MOV A, $10
	CLRC
	ADC A, $34
	MOV $10, A
	MOV A, $0F
	ADC A, $32
	MOV $0F, A
	MOV $34, $10
	MOV $32, $0F
	BEQ CODE_120B
	JMP CODE_1146

CODE_120B:
	CMP $10, #$07
	BEQ CODE_1213
	JMP CODE_1146

CODE_1213:
	RET

CODE_1214:
	MOV A, #$17
	MOV $0F, A
	MOV $2F, A
	MOV Y, #$00
	MOV A, #$64
	MOVW $12, YA
	MOVW $2A, YA
CODE_1222:
	CLRC
	ADC $10, $2A
	MOV A, $30
	ADC A, $2B
	MOV $0F, A
	MOV $30, A
	BCC CODE_1234
	INCW $2A
	BEQ CODE_1250
CODE_1234:
	NOP
	MOV A, $0F
	AND A, #$0F
	CLRC
	ADC A, #$B1
	MOV $2E, A
	MOV Y, #$00
	MOV A, ($2E)+y
	CMP $F5, $17
	BEQ CODE_124A
	CALL CODE_020D
CODE_124A:
	LSR A
	MOV $F3, A
	JMP CODE_1222

CODE_1250:
	RET

CODE_1251:
	MOV $0F, #$00
	MOV A, $0F
	LSR A
	MOV $F3, A
	MOV A, $0F
	MOV $30, A
CODE_125D:
	MOV $0F, #$00
CODE_1260:
	MOV A, $0F
	CMP A, $30
	BEQ CODE_126A
	NOP
	JMP CODE_1271

CODE_126A:
	NOP
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
CODE_1271:
	MOV A, #$08
	MOV $10, A
CODE_1275:
	DEC $10
	BEQ CODE_127D
	XCN A
	JMP CODE_1275

CODE_127D:
	INC $0F
	BMI CODE_1287
	NOP
	NOP
	NOP
	JMP CODE_1260

CODE_1287:
	MOV $14, $14
	CMP $F5, $17
	BEQ CODE_1292
	CALL CODE_020D
CODE_1292:
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
	INC $30
	BMI CODE_12A2
	NOP
	NOP
	NOP
	JMP CODE_125D

CODE_12A2:
	MOV $14, $14
	NOP
	RET

CODE_12A7:
	MOV X, #$00
	MOVW YA, $20
	MOVW $12, YA
CODE_12AD:
	MOV A, #$00
	MOV ($12+x), A
	INCW $12
	MOVW YA, $12
	CMPW YA, $1E
	BNE CODE_12AD
	MOV $32, #$40
CODE_12BC:
	MOVW YA, $20
	MOVW $12, YA
	MOV $30, #$80
	MOV $10, #$00
CODE_12C6:
	MOV Y, #$01
	MOV A, ($12)+y
	CLRC
	ADC A, ($12+x)
	MOV ($12)+y, A
	BPL CODE_12D4
	ADC $10, $30
CODE_12D4:
	LSR $30
	MOVW YA, $12
	ADDW YA, $1A
	MOVW $12, YA
	CMPW YA, $1E
	BNE CODE_12C6
	MOV A, $10
	LSR A
	MOV $F3, A
	INC $31
	BNE CODE_12BC
	MOVW YA, $20
	MOVW $12, YA
	MOV $10, #$00
CODE_12F0:
	MOV A, ($12+x)
	BEQ CODE_1304
	DEC A
	MOV ($12+x), A
	CMP A, #$37
	BNE CODE_1301
	MOV A, #$41
	MOV Y, #$02
	MOV ($12)+y, A
CODE_1301:
	INC A
	MOV $10, A
CODE_1304:
	MOVW YA, $12
	ADDW YA, $1A
	MOVW $12, YA
	CMP $F5, $17
	BNE CODE_1319
CODE_130F:
	CMPW YA, $1E
	BNE CODE_12F0
	CMP $10, #$00
	BNE CODE_12BC
	RET

CODE_1319:
	CALL CODE_020D
	JMP CODE_130F

CODE_131F:
	DEC $09
	RET

CODE_1322:
	CALL CODE_1328
	JMP CODE_0438

CODE_1328:
	MOV A, #$00
	MOV $09, A
	MOV A, $0F
	MOV $30, A
	MOV A, #DATA_17C1
	MOV Y, #DATA_17C1>>8
	MOVW $12, YA
CODE_1336:
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	BNE CODE_1341
	JMP CODE_0356

CODE_1341:
	DEC $30
	BNE CODE_1348
	JMP CODE_1350

CODE_1348:
	INC $0F
	CALL CODE_045D
	JMP CODE_1336

CODE_1350:
	INCW $12
	MOVW YA, $12
	MOV $2E, A
	MOV $2F, Y
	CALL CODE_045D
	MOVW YA, $12
	MOV $2C, A
	MOV $2D, Y
	MOV A, $2E
	MOV Y, $2F
	MOVW $12, YA
CODE_1367:
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $0F, A
	MOV A, $0F
	MOV $34, A
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	MOV Y, #$03
	MOV A, ($12)+y
	MOV $14, A
	DEC Y
	MOV A, ($12)+y
	MOV Y, $14
	MOVW $12, YA
	MOVW YA, $12
	MOV $33, A
	MOV $32, Y
	CALL CODE_13B2
	MOV A, $2E
	MOV Y, $2F
	MOVW $12, YA
	INCW $12
	INCW $12
	INCW $12
	INCW $12
	MOVW YA, $12
	MOV $2E, A
	MOV $2F, Y
	MOV A, $2C
	MOV Y, $2D
	MOVW $14, YA
	MOVW YA, $12
	CMPW YA, $14
	BEQ CODE_13B0
	JMP CODE_1367

CODE_13B0:
	RET

CODE_13B1:
	RET

CODE_13B2:
	MOV Y, #$00
	MOV A, #$35
	MOVW $12, YA
	MOV A, $0F
	SETC
	SBC A, #$02
	MOV $0F, A
CODE_13BF:
	BCC CODE_13C3
	BNE CODE_13C6
CODE_13C3:
	JMP CODE_13F9

CODE_13C6:
	MOV A, $0F
	CMP A, #$03
	BNE CODE_13CF
	JMP CODE_13E5

CODE_13CF:
	MOV A, #$DF
	MOV $10, A
	MOV Y, #$00
	MOV A, $10
	MOV ($12)+y, A
	INCW $12
	MOV A, $0F
	SETC
	SBC A, #$02
	MOV $0F, A
	JMP CODE_13BF

CODE_13E5:
	MOV A, #$64
	MOV $10, A
	MOV Y, #$00
	MOV A, $10
	MOV ($12)+y, A
	MOV Y, #$01
	MOV A, #$00
	MOV ($12)+y, A
	INCW $12
	INCW $12
CODE_13F9:
	MOV A, #$5F
	MOV $10, A
	MOV Y, #$00
	MOV A, $10
	MOV ($12)+y, A
	MOV A, #$1D
	MOV $10, A
	MOV Y, #$01
	MOV A, $10
	MOV ($12)+y, A
	MOV A, #$14
	MOV $10, A
	MOV Y, #$02
	MOV A, $10
	MOV ($12)+y, A
	MOV A, $32
	MOV Y, $33
	MOVW $12, YA
	MOV $0F, #$00
	MOV A, $31
	INC A
	MOV $31, A
	AND A, $34
	LSR A
	MOV $10, A
	MOV A, $0F
	ADC A, #$00
	LSR $10
	ADC A, #$00
	LSR $10
	ADC A, #$00
	LSR $10
	ADC A, #$00
	LSR $10
	ADC A, #$00
	LSR $10
	ADC A, #$00
	LSR $10
	ADC A, #$00
	CLRC
	ADC A, $10
	ASL A
	ASL A
	ASL A
	ASL A
	ASL A
	MOV $0F, A
	LSR A
	CMP $F5, $17
	BNE CODE_1464
CODE_1456:
	MOV $F3, A
	DECW $12
	DECW $12
	DECW $12
	BMI CODE_1463
	JMP $0035

CODE_1463:
	RET

CODE_1464:
	CALL CODE_020D
	JMP CODE_1456

CODE_146A:
	MOV A, $0F
	PUSH A
CODE_146D:
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	MOVW YA, $12
	MOV $2C, A
	MOV $2D, Y
	MOV A, $2E
	MOV Y, $2F
	MOVW $12, YA
	MOV Y, #$00
	MOV A, $0F
	MOV ($12)+y, A
	INCW $12
	MOVW YA, $12
	MOV $2E, A
	MOV $2F, Y
	MOV A, $2C
	MOV Y, $2D
	MOVW $12, YA
	INCW $12
	DEC $10
	BNE CODE_146D
	POP A
	MOV $0F, A
	RET

CODE_149D:
	MOV $0F, #$00
	MOV A, $0F
	MOV $05, A
	MOV A, $0F
	MOV $06, A
	RET

CODE_14A9:
	MOV A, #$00
	MOV $05, A
	MOV A, $06
	MOV $0F, A
	MOV A, $0F
	AND A, #$7F
	MOV $0F, A
	MOV A, $0F
	CMP A, #$1D
	BEQ CODE_14C0
	JMP CODE_14C3

CODE_14C0:
	MOV $0F, #$00
CODE_14C3:
	INC $0F
	MOV A, $0F
	MOV $06, A
	RET

CODE_14CA:
	MOV A, #$0E
	MOV $0F, A
	CALL CODE_1553
	MOV A, $06
	MOV $0F, A
	ASL $0F
	ASL $0F
	EOR $0F, #$FF
	CALL CODE_167B
CODE_14DF:
	INC $36
	CALL CODE_167E
	JMP CODE_14DF

CODE_14E7:
	MOV A, #$03
	MOV $0F, A
	CALL CODE_0C4A
	MOV A, $07
	MOV $10, A
	MOV A, $10
	CMP A, #$1F
	BEQ CODE_14FB
	JMP CODE_14FE

CODE_14FB:
	MOV $10, #$00
CODE_14FE:
	INC $10
	MOV A, $10
	MOV $07, A
	MOV A, #$20
	MOV $0F, A
	SETC
	SBC $0F, $10
	MOV $10, #$00
CODE_150F:
	MOV A, $0F
	CMP A, #$14
	BCC CODE_1517
	BNE CODE_151A
CODE_1517:
	JMP CODE_1526

CODE_151A:
	MOV A, $10
	CLRC
	ADC A, #$0E
	MOV $10, A
	DEC $0F
	JMP CODE_150F

CODE_1526:
	MOV A, $10
	CLRC
	ADC A, #$05
	MOV $10, A
	DEC $0F
	BEQ CODE_1534
	JMP CODE_1526

CODE_1534:
	MOV A, $10
	MOV $32, A
CODE_1538:
	CALL CODE_0C73
	JMP CODE_1538

CODE_153E:
	MOV A, $08
	MOV $0F, A
	BNE CODE_1550
	INC $08
	MOV A, #$0D
	MOV $0F, A
	CALL CODE_1553
	JMP CODE_1612

CODE_1550:
	JMP CODE_166D

CODE_1553:
	MOV $10, $0F
	ASL $10
	CLRC
	ADC $0F, $10
	CLRC
	ADC $0F, $10
	CLRC
	ADC $0F, $10
	MOV Y, #DATA_19AF>>8
	MOV A, #DATA_19AF
	MOVW $12, YA
	CALL CODE_045D
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
	MOV $10, $0F
	MOV A, $0F
	AND A, #$0F
	MOV $0F, A
	MOV A, $0F
	MOV $33, A
	LSR $10
	LSR $10
	LSR $10
	LSR $10
	MOV A, $10
	MOV $32, A
	MOV Y, #$01
	MOV A, ($12)+y
	MOV $0F, A
	MOV $10, A
	LSR $10
	LSR $10
	LSR $10
	LSR $10
	MOV A, $10
	MOV $34, A
	MOV A, $0F
	AND A, #$0F
	MOV $0F, A
	MOV $30, A
	MOVW YA, $12
	MOVW $2A, YA
	MOV Y, #DATA_189C>>8
	MOV A, #DATA_189C
	MOVW $12, YA
CODE_15B2:
	DEC $30
	BMI CODE_15C3
	MOV Y, #$00
	MOV A, ($12)+y
	INC A
	MOV $0F, A
	CALL CODE_045D
	JMP CODE_15B2

CODE_15C3:
	MOVW YA, $12
	MOVW $37, YA
	CALL CODE_16DA
	MOVW YA, $2A
	MOVW $12, YA
	MOV Y, #$02
	MOV A, ($12)+y
	MOV $0F, A
	MOV $39, A
	CALL CODE_16F2
	MOV Y, #$03
	MOV A, ($2A)+y
	MOV $35, A
	MOV Y, #$04
	MOV A, ($2A)+y
	MOV $36, A
	MOV Y, #$05
	MOV A, ($2A)+y
	MOV $10, A
	MOV Y, #$06
	MOV A, ($2A)+y
	MOV $0F, A
	MOV Y, #DATA_1A6C>>8
	MOV A, #DATA_1A6C
	MOVW $12, YA
	CALL CODE_045D
	MOV $0F, $10
	MOVW YA, $12
	MOVW $3A, YA
	MOV $42, #$00
	CALL CODE_045D
	MOVW YA, $12
	MOVW $3C, YA
	RET

CODE_160C:
	CALL CODE_020D
	JMP CODE_1641

CODE_1612:
	MOV $41, $32
CODE_1615:
	MOVW YA, $3A
	MOVW $2C, YA
CODE_1619:
	MOV Y, #$00
	MOV A, ($2C)+y
	CLRC
	ADC A, $42
	MOV $40, A
	MOVW YA, $2C
	CMPW YA, $3C
	BEQ CODE_165F
	MOV $10, $33
	INCW $2C
CODE_162D:
	MOVW YA, $22
	MOVW $12, YA
CODE_1631:
	MOV A, $40
CODE_1633:
	DEC A
	BEQ CODE_163C
	JMP CODE_1639

CODE_1639:
	DEC A
	BNE CODE_1633
CODE_163C:
	CMP $F5, $17
	BNE CODE_160C
CODE_1641:
	MOV Y, #$00
	MOV A, ($12)+y
	LSR A
	MOV $F3, A
	INCW $12
	MOVW YA, $12
	CMPW YA, $3E
	BNE CODE_1631
	DEC $10
	BEQ CODE_1619
	INCW $12
	DECW $12
	NOP
	NOP
	NOP
	NOP
	JMP CODE_162D

CODE_165F:
	MOV $0F, $34
	CALL CODE_16F2
	DEC $41
	BNE CODE_1615
	MOV A, $08
	BNE CODE_16D9
CODE_166D:
	MOV A, $35
	MOV $0F, A
	BEQ CODE_16D9
	DEC $36
	BEQ CODE_16D9
	CLRC
	ADC $0F, $42
CODE_167B:
	MOV $42, $0F
CODE_167E:
	MOVW YA, $3A
	MOVW $12, YA
	MOV $10, #$00
CODE_1685:
	MOV A, $42
	CMP $35, #$00
	BMI CODE_1698
	MOV Y, #$00
	CLRC
	ADC A, ($12)+y
	MOV $0F, A
	BCS CODE_16A3
	JMP CODE_16AB

CODE_1698:
	MOV Y, #$00
	CLRC
	ADC A, ($12)+y
	MOV $0F, A
	BEQ CODE_16A3
	BCS CODE_16AB
CODE_16A3:
	CMP $10, #$00
	BEQ CODE_16B6
	JMP CODE_16C4

CODE_16AB:
	CMP $10, #$00
	BNE CODE_16B6
	MOVW YA, $12
	MOVW $3A, YA
	INC $10
CODE_16B6:
	INCW $12
	MOVW YA, $12
	CMPW YA, $3C
	BNE CODE_1685
	CMP $10, #$00
	BNE CODE_16C4
	RET

CODE_16C4:
	MOVW YA, $12
	MOVW $3C, YA
	MOV A, $34
	BEQ CODE_16D6
	CALL CODE_16DA
	MOV A, $39
	MOV $0F, A
	CALL CODE_16F2
CODE_16D6:
	JMP CODE_1612

CODE_16D9:
	RET

CODE_16DA:
	MOVW YA, $22
	MOVW $2E, YA
	MOVW YA, $37
	MOVW $12, YA
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $10, A
	INCW $12
	CALL CODE_146A
	MOVW YA, $2E
	MOVW $3E, YA
	RET

CODE_16F2:
	MOV A, $0F
	BEQ CODE_172D
	MOVW YA, $37
	MOVW $2C, YA
	MOVW YA, $22
	MOVW $12, YA
	MOV $31, $0F
CODE_1701:
	MOVW YA, $12
	MOVW $2E, YA
	MOV $30, $31
	MOV Y, #$01
	MOV A, ($2C)+y
	LSR A
	LSR A
	LSR A
	LSR A
	MOV $10, A
	INCW $2C
	MOV Y, #$00
	MOV A, ($12)+y
	MOV $0F, A
CODE_171A:
	SETC
	SBC A, $10
	DEC $30
	BNE CODE_171A
	MOV Y, #$00
	MOV ($12)+y, A
	INCW $12
	MOVW YA, $12
	CMPW YA, $3E
	BNE CODE_1701
CODE_172D:
	RET

DATA_172E:
	incbin "UnsortedData/Robotron2084/DATA_172E.bin"

DATA_1772:
	incbin "UnsortedData/Robotron2084/DATA_1772.bin"

DATA_17C1:
	incbin "UnsortedData/Robotron2084/DATA_17C1.bin"

DATA_189C:
	incbin "UnsortedData/Robotron2084/DATA_189C.bin"

DATA_19AF:
	incbin "UnsortedData/Robotron2084/DATA_19AF.bin"

DATA_1A6C:
	incbin "UnsortedData/Robotron2084/DATA_1A6C.bin"

UNK_1B20:
	db "Programmed By John Kowalski"

DATA_1B3B:
	incbin "UnsortedData/Robotron2084/DATA_1B3B.bin"

CODE_1B91:
	CALL CODE_1BB1
	JMP CODE_0335

CODE_1B97:
	PUSH A
CODE_1B98:
	PUSH A
	CMP A, #$09
	BCC CODE_1BA8
	CALL CODE_1BD3
	POP A
	SETC
	SBC A, #$0A
	BNE CODE_1B98
	POP A
	RET

CODE_1BA8:
	CALL CODE_1BB1
	POP A
	DEC A
	BNE CODE_1B98
	POP A
	RET

CODE_1BB1:
	PUSH A
	MOV A, #$00
CODE_1BB4:
	MOV $F3, A
	MOV $14, A
CODE_1BB8:
	DEC A
	NOP
	NOP
	NOP
	NOP
	BPL CODE_1BB8
	MOV A, #$7F
	MOV $F3, A
	MOV A, $14
CODE_1BC5:
	DEC A
	NOP
	NOP
	NOP
	NOP
	BPL CODE_1BC5
	MOV A, $14
	INC A
	BPL CODE_1BB4
	POP A
	RET

CODE_1BD3:
	PUSH A
	MOV A, #$00
CODE_1BD6:
	MOV $F3, A
	MOV $14, A
CODE_1BDA:
	DEC A
	XCN A
	XCN A
	XCN A
	XCN A
	BPL CODE_1BDA
	MOV A, #$7F
	MOV $F3, A
	MOV A, $14
CODE_1BE7:
	DEC A
	XCN A
	XCN A
	XCN A
	XCN A
	BPL CODE_1BE7
	MOV A, $14
	INC A
	BPL CODE_1BD6
	POP A
	RET

%SPCDataBlockEnd(0200)

%EndSPCUploadAndJumpToEngine(SPC700_Engine)