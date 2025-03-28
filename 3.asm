	AREA SUM_SQUARES, CODE, READONLY
START
	MOV R0, #1      
	MOV R1, #2      
	MOV R2, #3    
	MOV R3, #4     
	MOV R4, #5      
	MOV R5, #0     
	MUL R6, R0, R0  
	ADD R5, R5, R6  
	MUL R6, R1, R1
	ADD R5, R5, R6  
	MUL R6, R2, R2 
	ADD R5, R5, R6  
	MUL R6, R3, R3 
	ADD R5, R5, R6  
	MUL R6, R4, R4  
	ADD R5, R5, R6  
HERE B HERE
	END