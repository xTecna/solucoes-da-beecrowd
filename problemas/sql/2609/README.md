# 2609 - Produtos por Categorias

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2609)

## Solução

Aqui precisamos fazer um `join` porque nós precisamos retornar o nome da categoria nos resultados, então podemos correlacionar entre as colunas `id_categories` em `products` e `id` em `categories`. Também podemos usar a função de agregamento `sum()` para conseguir a soma da quantidade de produtos de cada categoria. Lembrando que como não queremos a soma total e sim a soma por categorias, então nossa requisição precisa vir acompanhada de um `group by`. Nesse contexto, vamos somar **quantidades** por **nome de categoria**.