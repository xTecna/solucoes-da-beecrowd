# 2058 - Triângulos e Polígonos Regulares

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2058)

## Solução

Sim, é só fazer $N - 2$ mesmo.

### Por que é só $N - 2$?

Vou fazer aqui uma prova por indução. Vamos primeiro provar que para $N = 3$ a resposta é $1$ e depois provar que se dá para fazer um polígono de $k$ lados com $k - 2$ triângulos, então dá para fazer um polígono de $k + 1$ lados com $k - 1$ triângulos.

#### Caso base: $N = 3$

Um único triângulo com lados iguais é o suficiente para conseguirmos fazer um polígono regular de $3$ lados.

#### Indução: se para $N = k$, a resposta é $k - 2$, então para $N = k + 1$, a resposta é $k - 1$

Se conseguimos fazer um polígono de $k$ lados com $k - 2$ triângulos, o processo de adicionar mais um triângulo deve cobrir um dos lados já existentes do polígono, mas adicionar mais dois lados. Fazendo os devidos ajustes de dimensão, então conseguimos ver que com a adição de mais um triângulo, conseguimos mais um lado, como queríamos demonstrar.