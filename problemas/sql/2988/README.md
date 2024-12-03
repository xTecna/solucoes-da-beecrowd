# 2988 - Campeonato Cearense

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2988)

## Solução

Para esse problema, podemos gerar primeiramente uma tabela dizendo, para cada partida, qual foi o _id_ do time que ganhou e o _id_ do time que perdeu. No caso de empate, decidi colocar as duas variáveis como nulas, já que ninguém ganhou nem perdeu. Para fazer essa tabela, você precisa de um `case` e você pode usar várias condições usando vários `when` seguidos.

Após essa tabela estar pronta, você pode então usá-la para correlacionar com os times em cada partida, fazendo um `join` correlacionando com o _id_ do time 1 ou com o _id_ do time 2 e contar tudo usando o `filter`. Para a quantidade de partidas, não precisa usar o `filter`, mas para o resto dá pra filtrar se foi o time que venceu, o time que perdeu ou se os dois campos estão nulos (ou seja, empatou). E pra calcular a pontuação precisa repetir a nota.

> Único detalhe não mencionado no enunciado, mas exibido no exemplo de saída é que se dois times têm a mesma pontuação, precisa-se ordenar então em ordem alfabética do nome dos times.