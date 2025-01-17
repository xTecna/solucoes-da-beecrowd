# 2591 - HameKameKa

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2591)

## Solução

Aqui nós precisamos saber o comprimento dos dois segmentos de `a` diferentes na _string_, o que pode ser feito tanto com expressões regulares (também conhecido como _regex_) quanto varrendo a string com um _for_ guardando os tamanhos de cada segmento.

Com isso, dado que os tamanhos dos dois segmentos sejam $x$ e $y$, então o tamanho do segmento de `a`s na resposta precisa ser igual a $xy$. Vide problema [2926 - Então é Natal!](../../ad-hoc/2926/README.md) para entender como imprimir a _string_ de resposta.