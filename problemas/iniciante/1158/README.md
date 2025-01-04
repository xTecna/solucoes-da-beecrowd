# 1158 - Soma de Ímpares Consecutivos III

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1158)

## Solução

A ideia é tratar esse problema como uma [soma de uma progressão aritmética](../../../base-teorica/matematica/progressoes/README.md#soma-dos-termos-de-a1-até-an-de-uma-progressão-aritmética) com $a_{0} = N + (1 - (N \mod 2))$, $r = 2$ dos próximos $X$ elementos da sequência.

> $N$ pode ser um número negativo, portanto é sempre uma boa tirar o resto da divisão do valor absoluto, pois o resto da divisão de números negativos pode retornar resultados inconsistentes.