# 2235 - Andando no Tempo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2235)

## Solução

Podemos fazer no mínimo uma viagem e no máximo três, então vamos considerar cada número de viagens para decidir como é possível voltar no presente com cada um.

* Com uma viagem apenas é impossível voltar ao presente, já que não tem como termos viagem de $0$ anos.
* Com duas viagens, é possível voltar ao presente se ambas tiverem o mesmo número de anos.
* Com três viagens, é possível voltar ao presente se o tempo de uma das viagens for igual à soma do tempo das duas outras viagens.