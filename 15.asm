		AREA BinarySearch, CODE, READONLY
ENTRY

        LDR  R0,=SortedArray
		LDR  R1,=ArraySize
		LDR  R1,[R1]
		LDR  R2,=SearchKey
		
        MOV  R3, #0             
        SUB  R4, R1, #1        

BinarySearchLoop
        CMP  R3, R4             
        BGT  NotFound

        ADD  R5, R3, R4         
        ASR  R5, R5, #1

        LDR  R6, [R0, R5, LSL #2]
		CMP  R6, R2             
        BEQ  Found              
        BLT  AdjustLow
		BGT  AdjustHigh
		
AdjustLow
		ADD  R3, R5, #1      
        B BinarySearchLoop
		
AdjustHigh
		SUB  R4, R5, #1         
        B BinarySearchLoop

Found
        MOV  R7, R5  
		B End

NotFound
		MOV  R7, R5  
End
		AREA Data, DATA, READWRITE
SortedArray  DCD 10, 20, 30, 40, 50, 60, 70 
ArraySize    DCD 7                         
SearchKey    DCD 40                         
        END