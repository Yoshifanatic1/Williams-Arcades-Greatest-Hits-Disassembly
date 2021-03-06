
%SPCDataBlockStart(4700)
DATA_4700:
	db $04,$47,$04,$47,$C3,$99,$99,$99,$99,$99,$99,$99,$99

CODE_470D:
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
	MOV $F3, #$47
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
	RET

CODE_476B:
	CMP $F4, #$3F
	BEQ CODE_4773
	JMP CODE_482F

CODE_4773:
	MOV $18, $F5
	MOV $F5, $F5
CODE_4779:
	CMP $F7, #$FF
	BNE CODE_4786
	CMP $F7, #$FF
	BNE CODE_4786
	JMP CODE_4791

CODE_4786:
	CMP $F4, #$3F
	BEQ CODE_4779
	CMP $F5, $18
	BNE CODE_476B
	RET

CODE_4791:
	CALL CODE_4797
	JMP !REGISTER_SPC700_IPLROMLoc

CODE_4797:
	MOV A, $F3
CODE_4799:
	MOV $F3, A
	PUSH A
	POP A
	PUSH A
	POP A
	BEQ CODE_47AB
	BPL CODE_47A7
	INC A
	JMP CODE_4799

CODE_47A7:
	DEC A
	JMP CODE_4799

CODE_47AB:
	RET

SPC700_Engine:
	CLRP
	MOV X, #$7F
	MOV SP, X
	MOV A, #$5F
	MOV $10, A
	MOV A, $10
	MOV $12, A
	MOV $F2, #$4D
	MOV $F3, #$00
	MOV $F2, #$5C
	MOV $F3, #$FC
	MOV $F2, #$4C
	MOV $F3, #$03
	MOV A, #$00
CODE_47CC:
	MOV $F2, A
	CMP A, #$6C
	BNE CODE_47DC
	MOV $F3, #$20
	MOV X, #$00
CODE_47D7:
	DEC X
	BEQ CODE_47DF
	BRA CODE_47D7

CODE_47DC:
	MOV $F3, #$00
CODE_47DF:
	INC A
	CMP A, #$80
	BNE CODE_47CC
	CALL CODE_470D
	MOV $F2, #$07
	MOV $F3, #$00
	MOV A, #$00
	MOV $F4, A
	MOV $17, $F4
	MOV $F5, $F5
	MOV $18, $F5
	MOV Y, #$00
	MOV A, #$35
	MOVW $1F, YA
	MOV Y, #$00
	MOV A, #$2D
	MOVW $21, YA
	MOV Y, #$00
	MOV A, #$3E
	MOVW $23, YA
	MOV Y, #$00
	MOV A, #$02
	MOVW $1A, YA
	MOV A, #$01
	MOVW $1C, YA
	MOV $1E, Y
	MOV A, #$3C
	MOV $10, A
	MOV A, $10
	MOV $0F, A
	MOV $10, #$00
	MOV A, $10
	MOV $0C, A
	MOV $09, A
	MOV $0A, A
	MOV $0B, A
	MOV $0D, A
CODE_482F:
	MOV A, $F5
	CMP A, $F5
	BNE CODE_482F
	CMP $F7, #$FF
	BNE CODE_4842
	CMP $F7, #$FF
	BNE CODE_4842
	JMP CODE_4791

CODE_4842:
	CMP A, $18
	BEQ CODE_482F
	MOV A, $F4
	MOV $17, A
	MOV $F4, A
	MOV A, $F5
	MOV $18, A
	MOV $F5, A
	MOV X, #$7F
	MOV SP, X
CODE_4855:
	MOV A, $17
	MOV $10, A
	CMP A, #$31
	BNE CODE_4860
	MOV $0B, #$00
CODE_4860:
	CMP A, #$3F
	BNE CODE_486A
	CALL CODE_476B
	JMP CODE_482F

CODE_486A:
	EOR $10, #$FF
	MOV A, $10
	AND A, #$1F
	MOV $10, A
	MOV A, $0D
	MOV $11, A
	BEQ CODE_487C
	CALL CODE_4D45
CODE_487C:
	MOV $11, #$00
	MOV A, $10
	CMP A, #$0E
	BEQ CODE_4889
	MOV A, $11
	MOV $0B, A
CODE_4889:
	MOV A, $10
	CMP A, #$12
	BEQ CODE_4893
	MOV A, $11
	MOV $0C, A
CODE_4893:
	MOV A, $10
	CMP A, #$00
	BNE CODE_489C
	JMP CODE_48F1

CODE_489C:
	DEC $10
	MOV A, $10
	CMP A, #$0C
	BCC CODE_48A9
	BEQ CODE_48A9
	JMP CODE_48B2

