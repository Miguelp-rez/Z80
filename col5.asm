    CPU "Z80.TBL"
    HOF "INT8"
    IN B,(C)
    OUT (C),B
    SBC HL,BC
    LD (1000H), BC
    NEG
    RETN
    IM 0
    LD I,A
    IN C,(C)
    OUT (C),C
    ADC HL,BC
    LD BC,(1000H)
    RETI
    LD R,A
    IN D,(C)
    OUT (C),D
    SBC HL,DE
    LD (1000H), DE
    IM 1
    LD A,I
    IN E,(C)
    OUT (C),E
    ADC HL,DE
    LD DE,(1000H)
    IM 2
    LD A,R
    IN H,(C)
    OUT (C),H
    SBC HL,HL
    LD (1000H), HL
    RRD
    IN L,(C)
    OUT (C),L
    ADC HL,HL
    LD HL, (1000H)
    RLD
    SBC HL,SP
    LD (1000H), SP
    IN A,(C)
    OUT (C),A
    ADC HL,SP
    LD SP,(1000H)
    LDI
    CPI
    INI
    LDD
    CPD
    IND
    LDIR
    CPIR
    INIR
    OTIR
    LDDR
    CPDR
    INDR
    OTDR