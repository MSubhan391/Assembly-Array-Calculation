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
    
    MOV BX, 4
    MUL BX
    ; Multiply by 4 using MUL
    
    MOV BX, 8
    DIV BX
    ; Divide result by 8 using DIV

    MOV ARRAY[2], AX
    ; Store quotient back into second element

    MOV AH, 4CH  ; Instructions used to terminate 
    INT 21H  ; Calls DOC to execute the program

MAIN ENDP
END MAIN


