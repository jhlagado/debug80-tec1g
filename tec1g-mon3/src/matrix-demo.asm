; TEC-1G 8x8 matrix demo (MON-3 layout, RAM @ 0x4000).
        ORG     0x4000

MATRIX_ROW: EQU 0x02
MATRIX_COL: EQU 0x03

START:
        LD      B,0
NEXT_ROW:
        LD      A,1
        LD      C,B
ROW_SHIFT:
        DEC     C
        JR Z,ROW_DONE
        SLA     A
        JR ROW_SHIFT
ROW_DONE:
        OUT     (MATRIX_ROW),A

        ; Set column bits pattern (diagonal)
        LD      A,1
        LD      C,B
COL_SHIFT:
        DEC     C
        JR Z,COL_DONE
        SLA     A
        JR COL_SHIFT
COL_DONE:
        OUT     (MATRIX_COL),A

        INC     B
        LD      A,B
        CP      8
        JR      NZ,NEXT_ROW

        LD      B,0
        JR      NEXT_ROW
