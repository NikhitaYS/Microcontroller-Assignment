	AREA pgrm, CODE, READONLY  
START
    MOV R0, #0xF3   
    MOV R1, #0    
count_bits  
    AND R2, R0, #1   
    CMP R2, #1        
    BEQ increment    
    B shift_right      
increment  
    ADD R1, R1, #1   
shift_right  
    MOV R0, R0, LSR #1 
    CMP R0, #0       
    BNE count_bits     
here B here           
    END