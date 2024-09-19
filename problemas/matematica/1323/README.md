# 1323 - Feynman

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1323)

## Solução

Perceba que o resultado para cada quadrado $N \times N$ é a soma de todos os quadrados entre $1$ e $N$, ou seja, $F(2) = 1^{2} + 2^{2} = 1 + 4 = 5$ e $F(8) = 1^{2} + 2^{2} + 3^{2} + 4^{2} + 5^{2} + 6^{2} + 7^{2} + 8^{2} = 1 + 4 + 9 + 16 + 25 + 36 + 49 + 64 = 204$. Em outras palavras, podemos usar a recorrência $F(N) = F(N - 1) + N^{2}$ com caso base $F(1) = 1$. Use [memorização](../../../base-teorica/paradigmas/memorizacao/README.md) para guardar os resultados de cada soma para não precisar calcular novamente.