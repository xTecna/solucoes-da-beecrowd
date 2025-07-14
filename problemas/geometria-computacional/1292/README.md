# 1292 - Problema com um Pentágono

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1292)

## Solução

A figura abaixo esquematiza um triângulo que tem dois dos lados como as variáveis que estamos interessados no problema e como obter dois ângulos de interesse dentro desse triângulo, esquematizados pelas cores azul e laranja:

![A mesma figura do enunciado, mas com destaque para um triângulo cujos dois dos lados são o lado do pentágono e o lado do quadrado, que é o que desejamos calcular. Para isso, calculamos os ângulos internos do triângulo, a fim de usarmos a lei dos senos para descobrir o lado do quadrado.](../../../assets/1292.png)

Uma vez com os ângulos, agora podemos usar a lei dos senos para descobrir o lado $L$ do quadrado, fazendo

$$
\begin{split}
\frac{L}{\sin{108}} = & \frac{F}{\sin{63}} \\
L = & \frac{F \sin{108}}{\sin{63}}
\end{split}
$$

Como as funções trigonométricas fornecidas pelas linguagens de programação lidam em sua grande maioria com ângulos em radianos, é necessário dividir esses ângulos por $180$ para podermos convertê-los apropriadamente.