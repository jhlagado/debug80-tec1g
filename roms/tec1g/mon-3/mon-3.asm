; MON-3 ROM (asm80 wrapper)
; Includes the binary image so the ROM can be rebuilt via asm80.
        ORG     0xC000
        INCBIN  "mon-3.bin"
