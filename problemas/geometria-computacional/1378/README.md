# 1378 - Triângulos Isósceles

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1378)

## Solução

Um triângulo isósceles é um triângulo que tem dois lados iguais, como explicado no enunciado. Com base nisso, se a partir de um ponto no conjunto de pontos encontrarmos dois outros pontos cujas distâncias a esse ponto de referência seja a mesma, isso quer dizer que encontramos um triângulo isósceles.

Com isso, podemos pensar no seguinte algoritmo de complexidade $O(n^{2})$ para resolver o problema:

1. Para cada ponto $p_{i}$, onde $0 < i < n$:
    1. Obter as distâncias de $p_{i}$ até $p_{j}$, onde $0 < j < n$.
    2. Contar a quantidade de vezes que cada distância ocorreu. Para todas as distâncias que apareceram mais de uma vez, isso significa que podemos criar triângulos isósceles a partir desses múltiplos pontos.
        * Por exemplo, se tem dois pontos diferentes $p_{j}$ e $p_{k}$ que têm a mesma distância em relação a $p_{i}$, então podemos formar um triângulo isósceles com esses três pontos.
        * Agora, se tem três pontos diferentes $p_{j}$, $p_{k}$ e $p_{m}$ que têm a mesma distância em relação a $p_{i}$, então podemos formar não apenas dois triângulos isóscesles, mas na verdade podemos criar três triângulos: $(p_{i}, p_{j}, p_{k})$, $(p_{i}, p_{j}, p_{m})$ e $(p_{i}, p_{k}, p_{m})$.
        * Portanto, para $n$ pontos diferentes com a mesma distância, podemos criar $C_{2}^{n} = \frac{n(n - 1)}{2}$ triângulos isósceles diferentes, basicamente enumerando os diversos pares de retas iguais que podemos usar para montar um triângulo.

Para garantir que o algoritmo permaneça com complexidade $O(n^{2})$, é necessário que a verificação de distâncias iguais seja feita em tempo constante, o que pode ser feito com o auxílio de um mapa/dicionário. No código, eu uso números inteiros (evito fazer a raiz quadrada da distância entre os pontos) para evitar erros de precisão, mas acredito que com números de ponto flutuante daria certo do mesmo jeito.