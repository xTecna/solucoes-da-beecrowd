# 3046 - Dominó

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3046)

## Solução

O enunciado mesmo já disponibiliza a fórmula a ser usada: $\frac{(N + 1)(N + 2)}{2}$.

### Por que a fórmula funciona?

Vejamos que para cada número entre $0$ e $N$, podemos combiná-lo com todos os números menores ou iguais a ele. Ou seja, para $0$ temos uma peça só, para $1$ temos duas ($0$ e $1$), para $2$ temos três ($0$, $1$ e $2$) e assim por diante. Note que isso forma uma progressão aritmética com primeiro termo igual a $1$, razão igual a $1$ e queremos saber a soma dos primeiros $N + 1$ termos (o zero conta!). De acordo com a fórmula de [soma de progressão aritmética](../../../base-teorica/matematica/progressoes/README.md#soma-dos-termos-de--até--de-uma-progressão-aritmética), aplicando os valores $a_{1} = 1$, $a_{n} = N + 1$ e $n = N + 1$, temos

$$
\frac{n(a_{1} + a_{n})}{2} \\
\frac{(N + 1)(1 + N + 1)}{2} \\
\frac{(N + 1)(N + 2)}{2}
$$