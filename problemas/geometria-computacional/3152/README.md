# 3152 - Samuel, O Cafeicultor

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3152)

## Solução

Para calcular a área de um polígono a partir de seus pontos você precisa primeiramente que os pontos desse polígono sejam representados ou em ordem horária ou em ordem anti-horária. No caso desse problema, os pontos já estão dados em ordem horária, então tudo bem. Dados então um polígono $P$ caracterizado por $n$ pontos $P = {p_{1}, p_{2}, \ldots, p_{n}}$ na ordem correta, temos que sua área pode ser calculada como a determinante da matriz

$$
A = \frac{1}{2}
\begin{vmatrix}
    p_{1}.x & p_{1}.y \\
    p_{2}.x & p_{2}.y \\
    \cdots & \cdots \\
    p_{n}.x & p_{n}.y
\end{vmatrix}
= \frac{1}{2} ((p_{1}.x \times p_{2}.y + p_{2}.x \times p_{3}.y + \cdots + p_{n}.x \times p_{1}.y) - (p_{1}.y \times p_{2}.x + p_{2}.y \times p_{3}.x + \cdots + p_{n}.y \times p_{1}.x))
$$

Então no nosso código precisamos ler todos os pontos e fazer essa conta, lembrando que o último ponto precisa ser processado com o primeiro, o que pode ser feito ou adicionando o primeiro elemento na última posição ou fazendo o _loop_ ir até $N$, mas avançar com $(i + 1) \mod N$ em vez de apenas $i + 1$.