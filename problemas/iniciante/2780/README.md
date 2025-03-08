# 2780 - Basquete de Robôs

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2780)

## Solução

Aqui podemos usar as estruturas de `if` e `else` para decidir o quão longe o robô está do gol de acordo com sua distância $D$.

* Se $D \geq 800$, então a cesta vale $1$ ponto.
* Senão, se $D \geq 1400$, então a cesta vale $2$ pontos. Repare que como usamos senão, então para chegar aqui é necessário que $D > 800$.
* Senão, a cesta vale 3 pontos. Pelo mesmo raciocínio do item anterior, sabemos que $D > 1400$.