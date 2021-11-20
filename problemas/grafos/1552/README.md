# 1552 - Resgate em Queda Livre

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1552)

## Solução

Para conseguirmos o menor comprimento de teia possível para unir todas as pessoas que estão caindo, podemos imaginar primeiramente que todas as pessoas formam um grafo completo onde cada ligação entre uma pessoa i e j indica a distância cartesiana entre essas duas pessoas. É possível formar esse grafo em O(n²) porque temos no máximo 500 pessoas envolvidas.

Com isso, tudo o que precisamos agora é montar a [árvore geradora de custo mínimo](../base-teorica/grafos-1/arvore-geradora-de-custo-minimo.md), a fim de descobrirmos qual a menor quantidade de teia que o Homem-Aranha precisa para ligar todas as pessoas.

### Kruskal

Em breve...

### Prim

Em breve...