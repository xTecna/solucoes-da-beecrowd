# 3048 - Sequência Secreta

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3048)

## Solução

A sequência não precisa ser de número seguidos, você tem a opção de pular alguns números. Com isso, a ideia é começar sempre incluindo o primeiro número a essa subsequência e então ir acrescentando mais um à resposta toda vez que encontrar um número diferente, guardando em uma variável o último número visto para comparar com o próximo da subsequência máxima.

Essa técnica funciona e sempre vai gerar a maior subsequência possível. Para provar isso, vamos considerar o caso em que o primeiro número não faz parte da maior subsequência. Nesse caso, nós temos duas situações diferentes, sem perda de generalidade:

* O primeiro número é $1$ e a maior subsequência que não inclui esse número também começa em $1$.
    * Nesse caso, então como, por definição, essa é a maior subsequência, então não há um número $2$ entre o primeiro número e o primeiro número da maior subsequência. Logo, tanto faz se você tivesse escolhido o da maior subsequência ou o primeiro, os dois resultam na maior subsequência possível.
* O primeiro número é $2$ e a maior subsequência que não inclui esse número começa com $1$.
    * Esse caso na verdade é impossível porque se a maior subsequência não inclui esse número e começa com $1$, então você poderia facilmente adicionar o primeiro número e criar uma sequência maior ainda. Logo, você deveria incluir o primeiro número na maior subsequência.