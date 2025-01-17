# 2417 - Campeonato

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2417)

## Solução

Para calcular a classificação de um time $T$, onde $T$ pode ser tanto $C$ quanto $F$, fazemos $3T_{v} + T_{e}$. Se este valor for o mesmo para ambos os times, então precisamos desempatar pelo saldo de gols.

Uma outra alternativa é, sabendo que os valores não ultrapassam $1000$, colocar a classificação em um nível tão elevado que não dá para o saldo de gols interferir e, com isso, economizar a comparação de desempate. Por exemplo, se calcularmos como pontuação total para o time $T$ algo como $10000(3T_{v} + T_{e}) + T_{s}$, então separamos o único número em dois trechos:

* O trecho mais à esquerda representando a classificação.
* Ao multiplicar esse número por $10000$, o que efetivamente acontece é que você está deslocando a classificação para a esquerda por $4$ espaços, que é espaço suficiente para representar o saldo de gols em sua integridade.

Note que essa tática não funciona para todos os tipos de problema, já que esse deslocamento pode ser tão grande que ultrapassa o limite de um inteiro, mas pode ser uma tática interessante para diminuir a quantidade de código.