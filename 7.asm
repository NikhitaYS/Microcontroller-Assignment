	AREA Demo, CODE, READONLY   
ENTRY                      
    LDR R0, =0x10           
    MSR CPSR_c, R0         
    MRS R1, CPSR             
    MOV R2, R1                
HERE B HERE
    END