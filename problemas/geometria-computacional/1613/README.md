# 1613 - Goemon em Apuros

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1613)

## Solução

Para ver se cada posição é segura, a única coisa que precisamos é traçar uma reta entre o ponto de luz e Goemon, ver o valor dessa reta quando $x = 0$ (ou seja, quando ela alcança o eixo $Y$, que é o muro) e ver se esse ponto está em uma parede ou não.

Como são muitas paredes e muitas posições possíveis para Goemon, não podemos nos dar ao luxo de verificar parede a parede. Uma alternativa então é ordenar as paredes e a partir daí fazer uma pesquisa binária para ver se o ponto está entre os limites das paredes ou não.

> No código precisei colocar uma precisão com um certo valor de $\epsilon$ para os limites das paredes, já que só ver se é menor ou igual não funciona.