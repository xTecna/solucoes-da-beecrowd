# 1585 - Fazendo Pandorgas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1585)

## Solução

A pipa é formada por dois bambus que são amarrados em formato de cruz, como diz a observação do enunciado. Com isso, para calcular a área do losango com base em suas diagonais, podemos pensar no losango como dois triângulos de mesma base, mas altura diferente. Se tivermos por exemplo dimensões de diagonais $X$ e $Y$, sem perda de generalidade, podemos considerar a base de ambos os triângulos como $X$ e as alturas dos dois triângulos $W$ e $Z$ tal que $Y = W + Z$. Com isso, a soma das áreas dos dois triângulos será

$$
\begin{split}
A & = \frac{XW}{2} + \frac{XZ}{2} \\
A & = \frac{XW + XZ}{2} \\
A & = \frac{X(W + Z)}{2} \\
A & = \frac{XY}{2}
\end{split}
$$