CODE_48A9:
	CALL CODE_4F5E
	CALL CODE_501D
	JMP CODE_48F1

CODE_48B2:
	MOV A, $10
	CMP A, #$1B
	BCC CODE_48BD
	BEQ CODE_48BD
	JMP CODE_48E4

CODE_48BD:
	MOV A, $10
	SETC
	SBC A, #$0D
	MOV $10, A
	ASL $10
	MOV Y, #DATA_5139>>8
	MOV A, #DATA_5139
	MOVW $13, YA
	CALL CODE_4914
	MOV Y, #$00
	MOV A, ($13)+y
	MOV $15, A
	MOV Y, #$01
	MOV A, ($13)+y
	MOV $14, A
	MOV $13, $15
	CALL $0012
	JMP CODE_48F1

CODE_48E4:
	MOV A, $10
	SETC
	SBC A, #$1C
	MOV $10, A
	CALL CODE_492A
	CALL CODE_495B
CODE_48F1:
	MOV A, $09
	MOV $10, A
	OR A, $0A
	MOV $10, A
	BNE CODE_48FE
	JMP CODE_482F

CODE_48FE:
	MOV $10, #$00
	MOV A, $10
	MOV $0C, A
	MOV A, $09
	MOV $10, A
	BNE CODE_490E
	JMP CODE_4911

CODE_490E:
	JMP CODE_4AE8

CODE_4911:
	JMP CODE_4EEA

CODE_4914:
	MOVW YA, $13
	MOVW $27, YA
	MOV A, $10
	CLRC
	ADC A, $27
	MOV $10, A
	MOV $27, A
	BCC CODE_4925
	INC $28
CODE_4925:
	MOVW YA, $27
	MOVW $13, YA
	RET

CODE_492A:
	MOV $11, $10
	ASL $10
	ASL $10
	ASL $10
	CLRC
	ADC $10, $11
	MOV Y, #$00
	MOV A, #$2D
	MOVW $13, YA
	MOVW YA, $13
	MOV $29, A
	MOV $2A, Y
	MOV Y, #DATA_5157>>8
	MOV A, #DATA_5157
	MOVW $13, YA
	CMP $F5, $18
	BEQ CODE_4951
	CALL CODE_476B
CODE_4951:
	CALL CODE_4914
	MOV A, #$09
	MOV $11, A
	JMP CODE_4E8D

CODE_495B:
	MOV A, $35
	LSR A
	MOV $F3, A
CODE_4960:
	MOV $36, $2D
	MOV $37, $2E
CODE_4966:
	MOVW YA, $32
	MOVW $13, YA
CODE_496A:
	MOV A, $36
	MOV $10, A
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
CODE_4974:
	DECW $13
	BEQ CODE_4999
	DEC $10
	BNE CODE_4974
	CMP $F5, $18
	BEQ CODE_4984
	CALL CODE_476B
CODE_4984:
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
	MOV A, $37
	MOV $10, A
CODE_498E:
	DECW $13
	BEQ CODE_4999
	DEC $10
	BNE CODE_498E
	JMP CODE_496A

CODE_4999:
	MOV A, $F3
	ASL A
	MOV $10, A
	BMI CODE_49A3
	EOR $10, #$FF
CODE_49A3:
	MOV A, $10
	CLRC
	ADC A, #$00
	MOV $10, A
	LSR A
	MOV $F3, A
	MOV A, $36
	MOV $10, A
	CLRC
	ADC A, $2F
	MOV $10, A
	MOV $36, A
	MOV A, $37
	MOV $10, A
	CLRC
	ADC A, $30
	MOV $10, A
	MOV $37, A
	CMP A, $31
	BNE CODE_4966
	MOV A, $34
	MOV $10, A
	BEQ CODE_49E3
	CMP $F5, $18
	BEQ CODE_49D5
	CALL CODE_476B
CODE_49D5:
	MOV A, $10
	CLRC
	ADC A, $2D
	MOV $10, A
	MOV $2D, A
	BEQ CODE_49E3
	JMP CODE_4960

CODE_49E3:
	RET

CODE_49E4:
	MOV A, #$01
	MOV $10, A
	MOV A, $10
	MOV $34, A
	MOV A, #$03
	MOV $11, A
	JMP CODE_4A06

CODE_49F3:
	MOV A, #$FE
	MOV $10, A
	MOV A, $10
	MOV $34, A
	MOV A, #$C0
	MOV $10, A
	MOV A, #$10
	MOV $11, A
	JMP CODE_4A06

