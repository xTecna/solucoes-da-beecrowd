# 1379 - Problema com Mediana e Média

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1379)

## Solução

Temos dois valores $A$ e $B$, onde $A < B$, e queremos descobrir qual o menor valor de $C$ possível que podemos usar para garantir que tanto a média quanto a mediana dos três valores resultem no mesmo valor.

Como estamos interessados no menor valor de $C$ possível e considerando que queremos que a média e a mediana sejam o mesmo valor, então devemos considerar que a mediana será $A$ e que, com isso, gostaríamos que a média também fosse $A$. Neste caso, o valor de $C$ então seria

$$
\begin{split}
\frac{A + B + C}{3} & = A \\
A + B + C & = 3A \\
C & = 2A - B
\end{split}
$$