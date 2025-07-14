# 1039 - Flores de Fogo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1039)

## Solução

O círculo da flor deve estar todo dentro do círculo do caçador. Para isso acontecer, é necessário que a soma da distância entre os dois centros com o raio da flor seja menor que o raio do caçador. A imagem abaixo esquematiza porque esse é o caso:

![Esquematização de um caso onde o círculo da flor está dentro do círculo do caçador: a distância mais o raio da flor é menor do que o raio do caçador](../../../assets/1039.png)

Logo, temos que, para que o círculo da flor esteja dentro do círculo do caçador (que na fórmula botamos $_{homem}$ porque não dá pra escrever cedilha),

$$\begin{split}
dist(C_{flor}, C_{homem}) + R_{flor} & \leq R_{homem} \\
dist(C_{flor}, C_{homem}) & \leq R_{homem} - R_{flor}
\end{split}$$

precisa ser verdade, sendo que $dist((x_{1}, y_{1}), (x_{2}, y_{2})) = \sqrt{(x_{1} - x_{2})^{2} + (y_{1} - y_{2})^{2}}$.

É perfeitamente possível resolver esse problema apenas com valores inteiros se fizemos $dist((x_{1}, y_{1}), (x_{2}, y_{2})) = (x_{1} - x_{2})^{2} + (y_{1} - y_{2})^{2}$ e compararmos com $(R_{homem} - R_{flor})^{2}$, já que os valores envolvidos são todos pequenos o suficiente para caberem em inteiros. Fazendo dessa forma, nós não arriscamos acabar perdendo precisão para as operações de ponto flutuante e podemos garantir o resultado correto do começo ao final do algoritmo. De qualquer forma, para esse problema específico, isso não é tão importante, então tanto faz a representação numérica.