CODE_4A06:
	MOV A, $10
	MOV $33, A
	MOV A, #$FF
	MOV $10, A
	MOV A, $10
	LSR A
	MOV $F3, A
	MOV A, $11
	MOV $2F, A
CODE_4A17:
	MOV A, $2F
	MOV $11, A
CODE_4A1B:
	MOV A, $0E
	MOV $10, A
	LSR $10
	LSR $10
	LSR $10
	MOV A, $10
	EOR A, $0E
	MOV $10, A
	LSR $10
	ROR $0F
	ROR $0E
	BCC CODE_4A41
	CMP $F5, $18
	BEQ CODE_4A3B
	CALL CODE_476B
CODE_4A3B:
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
CODE_4A41:
	MOV A, $33
	MOV $10, A
CODE_4A45:
	DEC $10
	BNE CODE_4A45
	DEC $11
	BNE CODE_4A1B
	MOV A, $33
	MOV $10, A
	MOV A, $10
	CLRC
	ADC A, $34
	MOV $10, A
	MOV A, $10
	MOV $33, A
	BNE CODE_4A17
	RET

CODE_4A5F:
	MOV A, #$20
	MOV $10, A
	MOV A, $10
	MOV $2F, A
	MOV A, $10
	MOV $32, A
	MOV A, #$01
	MOV $10, A
	MOV Y, #$00
	MOV A, #$01
	MOVW $13, YA
	MOV A, #$FF
	MOV $11, A
	JMP CODE_4A7C

CODE_4A7C:
	MOV A, $10
	MOV $2D, A
CODE_4A80:
	MOVW YA, $13
	MOV $30, A
	MOV $31, Y
CODE_4A86:
	MOV A, $11
	MOV $2E, A
	MOV A, $2F
	MOV $11, A
CODE_4A8E:
	MOV A, $0E
	MOV $10, A
	LSR $10
	LSR $10
	LSR $10
	MOV A, $10
	EOR A, $0E
	MOV $10, A
	LSR $10
	ROR $0F
	ROR $0E
	MOV A, #$00
	MOV $10, A
	BCC CODE_4AAE
	MOV A, $2E
	MOV $10, A
CODE_4AAE:
	CMP $F5, $18
	BEQ CODE_4AB6
	CALL CODE_476B
CODE_4AB6:
	MOV A, $10
	LSR A
	MOV $F3, A
	MOV A, $30
	MOV Y, $31
	MOVW $13, YA
CODE_4AC1:
	DECW $13
	BNE CODE_4AC1
	DEC $11
	BNE CODE_4A8E
	MOV A, $2E
	MOV $11, A
	MOV A, $11
	SETC
	SBC A, $2D
	MOV $11, A
	BEQ CODE_4AE7
	MOV A, $30
	MOV Y, $31
	MOVW $13, YA
	INCW $13
	MOV A, $32
	MOV $10, A
	BEQ CODE_4A86
	JMP CODE_4A80

CODE_4AE7:
	RET

CODE_4AE8:
	MOV A, #$01
	MOV $11, A
	MOV A, $11
	MOV $09, A
	MOV A, #DATA_4B0E
	MOV Y, #DATA_4B0E>>8
	MOVW $13, YA
	JMP CODE_4B31

CODE_4AF9:
	MOV A, #DATA_4B14
	MOV Y, #DATA_4B14>>8
	MOVW $13, YA
	JMP CODE_4B31

CODE_4B02:
	MOV A, #DATA_4B1A
	MOV Y, #DATA_4B1A>>8
	MOVW $13, YA
	NOP
	POP A
	PUSH A
	JMP CODE_4B31

DATA_4B0E:
	db $00,$00,$00,$01,$00,$00

DATA_4B14:
	db $00,$00,$00,$03,$00,$00

DATA_4B1A:
	db $01,$00,$01,$FF,$E8,$03

DATA_4B20:
	db $01,$01,$01,$40,$00,$10,$01,$80,$01,$FF

CODE_4B2A:
	SETP
	MOV A, #DATA_4B20
	MOV Y, #DATA_4B20>>8
	MOVW $13, YA
CODE_4B31:
	MOV Y, #$00
	MOV A, ($13)+y
	MOV $10, A
	MOV A, $10
	MOV $33, A
	MOV Y, #$01
	MOV A, ($13)+y
	MOV $10, A
	MOV A, $10
	MOV $00, A
	MOV Y, #$02
	MOV A, ($13)+y
	MOV $10, A
	MOV Y, #$03
	MOV A, ($13)+y
	MOV $11, A
	MOV Y, #$05
	MOV A, ($13)+y
	MOV $15, A
	DEC Y
	MOV A, ($13)+y
	MOV Y, $15
	MOVW $13, YA
	MOV A, $10
	MOV $32, A
	MOV A, $11
	MOV $2D, A
	MOVW YA, $13
	MOVW $30, YA
	MOV $2E, #$00
