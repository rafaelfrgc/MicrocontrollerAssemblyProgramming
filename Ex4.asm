org 00h                             ;seta origem                                                                                       
JMP main                            ;pula para o inicio do programa
org 33h                             ;troca origem

main:
    CLR A                           ;limpa o acumulador                                                                             
    MOV R0, #1                      ;move o valor 1 para o registrador R0 de forma imediata                                         
bloco1:
    JZ bloco2                       ;se o acumulador for zero, pula para bloco2                                                     
    JNZ bloco3                      ;se o acumulador for diferente de zero, pula para bloco3                                        
    NOP                             ;consome 1 ciclo de clock
bloco2:
    MOV A, R0                       ;move o valor do registrador R0 para o acumulador                                               
    JMP bloco1                      ;pula para bloco1
bloco3:
     DJNZ R0, bloco3                ;decrementa o valor do registrador R0 e pula para bloco3 se o valor for diferente de zero
     JMP main                       ;pula para o inicio do programa                                                                 
end