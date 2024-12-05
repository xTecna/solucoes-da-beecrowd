# 2786 - Piso da Escola

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2786)

## Solução

Se prestarmos atenção apenas às bordas da figura, podemos tirar as duas fórmulas que precisamos.

Dali podemos ver que há $4$ lajotas do tipo 2 na borda superior e $2$ do tipo 2 na borda esquerda em uma sala de tamanho $5 \times 3$, então o número de lajotas do tipo 2 pode ser tirado pela fórmula $2 \times ((L - 1) + (C - 1))$, para contar as quatro bordas. Simplificando, ficamos com $2 \times (L + C - 2)$.

Já para as lajotas do tipo 1, podemos ver que tem $5$ delas alinhadas na borda superior e $3$ alinhadas na borda esquerda novamento de uma sala de tamanho $5 \times 3$, mas se fizermos apenas $L \times C$, repare que fica alguns buracos faltando serem preenchidos. Esses buracos são precisamente de $(L - 1) \times (C - 1)$, então o número total de lajotas do tipo 1 é $L \times C + (L - 1) \times (C - 1)$.