CODE_4B6D:
	MOVW YA, $30
	MOVW $13, YA
	MOV A, $19
	MOV $10, A
CODE_4B75:
	MOV A, $10
	LSR A
	LSR A
	LSR A
	EOR A, $0E
	LSR A
	MOV $11, A
	ROR $0F
	ROR $0E
	MOV $11, $2D
	CMP $33, #$00
	BEQ CODE_4B94
	MOV A, $11
	AND A, $0F
	CLRC
	ADC A, $00
	MOV $11, A
CODE_4B94:
	MOV $2F, $11
	MOV A, $2E
	MOV $11, A
	CMP $10, $0E
	BCC CODE_4BA2
	BNE CODE_4BC8
CODE_4BA2:
	DECW $13
	BEQ CODE_4BEF
	MOV A, $10
	MOV $19, A
	LSR A
	MOV $F3, A
	CMP $F5, $18
	BEQ CODE_4BB5
	CALL CODE_476B
CODE_4BB5:
	CLRC
	ADC $11, $2E
	ADC $10, $2F
	BCS CODE_4BE3
	CMP $10, $0E
	BCC CODE_4BA2
	BEQ CODE_4BA2
	JMP CODE_4BE3

CODE_4BC8:
	DECW $13
	BEQ CODE_4BEF
	MOV A, $10
	MOV $19, A
	LSR A
	MOV $F3, A
	SETC
	SBC $11, $2E
	SBC $10, $2F
	BCC CODE_4BE3
	CMP $10, $0E
	BCC CODE_4BE3
	BNE CODE_4BC8
CODE_4BE3:
	MOV A, $0E
	MOV $10, A
	MOV $19, A
	LSR A
	MOV $F3, A
	JMP CODE_4B75

CODE_4BEF:
	MOV A, $32
	MOV $11, A
	BNE CODE_4BF8
	JMP CODE_4B75

CODE_4BF8:
	MOV $10, $2D
	MOV $11, $2E
	LSR $10
	ROR $11
	LSR $10
	ROR $11
	LSR $10
	ROR $11
	EOR $10, #$FF
	MOV A, #$00
	SETC
	SBC A, $11
	MOV $11, A
	MOV A, $10
	SBC A, #$FF
	MOV $10, A
	MOV A, $11
	CLRC
	ADC A, $2E
	MOV $11, A
	MOV A, $10
	ADC A, $2D
	MOV $10, A
	MOV $2E, $11
	MOV $2D, $10
	BEQ CODE_4C32
	JMP CODE_4B6D

CODE_4C32:
	CMP $11, #$07
	BEQ CODE_4C3A
	JMP CODE_4B6D

CODE_4C3A:
	RET

CODE_4C3B:
	MOV A, #$51
	MOV $10, A
	MOV $2A, A
	MOV Y, #$00
	MOV A, #$64
	MOVW $13, YA
	MOVW $25, YA
CODE_4C49:
	CLRC
	ADC $11, $25
	MOV A, $2B
	ADC A, $26
	MOV $10, A
	MOV $2B, A
	BCC CODE_4C5B
	INCW $25
	BEQ CODE_4C77
CODE_4C5B:
	NOP
	MOV A, $10
	AND A, #$0F
	CLRC
	ADC A, #$7B
	MOV $29, A
	MOV Y, #$00
	MOV A, ($29)+y
	CMP $F5, $18
	BEQ CODE_4C71
	CALL CODE_476B
CODE_4C71:
	LSR A
	MOV $F3, A
	JMP CODE_4C49

CODE_4C77:
	RET

CODE_4C78:
	MOV $10, #$00
	MOV A, $10
	LSR A
	MOV $F3, A
	MOV A, $10
	MOV $2B, A
CODE_4C84:
	MOV $10, #$00
CODE_4C87:
	MOV A, $10
	CMP A, $2B
	BEQ CODE_4C91
	NOP
	JMP CODE_4C98

CODE_4C91:
	NOP
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
CODE_4C98:
	MOV A, #$08
	MOV $11, A
CODE_4C9C:
	DEC $11
	BEQ CODE_4CA4
	XCN A
	JMP CODE_4C9C

CODE_4CA4:
	INC $10
	BMI CODE_4CAE
	NOP
	NOP
	NOP
	JMP CODE_4C87

CODE_4CAE:
	MOV $15, $15
	CMP $F5, $18
	BEQ CODE_4CB9
	CALL CODE_476B
