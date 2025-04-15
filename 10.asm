	AREA BlockTransfer, CODE, READONLY
ENTRY
    LDR r0, =src
    LDR r1, =dst
    LDMIA r0!, {r2-r6}
    STMIA r1!, {r2-r6}
src DCD 1, 2, 3, 4, 5
dst DCD 0, 0, 0, 0, 0
	END