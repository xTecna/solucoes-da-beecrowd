# 1464 - Camadas de Cebola

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1464)

## Solução

Esse problema é uma aplicação do [algoritmo de envoltória convexa](../../../base-teorica/geometria-computacional/envoltoria-convexa/README.md), com a seguinte esquematização

1. Tentar fazer um envoltória convexa com os pontos providenciados.
2. Se for possível fazer uma envoltória, tirar todos os pontos da envoltória da lista de pontos total e contar uma camada da cebola.
3. Se não for possível, terminar o algoritmo e retornar a quantidade de camadas de cebola obtidas.