CODE_4CB9:
	MOV A, $F3
	EOR A, #$7F
	MOV $F3, A
	INC $2B
	BMI CODE_4CC9
	NOP
	NOP
	NOP
	JMP CODE_4C84

CODE_4CC9:
	RET

CODE_4CCA:
	MOV X, #$00
	MOVW YA, $21
	MOVW $13, YA
CODE_4CD0:
	MOV A, #$00
	MOV ($13+x), A
	INCW $13
	MOVW YA, $13
	CMPW YA, $1F
	BNE CODE_4CD0
	MOV $2D, #$40
CODE_4CDF:
	MOVW YA, $21
	MOVW $13, YA
	MOV $2B, #$80
	MOV $11, #$00
CODE_4CE9:
	MOV Y, #$01
	MOV A, ($13)+y
	CLRC
	ADC A, ($13+x)
	MOV ($13)+y, A
	BPL CODE_4CF7
	ADC $11, $2B
CODE_4CF7:
	LSR $2B
	MOVW YA, $13
	ADDW YA, $1A
	MOVW $13, YA
	CMPW YA, $1F
	BNE CODE_4CE9
	MOV A, $11
	LSR A
	MOV $F3, A
	INC $2C
	BNE CODE_4CDF
	MOVW YA, $21
	MOVW $13, YA
	MOV $11, #$00
CODE_4D13:
	MOV A, ($13+x)
	BEQ CODE_4D27
	DEC A
	MOV ($13+x), A
	CMP A, #$37
	BNE CODE_4D24
	MOV A, #$41
	MOV Y, #$02
	MOV ($13)+y, A
CODE_4D24:
	INC A
	MOV $11, A
CODE_4D27:
	MOVW YA, $13
	ADDW YA, $1A
	MOVW $13, YA
	CMP $F5, $18
	BNE CODE_4D3C
CODE_4D32:
	CMPW YA, $1F
	BNE CODE_4D13
	CMP $11, #$00
	BNE CODE_4CDF
	RET

CODE_4D3C:
	CALL CODE_476B
	JMP CODE_4D32

CODE_4D42:
	DEC $0D
	RET

CODE_4D45:
	CALL CODE_4D4B
	JMP CODE_48F1

CODE_4D4B:
	MOV A, #$00
	MOV $0D, A
	MOV A, $10
	MOV $2B, A
	MOV A, #DATA_518B
	MOV Y, #DATA_518B>>8
	MOVW $13, YA
CODE_4D59:
	MOV Y, #$00
	MOV A, ($13)+y
	MOV $10, A
	BNE CODE_4D64
	JMP CODE_4855

CODE_4D64:
	DEC $2B
	BNE CODE_4D6B
	JMP CODE_4D73

CODE_4D6B:
	INC $10
	CALL CODE_4914
	JMP CODE_4D59

CODE_4D73:
	INCW $13
	MOVW YA, $13
	MOV $29, A
	MOV $2A, Y
	CALL CODE_4914
	MOVW YA, $13
	MOV $27, A
	MOV $28, Y
	MOV A, $29
	MOV Y, $2A
	MOVW $13, YA
CODE_4D8A:
	MOV Y, #$01
	MOV A, ($13)+y
	MOV $10, A
	MOV A, $10
	MOV $2F, A
	MOV Y, #$00
	MOV A, ($13)+y
	MOV $10, A
	MOV Y, #$03
	MOV A, ($13)+y
	MOV $15, A
	DEC Y
	MOV A, ($13)+y
	MOV Y, $15
	MOVW $13, YA
	MOVW YA, $13
	MOV $2E, A
	MOV $2D, Y
	CALL CODE_4DD5
	MOV A, $29
	MOV Y, $2A
	MOVW $13, YA
	INCW $13
	INCW $13
	INCW $13
	INCW $13
	MOVW YA, $13
	MOV $29, A
	MOV $2A, Y
	MOV A, $27
	MOV Y, $28
	MOVW $15, YA
	MOVW YA, $13
	CMPW YA, $15
	BEQ CODE_4DD3
	JMP CODE_4D8A

CODE_4DD3:
	RET

CODE_4DD4:
	RET

CODE_4DD5:
	MOV Y, #$00
	MOV A, #$30
	MOVW $13, YA
	MOV A, $10
	SETC
	SBC A, #$02
	MOV $10, A
CODE_4DE2:
	BCC CODE_4DE6
	BNE CODE_4DE9
CODE_4DE6:
	JMP CODE_4E1C

CODE_4DE9:
	MOV A, $10
	CMP A, #$03
	BNE CODE_4DF2
	JMP CODE_4E08

