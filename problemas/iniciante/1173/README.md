# 1173 - Preenchimento de Vetor I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1173)

## Solução

Não é necessário guardar o vetor, já que cada elemento só depende do elemento anterior (é o elemento anterior vezes dois).

Em algumas das linguagens, eu apresento um operador diferenciado chamado de `shift` e representado por `<<` ou `>>`. O que esse operador faz é empurrar todos os bits que representam o número pra esquerda ou pra direita, dependendo da direção das setas (`<<` ou `>>`) pelo número de vezes indicado à direita do operador (nesse caso, empurrar uma vez só pra esquerda). Com isso, empurrando todos os bits do número pra esquerda, o que estamos fazendo na prática é multiplicar o número por $2$. Então, na prática, empurrar os bits pra esquerda `x` vezes é uma forma incrivelmente eficiente de multiplicar um número por `2^x`.

Em outras linguagens, uso `* 2` normalmente.