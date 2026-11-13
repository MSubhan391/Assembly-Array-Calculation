.MODEL SMALL
.STACK 100H

.DATA
    ARRAY DW 8, 16, 24, 32
    ;declaration
.CODE
MAIN PROC 
    ;Initializes data segment
    MOV AX, @data
    MOV DS, AX
    ; AX is accumulator register and data address
    ; MOV DS means the value of AX is moved to DS
    MOV AX, ARRAY[2] 
    ; Load second element (16)
    