CODE_4DF2:
	MOV A, #$DF
	MOV $11, A
	MOV Y, #$00
	MOV A, $11
	MOV ($13)+y, A
	INCW $13
	MOV A, $10
	SETC
	SBC A, #$02
	MOV $10, A
	JMP CODE_4DE2

CODE_4E08:
	MOV A, #$64
	MOV $11, A
	MOV Y, #$00
	MOV A, $11
	MOV ($13)+y, A
	MOV Y, #$01
	MOV A, #$00
	MOV ($13)+y, A
	INCW $13
	INCW $13
CODE_4E1C:
	MOV A, #$5F
	MOV $11, A
	MOV Y, #$00
	MOV A, $11
	MOV ($13)+y, A
	MOV A, #$40
	MOV $11, A
	MOV Y, #$01
	MOV A, $11
	MOV ($13)+y, A
	MOV A, #$4E
	MOV $11, A
	MOV Y, #$02
	MOV A, $11
	MOV ($13)+y, A
	MOV A, $2D
	MOV Y, $2E
	MOVW $13, YA
	MOV $10, #$00
	MOV A, $2C
	INC A
	MOV $2C, A
	AND A, $2F
	LSR A
	MOV $11, A
	MOV A, $10
	ADC A, #$00
	LSR $11
	ADC A, #$00
	LSR $11
	ADC A, #$00
	LSR $11
	ADC A, #$00
	LSR $11
	ADC A, #$00
	LSR $11
	ADC A, #$00
	LSR $11
	ADC A, #$00
	CLRC
	ADC A, $11
	ASL A
	ASL A
	ASL A
	ASL A
	ASL A
	MOV $10, A
	LSR A
	CMP $F5, $18
	BNE CODE_4E87
CODE_4E79:
	MOV $F3, A
	DECW $13
	DECW $13
	DECW $13
	BMI CODE_4E86
	JMP $0030

CODE_4E86:
	RET

CODE_4E87:
	CALL CODE_476B
	JMP CODE_4E79

CODE_4E8D:
	MOV A, $10
	PUSH A
CODE_4E90:
	MOV Y, #$00
	MOV A, ($13)+y
	MOV $10, A
	MOVW YA, $13
	MOV $27, A
	MOV $28, Y
	MOV A, $29
	MOV Y, $2A
	MOVW $13, YA
	MOV Y, #$00
	MOV A, $10
	MOV ($13)+y, A
	INCW $13
	MOVW YA, $13
	MOV $29, A
	MOV $2A, Y
	MOV A, $27
	MOV Y, $28
	MOVW $13, YA
	INCW $13
	DEC $11
	BNE CODE_4E90
	POP A
	MOV $10, A
	RET

CODE_4EC0:
	MOV $10, #$00
	MOV A, $10
	MOV $09, A
	MOV A, $10
	MOV $0A, A
	RET

CODE_4ECC:
	MOV A, #$00
	MOV $09, A
	MOV A, $0A
	MOV $10, A
	MOV A, $10
	AND A, #$7F
	MOV $10, A
	MOV A, $10
	CMP A, #$1D
	BNE CODE_4EE3
	MOV $10, #$00
CODE_4EE3:
	INC $10
	MOV A, $10
	MOV $0A, A
	RET

CODE_4EEA:
	MOV A, #$0E
	MOV $10, A
	CALL CODE_4F5E
	MOV A, $0A
	MOV $10, A
	ASL $10
	ASL $10
	EOR $10, #$FF
	CALL CODE_5086
CODE_4EFF:
	INC $31
	CALL CODE_5089
	JMP CODE_4EFF

CODE_4F07:
	MOV A, #$03
	MOV $10, A
	CALL CODE_492A
	MOV A, $0B
	CMP A, #$1F
	BNE CODE_4F16
	MOV A, #$00
CODE_4F16:
	INC A
	MOV $11, A
	MOV $0B, A
	MOV A, #$20
	MOV $10, A
	SETC
	SBC $10, $11
	MOV $11, #$00
CODE_4F26:
	CMP $10, #$14
	BCC CODE_4F36
	BEQ CODE_4F36
	CLRC
	ADC $11, #$0E
	DEC $10
	JMP CODE_4F26

CODE_4F36:
	CLRC
	ADC $11, #$05
	DEC $10
	BNE CODE_4F36
	MOV A, $11
	MOV $2D, A
CODE_4F42:
	CALL CODE_495B
	JMP CODE_4F42

CODE_4F48:
	MOV A, $0C
	MOV $10, A
	BNE CODE_4F5A
	INC $0C
	MOV A, #$0D
	MOV $10, A
	CALL CODE_4F5E
	JMP CODE_501D

