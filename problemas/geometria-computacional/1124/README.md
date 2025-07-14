# 1124 - Elevador

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1124)

## Solução

Uma forma de ajustar os dois círculos dentro do retângulo é colocá-los cada um em um canto extremo da caixa. Dessa forma, podemos imaginar um dos círculos ocupando o lado inferior esquerdo e o outro ocupando o lado superior direito, por exemplo, como na figura abaixo:

[!Uma esquematização de um círculo de raio R1 no canto inferior esquerdo e outro círculo de raio R2 no canto superior direito de um retângulo de tamanho L x C. Uma linha tracejada indica a distância entre os centros dos círculos.](../../../assets/1124.png)

Pela linha tracejada, podemos determinar uma característica para que os círculos consigam se encaixar dentro do retângulo: a menor distância possível para que esses círculos não se sobreponham (no máximo se tangenciam, isso é, encostem em só um ponto) é $R_{1} + R_{2}$ (sem nenhum tracejado no meio, só os raios).

Com isso, temos três condições para que ambos os círculos caibam no retângulo:
1. $2 R_{1} < L$ e $2 R_{1} < C$, ou seja, o círculo de raio $R_{1}$ tem que caber no retângulo.
2. $2 R_{2} < L$ e $2 R_{2} < C$, mesma condição acima, mas equivalente para o círculo de raio $R_{2}$.
3. Considerando os centros dos círculos como pontos no espaço cartesiano, podemos imaginar dois pontos $(R_{1}, R_{1})$ e $(L - R_{2}, C - R_{2})$ e com isso temos a condição $dist((R_{1}, R_{1}), (L - R_{2}, C - R_{2})) \geq R_{1} + R_{2}$.