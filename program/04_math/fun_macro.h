#ifndef FUNC
#define FUNC

.macro func rd, rs1, rs2, f7=0b0100001, f3=110, opcode=1101011
    .word   \f7\rs1\rs2\f3\rd\opcode
.endm

#endif