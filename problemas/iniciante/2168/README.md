# 2168 - Crepúsculo em Portland

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2168)

## Solução

Repare que apesar do primeiro valor ser $N$, o que vem depois é uma matriz $N + 1 \times N + 1$. A partir daí, vemos que para uma determinada esquina em $(x, y)$ ser segura, é necessário que tenham duas ou mais câmeras entre as posições $(x, y)$, $(x + 1, y)$, $(x, y + 1)$ e $(x + 1, y + 1)$.

Abaixo eu sobrepus uma das entradas com uma das saídas para que você possa ver melhor qual quadrado influencia cada esquina.

|   |       |   |       |   |
|---|-------|---|-------|---|
| 1 |       | 0 |       | 0 |
|   | **S** |   | **U** |   |
| 1 |       | 1 |       | 0 |
|   | **S** |   | **S** |   |
| 0 |       | 0 |       | 1 |