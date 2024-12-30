# 2232 - Triângulo de Pascal

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2232)

## Solução

A soma das linhas do triângulo de Pascal formam uma [progressão geométrica](../../../base-teorica/matematica/progressoes/README.md#progressão-geométrica) com $a_{1} = 1$ e $q = 2$. Se formos aplicar a fórmula de soma dos termos, temos

$$
\begin{split}
S = & \frac{1 (1 - 2^{n})}{1 - 2} \\
& \frac{1 - 2^{n}}{-1} \\
& 2^{n} - 1
\end{split}
$$

Abaixo mostrarei uma forma muito rápida de calcular este valor usando o operador shift (`<<`), que desloca para a esquerda a representação binária de um número uma quantidade arbitrária de vezes a fim de multiplicar um número por 2 repetidas vezes.

> Em JavaScript, a abordagem com o operador shift deu overflow.