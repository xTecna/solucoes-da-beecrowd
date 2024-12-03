# 2740 - Liga

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2740)

## Solução

Para este problema, precisamos de duas tabelas:
* Uma para pegar os três primeiros lugares, e fazer o pódio.
* Uma para pegar os dois últimos lugares na zona de rebaixamento.

Dá pra fazer ambos com um `limit` depois de ordenar, lembrando de ordenar duas vezes pra zona de rebaixamento (uma vez antes e outra depois do `limit`).