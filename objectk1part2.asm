.orga 0x0021ACD0	;;Uses Behaviour 0x13000EDO
.dw 0x00060000
.dw 0x11014041
.dw 0x08000000
.dd 0x0C0000008040F02C
.dw 0x09000000 

.orga 0x120F02C

ADDIU SP, SP, -0x18
SW RA, 0x14(SP)

JAL 0x8027A16C		;;Calling Set flags of each save file.
NOP

LI T5, 0x80361160	;;Points to same object for using BParams.
LW T5, 0(T5)
LB T5, 0x189(T5)
NOP

LI T7, 0x8033B170	;;Game flags.
ANDI T1, V0, 0x10	;;checking flag bitwise key 1.
BEQZ T1, Poop80
NOP

ADDIU T3, R0, 300	;;X value 
MTC1 T3, F4
NOP
CVT.S.W F6, F4
SWC1 F6, 0x3C(T7)
ADDIU T3, R0, -800	;;Y value
MTC1 T3, F4
NOP
CVT.S.W F6, F4
SWC1 F10, 0x40(T7)
ADDIU T3, R0, 300	;;Z value
MTC1 T3, F4
NOP
CVT.S.W F6, F4
SWC1 F6, 0x44(T7) 
LUI A0, 0x8036
JAL 0x802A0568 		;;flags for deletion
LW A0, 0x1160(A0)

Poop80:
LW RA, 0x14(SP)
JR RA
ADDIU SP, SP, 0x18