CODE_4F5A:
	JMP CODE_5078

CODE_4F5D:
	RET

CODE_4F5E:
	MOV $11, $10
	ASL $11
	CLRC
	ADC $10, $11
	CLRC
	ADC $10, $11
	CLRC
	ADC $10, $11
	MOV Y, #DATA_5305>>8
	MOV A, #DATA_5305
	MOVW $13, YA
	CALL CODE_4914
	MOV Y, #$00
	MOV A, ($13)+y
	MOV $10, A
	MOV $11, $10
	MOV A, $10
	AND A, #$0F
	MOV $10, A
	MOV A, $10
	MOV $2E, A
	LSR $11
	LSR $11
	LSR $11
	LSR $11
	MOV A, $11
	MOV $2D, A
	MOV Y, #$01
	MOV A, ($13)+y
	MOV $10, A
	MOV $11, A
	LSR $11
	LSR $11
	LSR $11
	LSR $11
	MOV A, $11
	MOV $2F, A
	MOV A, $10
	AND A, #$0F
	MOV $10, A
	MOV $2B, A
	MOVW YA, $13
	MOVW $25, YA
	MOV Y, #DATA_5266>>8
	MOV A, #DATA_5266
	MOVW $13, YA
CODE_4FBD:
	DEC $2B
	BMI CODE_4FCE
	MOV Y, #$00
	MOV A, ($13)+y
	INC A
	MOV $10, A
	CALL CODE_4914
	JMP CODE_4FBD

CODE_4FCE:
	MOVW YA, $13
	MOVW $32, YA
	CALL CODE_50E5
	MOVW YA, $25
	MOVW $13, YA
	MOV Y, #$02
	MOV A, ($13)+y
	MOV $10, A
	MOV $34, A
	CALL CODE_50FD
	MOV Y, #$03
	MOV A, ($25)+y
	MOV $30, A
	MOV Y, #$04
	MOV A, ($25)+y
	MOV $31, A
	MOV Y, #$05
	MOV A, ($25)+y
	MOV $11, A
	MOV Y, #$06
	MOV A, ($25)+y
	MOV $10, A
	MOV Y, #DATA_536E>>8
	MOV A, #DATA_536E
	MOVW $13, YA
	CALL CODE_4914
	MOV $10, $11
	MOVW YA, $13
	MOVW $35, YA
	MOV $3D, #$00
	CALL CODE_4914
	MOVW YA, $13
	MOVW $37, YA
	RET

CODE_5017:
	CALL CODE_476B
	JMP CODE_504C

CODE_501D:
	MOV $3C, $2D
CODE_5020:
	MOVW YA, $35
	MOVW $27, YA
CODE_5024:
	MOV Y, #$00
	MOV A, ($27)+y
	CLRC
	ADC A, $3D
	MOV $3B, A
	MOVW YA, $27
	CMPW YA, $37
	BEQ CODE_506A
	MOV $11, $2E
	INCW $27
CODE_5038:
	MOVW YA, $23
	MOVW $13, YA
CODE_503C:
	MOV A, $3B
CODE_503E:
	DEC A
	BEQ CODE_5047
	JMP CODE_5044

CODE_5044:
	DEC A
	BNE CODE_503E
CODE_5047:
	CMP $F5, $18
	BNE CODE_5017
CODE_504C:
	MOV Y, #$00
	MOV A, ($13)+y
	LSR A
	MOV $F3, A
	INCW $13
	MOVW YA, $13
	CMPW YA, $39
	BNE CODE_503C
	DEC $11
	BEQ CODE_5024
	INCW $13
	DECW $13
	NOP
	NOP
	NOP
	NOP
	JMP CODE_5038

CODE_506A:
	MOV $10, $2F
	CALL CODE_50FD
	DEC $3C
	BNE CODE_5020
	MOV A, $0C
	BNE CODE_50E4
CODE_5078:
	MOV A, $30
	MOV $10, A
	BEQ CODE_50E4
	DEC $31
	BEQ CODE_50E4
	CLRC
	ADC $10, $3D
CODE_5086:
	MOV $3D, $10
CODE_5089:
	MOVW YA, $35
	MOVW $13, YA
	MOV $11, #$00
CODE_5090:
	MOV A, $3D
	CMP $30, #$00
	BMI CODE_50A3
	MOV Y, #$00
	CLRC
	ADC A, ($13)+y
	MOV $10, A
	BCS CODE_50AE
	JMP CODE_50B6

