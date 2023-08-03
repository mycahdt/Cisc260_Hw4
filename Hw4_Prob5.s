TFib:         SUB sp, sp, #16
        STR R14, [sp, #0]
        STR R0, [sp, #4]
        CMP R0, #2
        BGT ELSE
        LDR R14, [sp, #0]
        ADD sp, sp, #16
        MOV pc, R16
ELSE:        SUB R0, R0, #1
        BL TFib
        STR R0, [sp, #8]
        LDR R0, [sp, #4]
        SUB R0, R0, #2
        BL TFib
        STR R0, [sp, #12]
        LDR R0, [sp, #4]
        SUB R0, R0, #3
        BL TFib
        LDR R1, [sp, #8]
        LDR R2, [sp, #12]
        ADD R0, R0, R1
        ADD R0, R0, R2
        LDR R14, [sp, #0]
        ADD sp, sp, #16
        MOV pc, R14