# 2994 - Quanto Ganha um Médico?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2994)

## Solução

Dá para fazer um `join` triplo com as três tabelas envolvidas, o que facilita o cálculo envolvendo os turnos, já que cada atendimento estará rotulado corretamente com a quantidade de horas e turnos. Com uma linha com cada médico e salário para cada atendimento, no final basta agregar por `sum`.