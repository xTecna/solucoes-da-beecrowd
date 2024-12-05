# 2879 - Desvendando Monty Hall

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2879)

## Solução

Como o jogador sempre escolhe a porta $1$ primeiro e depois sempre troca para outra, isso significa que, no final das contas, ele nunca fica com a porta $1$. Com isso, se o prêmio estiver na porta $1$, o jogador sempre perde. Se o prêmio estiver na porta $2$ ou $3$, o apresentador vai escolher a que tem um bode para mostrar para o jogador e logo o jogador sempre vai escolher a porta certa (já que neste caso, por definição, o prêmio não está na porta $1$). Ou seja, precisamos contar o número de casos onde o prêmio não está na porta $1$.