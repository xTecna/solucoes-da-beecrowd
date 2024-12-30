# 2839 - As Meias de Rangel

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2839)

## Solução

Esse problema está mal escrito, acho que o _problemsetter_ quis dizer qual o número mínimo de meias que **garantem** que Rangel vai encontrar duas meias de cores iguais (já que o número mínimo de meias pra conseguir duas da mesma cor pode muito bem ser dois, já conseguir um par de meias nas primeiras duas retiradas). Acredito que um jeito mais fácil de escrever esse problema seria perguntar qual o número **máximo** de meias que Rangel precisa tirar para conseguir duas meias da mesma cor já que tirando esse número máximo seria garantido que ele teria tirado, pelo menos, um par correspondente.

Com isso, pelo princípio da casa dos pombos, como existem $N$ diferentes pares, Rangel pode dar azar e pegar $N$ meias diferentes em $N$ retiradas, mas com $N + 1$ retiradas seria impossível não ter pelo menos um par, já que só há $N$ pares no total.