.orga 0x9E660
BEQ R0, R0, 0x9E730
SLL R0, R0, 0

.orga 0x3178
JAL 0x802AECA8


.orga 0x69CA8
ADDIU SP, SP, 0xFFE8
SW RA, 0x14(SP)
LUI A0, 0x8040
LW A0, 0x0(A0)
LUI A1, 0x120
LW A1, 0x0(A1)
LUI A2, 0x120
JAL 0x80278504
LW A2, 0xFFFF(A2)

LUI A0, 0x8036
LW A0, 0x7530(A0)
LUI A1, 0x7C
LW A1, 0xC6C0(A1)
LUI A2, 0x7D
JAL 0x80278504
LW A2, 0xD890(A2)

LW RA, 0x14(SP) 
JR RA
ADDIU SP, SP, 0x18

.orga 0x1200000
.asciiz "DEAD"

.orga 0x120000C
.asciiz "HEALTH"

.orga 0x7CC6C0
ADDIU SP, SP, 0xFFE8
SW RA, 0x14(SP)

LUI T0, 0x8033
SH T1, 0xb266(T0)

BEQZ T1, d

ADDIU A0, R0, 0x14
ADDIU A1, R0, 0xAA
JAL 0x802D6554
LUI A2, 0x8040
LW A2, 0xC(A2)

ADDIU A0, R0, 0x14
ADDIU A1, R0, 0xAA 
JAL 0x802D6554
ADDU A2, R0, T1

BEQ R0, R0, end
SLL R0, R0, 0

d:
ADDIU A0, R0, 0x14
ADDIU A1, R0, 0xAA 
JAL 0x802D6554
LUI A2, 0x8040
LW A2, 0x0(A2)

end:

LW RA, 0x14(SP) 
JR RA
ADDIU SP, SP, 0x18

.orga 0x11CC
ADDIU SP, SP, 0xFFE8
SW RA, 0x14(SP)
JAL 0x80367530
SLL R0, R0, 0
LW RA, 0x14(SP)
JR RA
ADDIU SP, SP, 0x18
