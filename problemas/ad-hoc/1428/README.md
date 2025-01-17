# 1428 - Procurando Nessy

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1428)

## Solução

Note que há duas regras:

1. Um sonar ocupa uma área de $9 \times 9$, tendo um alcance de $3$ posições da grade horizontalmente e $3$ verticalmente.
2. O monstro não ocupa nenhuma posição nos cantos do lago.

Pela regra 2, o monstro então a área de busca se reduz a uma região de $n - 2 \times m - 2$ (removendo ambos os cantos do lago). Considerando apenas a dimensão vertical, por exemplo, então temos um sonar com alcance $3$ posições que precisa preencher uma área de $n - 2$ posições. Para isso, precisamos de $\lceil \frac{n - 2}{3} \rceil$ sonares para preencher toda a área, já que o importante é preencher todas as posições com pelo menos um sonar enxergando aquela posição (perceba que se usássemos piso, poderíamos correr o risco de ter posições desamparadas caso $n - 2$ não seja divisível por $3$). Pela mesma lógica, também precisamos de $\lceil \frac{m - 2}{3} \rceil$ sonares para cobrir a região horizontalmente, então precisamos de $\lceil \frac{n - 2}{3} \rceil \lceil \frac{m - 2}{3} \rceil$ sonares para preencher toda a região de tamanho $n - 2 \times m - 2$.