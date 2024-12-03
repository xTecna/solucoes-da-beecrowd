# 2605 - Representantes Executivos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2605)

## Solução

Aqui precisamos correlacionar dados entre duas tabelas: `products` e `providers`. Para fazermos isso, podemos fazer um simples `join` entre as duas tabelas, correlacionando a coluna `id_providers` em `products` com a coluna `id` em `providers`, que se referem ao mesmo dado em tabelas diferentes. Uma vez dado o `join`, você pode selecionar e filtrar pelas duas tabelas unidas, selecionando as colunas do nome do produto e do nome dos fornecedores.

> Perceba que como queremos filtrar pelo número da categoria, não é necessário fazer um segundo `join` com a tabela `categories`, já que não há dados relevantes para a tarefa que queremos desempenhar aqui.