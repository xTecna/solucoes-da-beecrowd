# 1630 - Estacas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1630)

## Solução

Podemos reduzir esse problema a descobrir qual a maior distância entre estacas $D$ que podemos colocar que respeita tanto a dimensão $X$ quanto a dimensão $Y$. Ao descobrirmos essa distância, então podemos fazer $2 \cdot (\frac{X}{D} + \frac{Y}{D})$ para obter o resultado final, onde $\frac{X}{D}$ é o número de estacas necessário pra preencher a dimensão $X$ e $\frac{Y}{D}$ é o número de estacas necessário pra preencher a dimensão $Y$.

Essa maior distância $D$ pode ser então calculada como $D = MDC(X, Y)$ pois, por definição, esse é o maior valor ao qual podemos dividir tanto $X$ quanto $Y$ em pedaços de tamanhos iguais. Veja a página [MDC](../../../base-teorica/matematica/gcd/README.md) para entender como funciona o algoritmo para calcular o máximo divisor comum entre dois números.