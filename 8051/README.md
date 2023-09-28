# Resolução - Rafael Freitas Garcia N°USP 11222374

## Exercício 1

### Código:

org 0000h ;seta a origem

main:
	MOV ACC, #0Ah 			;move imediato para o acumulador 												- 2 us
	MOV ACC, #00h 			;move imediato para o acumulador 												- 2 us
	MOV R0, #10h  			;move imediato para o registrador R0 no banco 0 								- 1 us
	MOV B, #0Fh   			;move imediato para o registrador B no banco 0 									- 2 us
	MOV 50h, P1   			;move diretamente para o endereço 50h o valor de P1 							- 2 us
	MOV PSW, #00001000b 	;Seleciona banco 1 																- 2 us
	MOV R0, 50h 			;move diretamente para o registrador R0 no banco 1 o valor do endereço 50h 		- 2 us
	MOV 51h, R0 			;move diretamente para o endereço 51h o valor de R0 no banco 1 					- 2 us
	MOV R1, #51h 			;move imediato para o registrador R1 no banco 1 								- 1 us
	MOV ACC, @R1 			;move indiretamente para o acumulador o valor do endereço apontado por R1 		- 2 us
	MOV DPTR, #9A5Bh		;move imediato para o registrador DPTR o valor 9A5Bh 							- 2 us
	NOP 					;atrasa 1us ao realizar a operação NOP 											- 1 us
	JMP $					;loop infinito pois pula para a posição atual  									- 2 us
end 

a) O tempo total gasto em cada instrução está no arquivo do codigo "Ex1.asm", e o tempo total gasto no programa foi de 23us, descontando o tempo de execução do loop após a primeira iteração, que foi de 2us.

b) Como cada ciclo de máquina dura 1us, o tempo total gasto no programa foi de 23 ciclos de máquina.

c) Quando a instrução: MOV A, P1 é executada, há a leitura o estado dos pinos na porta P1 (que são pré-definidos em 1 no MCS-51) e o armazenamento desse valor no acumulador A, que 
duz em hexadecimal para FF.

d) Move-se o para o acumulador o valor do endereço apontado por R1, no caso, 51h.

e) O DPTR (Data Pointer) no microcontrolador 8051 é um registrador especial de 16 bits que é usado principalmente para armazenar um endereço de memória de 16 bits durante operações de acesso à memória. É possível mover um valor de 4 dígitos para o DPTR porque ele é um registrador de 16 bits, o que significa que pode armazenar valores de até 4 dígitos em hexadecimal (ou seja, valores de 0 a FFFFH). O DPTR é dividido em dois registradores de 8 bits: DPH (Data Pointer High) e DPL (Data Pointer Low). Quando você move um valor para o DPTR, os dois dígitos mais significativos do valor são armazenados no DPH e os dois dígitos menos significativos são armazenados no DPL.

## Exercício 2

### Código

org 00h 			;seta o endereço de inicio do programa

main:
	MOV ACC, #2 	;move de forma imediata o valor 2 no acumulador  (ACC)				-2 us
	MOV B, #3 		;move de forma imediata o valor 3 no registrador B 					-2 us
	MOV 50h, #7 	;move de forma imediata o valor 7 no endereço 50h 					-2 us
	ADD A, 50h 		;soma o valor do acumulador com o valor do endereço 50h 			-1 us
	SUBB A, #3 		;subtrai o valor do acumulador com o valor 3 						-1 us
	INC B 			;incrementa o valor do registrador B 								-1 us
	SUBB A, B 		;subtrai o valor do acumulador com o valor do registrador B 		-1 us
	MUL AB 			;multiplica o valor do acumulador com o valor do registrador B 		-4 us
	INC B 			;incrementa o valor do registrador B 								-1 us
	INC B 			;incrementa o valor do registrador B 								-1 us
	DIV AB 			;divide o valor do acumulador com o valor do registrador B 			-4 us
	MOV 51h, A 		;move o valor do acumulador para o endereço 51h 					-1 us
	MOV 52h, B 		;move o valor do registrador B para o endereço 52h 					-2 us
	JMP main 		;retorna para o inicio do programa 									-2 us
end 

O bit menos significativo do Program Status Word (PSW) no microcontrolador 8051 é o bit de paridade (PSW.0). O bit de paridade indica o número de 1’s presentes no registrador do acumulador. Ele é definido como 1 se o registrador do acumulador tiver um número ímpar de uns, caso contrário, é redefinido para 01.

Quando você move o valor 4 (em binário: 0100) para o ACC, há um número ímpar de uns (1), então o bit de paridade é definido como 11. Quando você move o valor 3 (em binário: 0011) para o ACC, há um número par de uns (2), então o bit de paridade é redefinido para 0.

## Exercício 3
### Código

org 00h

main:
	MOV ACC, #01001001b 		;move de forma imediata o valor 1001001b para o acumulador
	MOV B, #10010101b 			;move de forma imediata o valor 10010101b para o registrador B
	ANL A, B 					;faz a operação AND entre o acumulador e o registrador B
	RR A 						;rotaciona 1bit a direita
	RR A  						;rotaciona 1bit a direita
	CPL A 						;complemento de A
	RL A 						;rotaciona 1bit a esquerda
	RL A 						;rotaciona 1bit a esquerda
	ORL A, B 					;faz a operação OR entre o acumulador e o registrador B
	XRL A, B 					;faz a operação XOR entre o acumulador e o registrador B
	SWAP A 						;troca os nibbles (nibbles são os 4 bits mais significativos e os 4 bits menos significativos)
	JMP main 					;faz um salto incondicional para o endereço main
end

## Exercício 4

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
