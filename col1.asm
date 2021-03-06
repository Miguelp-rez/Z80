    CPU "Z80.TBL"
    HOF "INT8"
ETI2: NOP
    LD BC, 1000H
ETI1: LD (BC),A
    INC BC
    INC B
ETI3: DEC B
    LD B, 11H
    RLCA
    EX AF, AF'
    ADD HL, BC
    LD A,(BC)
    DEC BC
    INC C
    DEC C
    LD C, 11H
    RRCA
    DJNZ ETI1
    LD DE, 2211H
    LD (DE), A
    INC DE
    INC D
    DEC D
    LD D, 33H
    RLA
    JR ETI2
    ADD HL, DE
    LD A, (DE)
    DEC DE
    INC E
    DEC E
    LD E, 66H
    RRA
    JR NZ, ETI1
    LD HL, 2000H
    LD (0BB8H), HL
    INC HL
    INC H
    DEC H
    LD H, 99H
    DAA
    JR Z, ETI3
    ADD HL, HL
    LD HL, (1100H)
    DEC HL
    INC L
    DEC L
    LD L, 22H
    CPL
    JR NC, ETI2
    LD SP, 2000H
    LD (2000H), A
    INC SP
    INC (HL)
    DEC (HL)
    LD (HL), 99H
    SCF
    JR C, ETI1
    ADD HL, SP
    LD A, (2000H)
    DEC SP
    INC A
    DEC A
    LD A, 11H
    CCF
    LD B, B
    LD B, C
    LD B, D
    LD B, E
    LD B, H
    LD B, L
    LD B, (HL)
    LD B, A
    LD C, B
    LD C, C
    LD C, D
    LD C, E
    LD C, H
    LD C, L
    LD C, (HL)
    LD C, A
    LD D, B
    LD D, C
    LD D, D
    LD D, E
    LD D, H
    LD D, L
    LD D, (HL)
    LD D, A
    LD E, B
    LD E, C
    LD E, D
    LD E, E
    LD E, H
    LD E, L
    LD E, (HL)
    LD E, A
    LD H, B
    LD H, C
    LD H, D
    LD H, E
    LD H, H
    LD H, L
    LD H, (HL)
    LD H, A
    LD L, B
    LD L, C
    LD L, D
    LD L, E
    LD L, H
    LD L, L
    LD L, (HL)
    LD L, A
    LD (HL), B
    LD (HL), C
    LD (HL), D
    LD (HL), E
    LD (HL), H
    LD (HL), L
    HALT
    LD (HL), A
    LD A, B
    LD A, C
    LD A, D
    LD A, E
    LD A, H
    LD A, L
    LD A, (HL)
    LD A, A
    ADD A, B
    ADD A, C
    ADD A, D
    ADD A, E
    ADD A, H
    ADD A, L
    ADD A, (HL)
    ADD A, A
    ADC A, B
    ADC A, C
    ADC A, D
    ADC A, E
    ADC A, H
    ADC A, L
    ADC A, (HL)
    ADC A, A
    SUB B
    SUB C
    SUB D
    SUB H
    SUB L
    SUB (HL)
    SUB A
    SBC A, B
    SBC A, C
    SBC A, D
    SBC A, E
    SBC A, H
    SBC A, L
    SBC A, (HL)
    SBC A, A
    AND B
    AND C
    AND D
    AND E
    AND H
    AND L
    AND (HL)
    AND A
    XOR B
    XOR C
    XOR D
    XOR E
    XOR H
    XOR L
    XOR (HL)
    XOR A
    OR B
    OR C
    OR D
    OR E
    OR H
    OR L
    OR (HL)
    OR A
    CP B
    CP C
    CP D
    CP E
    CP H
    CP L
    CP (HL)
    CP A
    RET NZ
    POP BC
    JP NZ, ETI2
    JP ETI1
    CALL NZ, ETI3
    PUSH BC
    ADD A, 55H
    RST 00H
    RET Z
    RET
    JP Z, ETI2
    CALL Z, ETI1
    CALL ETI3
    ADC A, 02H
    RST 08H
    RET NC
    POP DE
    JP NC, ETI2
    OUT (00H), A
    CALL NC, ETI2
    PUSH DE
    SUB 33H
    RST 10H
    RET C
    EXX
    JP C, ETI1
    IN A, (66H)
    CALL C, ETI3
    SBC A, 99H
    RST 18H
    RET PO
    POP HL
    JP PO, ETI2
    EX (SP), HL
    CALL PO, ETI1
    PUSH HL
    AND 03H
    RST 20H
    RET PE
    JP (HL)
    JP PE, ETI3
    EX DE, HL
    CALL PE, ETI2
    XOR 33H
    RST 28H
    RET P
    POP AF
    JP P, ETI1
    PUSH AF
    OR 88H
    RST 30H
    RET M
    LD SP, HL
    JP M, ETI3
    EI
    CALL M, ETI2
    CP 76H
    RST 38H