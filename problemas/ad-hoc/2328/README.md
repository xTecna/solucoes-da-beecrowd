# 2328 - Chocolate

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2328)

## Solução

Se há apenas uma divisão em $I$ pedaços, então a quantidade de pedaços a serem armazenados é $I - 1$, pois Juliana corta a barra em $I$ pedaços e tira uma para usar ali na hora.

Se há mais de uma divisão, ou seja, há $N$ divisões com tamanhos $I_{1}, I_{2}, \ldots, I_{N}$, então Juliana primeiro divide em $I_{1}$ pedaços e armazena $I_{1} - 1$, depois divide o pedaço que ela pegou em mais $I_{2}$ pedaços e armazena $I_{2} - 1$, e assim por diante... Seguindo isso, na última divisão por $I_{N}$ pedaços, ela finalmente armazena $I_{N} - 1$ e fica com o último pedaço para usar. Com isso, a quantidade de pedaços a ser armazenado é

$$
\begin{split}
resposta = & (I_{1} - 1) + (I_{2} - 1) + \cdots + (I_{N} - 1) \\
resposta = & I_{1} + I_{2} + \cdots + I_{N} - N
\end{split}
$$

Ou seja, a quantidade de pedaços a ser armazenado é a soma de todos os pedaços menos a quantidade de divisões feitas.