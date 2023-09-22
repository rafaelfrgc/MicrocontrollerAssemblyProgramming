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
end 						;Fim do programa