CODE_50A3:
	MOV Y, #$00
	CLRC
	ADC A, ($13)+y
	MOV $10, A
	BEQ CODE_50AE
	BCS CODE_50B6
CODE_50AE:
	CMP $11, #$00
	BEQ CODE_50C1
	JMP CODE_50CF

CODE_50B6:
	CMP $11, #$00
	BNE CODE_50C1
	MOVW YA, $13
	MOVW $35, YA
	INC $11
CODE_50C1:
	INCW $13
	MOVW YA, $13
	CMPW YA, $37
	BNE CODE_5090
	CMP $11, #$00
	BNE CODE_50CF
	RET

CODE_50CF:
	MOVW YA, $13
	MOVW $37, YA
	MOV A, $2F
	BEQ CODE_50E1
	CALL CODE_50E5
	MOV A, $34
	MOV $10, A
	CALL CODE_50FD
CODE_50E1:
	JMP CODE_501D

CODE_50E4:
	RET

CODE_50E5:
	MOVW YA, $23
	MOVW $29, YA
	MOVW YA, $32
	MOVW $13, YA
	MOV Y, #$00
	MOV A, ($13)+y
	MOV $11, A
	INCW $13
	CALL CODE_4E8D
	MOVW YA, $29
	MOVW $39, YA
	RET

CODE_50FD:
	MOV A, $10
	BEQ CODE_5138
	MOVW YA, $32
	MOVW $27, YA
	MOVW YA, $23
	MOVW $13, YA
	MOV $2C, $10
CODE_510C:
	MOVW YA, $13
	MOVW $29, YA
	MOV $2B, $2C
	MOV Y, #$01
	MOV A, ($27)+y
	LSR A
	LSR A
	LSR A
	LSR A
	MOV $11, A
	INCW $27
	MOV Y, #$00
	MOV A, ($13)+y
	MOV $10, A
CODE_5125:
	SETC
	SBC A, $11
	DEC $2B
	BNE CODE_5125
	MOV Y, #$00
	MOV ($13)+y, A
	INCW $13
	MOVW YA, $13
	CMPW YA, $39
	BNE CODE_510C
CODE_5138:
	RET

DATA_5139:
	dw CODE_4F07
	dw CODE_4AE8
	dw CODE_4ECC
	dw CODE_49E4
	dw CODE_4F48
	dw CODE_4EC0
	dw CODE_4A5F
	dw CODE_49F3
	dw CODE_4AF9
	dw CODE_4B02
	dw CODE_4C3B
	dw CODE_4C78
	dw CODE_4CCA
	dw CODE_4D42
	dw CODE_4DD4

DATA_5157:
	incbin "UnsortedData/Defender/DATA_5157.bin"

DATA_518B:
	incbin "UnsortedData/Defender/DATA_518B.bin"

DATA_5266:
	incbin "UnsortedData/Defender/DATA_5266.bin"

DATA_5305:
	incbin "UnsortedData/Defender/DATA_5305.bin"

DATA_536E:
	incbin "UnsortedData/Defender/DATA_536E.bin"

CODE_5426:
	CALL CODE_5446
	JMP CODE_482F

CODE_542C:
	PUSH A
CODE_542D:
	PUSH A
	CMP A, #$0A
	BCC CODE_543D
	CALL CODE_5468
	POP A
	SETC
	SBC A, #$0A
	BNE CODE_542D
	POP A
	RET

CODE_543D:
	CALL CODE_5446
	POP A
	DEC A
	BNE CODE_542D
	POP A
	RET

CODE_5446:
	PUSH A
	MOV A, #$00
CODE_5449:
	MOV $F3, A
	MOV $15, A
CODE_544D:
	DEC A
	NOP
	NOP
	NOP
	NOP
	BPL CODE_544D
	MOV A, #$7F
	MOV $F3, A
	MOV A, $15
CODE_545A:
	DEC A
	NOP
	NOP
	NOP
	NOP
	BPL CODE_545A
	MOV A, $15
	INC A
	BPL CODE_5449
	POP A
	RET

CODE_5468:
	PUSH A
	MOV A, #$00
CODE_546B:
	MOV $F3, A
	MOV $15, A
CODE_546F:
	DEC A
	XCN A
	XCN A
	XCN A
	XCN A
	BPL CODE_546F
	MOV A, #$7F
	MOV $F3, A
	MOV A, $15
CODE_547C:
	DEC A
	XCN A
	XCN A
	XCN A
	XCN A
	BPL CODE_547C
	MOV A, $15
	INC A
	BPL CODE_546B
	POP A
	RET

%SPCDataBlockEnd(4700)

%EndSPCUploadAndJumpToEngine(SPC700_Engine)
