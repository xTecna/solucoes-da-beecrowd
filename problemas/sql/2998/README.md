# 2998 - The Payback

## [Descrição](https://judge.beecrowd.com/pt/problems/view/2998)

## Solução

Podemos separar a solução desse exercício em alguns passos:

1. Arrumar uma tabela com a quantidade de lucro acumulada a cada investimento, fazendo uma _window function_ de `sum` ordenada pelo mês da operação.
2. Após isso, ordenar a tabela filtrando apenas pelos meses em que a soma dos lucros é maior que o investimento aplicado e usar a _window function_ `row_number` para contabilizar a ordem dos meses. Com isso, você vai ter uma tabela com todos os meses em que o payback aconteceu.
3. A partir daí, filtre apenas pelo `row_num = 1` para conseguir o primeiro mês de payback para cada cliente.