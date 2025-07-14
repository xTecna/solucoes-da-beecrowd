# 1875 - Tribol

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1875)

## Solução

É mais fácil pensar nesse problema como as regras do jogo serem representadas em uma tabela onde as linhas correspondem a quem faz o gol e as colunas a quem toma o gol para definir quantos pontos cada equipe vai ganhar. Com isso, a tabela poderia ser esquematizada assim:

|   | R | G | B |
| - | - | - | - |
| R | 0 | 2 | 1 |
| G | 1 | 0 | 2 |
| B | 2 | 1 | 0 |
(as diagonais estão aí só de enfeite, já que não dá pra tomar gol de si mesmo)

Dependendo da linguagem que você for resolver o problema, você pode tanto usar um dicionário para armazenar essa tabela ou codificar as letras em índices e representar essa tabela como uma matriz.