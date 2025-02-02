# 3109 - Trocando de Mesa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3109)

## Solução

A descrição desse problema está um pouco estranha, porque ao contrário do que está escrito no enunciado, a operação $1$ na real troca as pessoas que estão nas mesas $A$ e $B$.

Isso deixa o código imensamente mais fácil, e a operação $2$ pode ser feita por simulação, já que a quantidade de mesas é pequeno o suficiente para justificar o custo: a complexidade do total de buscas necessárias é, no pior caso, $O(nm)$, onde $n$ é o número de mesas e $m$ o número de pedidos, com o máximo de $10^{3} \cdot 5 \cdot 10^{3} = 5 \cdot 10^{6}$, que é um número razoável de operações para um computador moderno.

> Em Elixir, eu precisei transformar o vetor em um dicionário para ganhar mais performance na troca e na busca dos elementos.