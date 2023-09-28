# Resolução - Rafael Freitas Garcia N°USP 11222374

## Exercício 1

a) O tempo total gasto em cada instrução está no arquivo do codigo "Ex1.asm", e o tempo total gasto no programa foi de 23us, descontando o tempo de execução do loop após a primeira iteração, que foi de 2us.

b) Como cada ciclo de máquina dura 1us, o tempo total gasto no programa foi de 23 ciclos de máquina.

c) Quando a instrução: MOV A, P1 é executada, há a leitura o estado dos pinos na porta P1 (que são pré-definidos em 1 no MCS-51) e o armazenamento desse valor no acumulador A, que 
duz em hexadecimal para FF.

d) Move-se o para o acumulador o valor do endereço apontado por R1, no caso, 51h.

e) O DPTR (Data Pointer) no microcontrolador 8051 é um registrador especial de 16 bits que é usado principalmente para armazenar um endereço de memória de 16 bits durante operações de acesso à memória. É possível mover um valor de 4 dígitos para o DPTR porque ele é um registrador de 16 bits, o que significa que pode armazenar valores de até 4 dígitos em hexadecimal (ou seja, valores de 0 a FFFFH). O DPTR é dividido em dois registradores de 8 bits: DPH (Data Pointer High) e DPL (Data Pointer Low). Quando você move um valor para o DPTR, os dois dígitos mais significativos do valor são armazenados no DPH e os dois dígitos menos significativos são armazenados no DPL.

## Exercício 2

O bit menos significativo do Program Status Word (PSW) no microcontrolador 8051 é o bit de paridade (PSW.0). O bit de paridade indica o número de 1’s presentes no registrador do acumulador. Ele é definido como 1 se o registrador do acumulador tiver um número ímpar de uns, caso contrário, é redefinido para 01.

Quando você move o valor 4 (em binário: 0100) para o ACC, há um número ímpar de uns (1), então o bit de paridade é definido como 11. Quando você move o valor 3 (em binário: 0011) para o ACC, há um número par de uns (2), então o bit de paridade é redefinido para 0.

## Exercício 3

Resposta comentada e código contidos no arquivo "Ex3.asm"

## Exercício 4

Resposta comentada e código contidos no arquivo "Ex4.asm"
