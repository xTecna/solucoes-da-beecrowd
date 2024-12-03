# 2618 - Produtos Importados

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2618)

## Solução

O nome do produto, do fornecedor e da categoria só podem ser obtidos na mesma requisição se fizermos dois `joins` encadeados para unir as três tabelas. Com isso, podemos correlacionar `products` e `providers` por `id_providers` e `id` respectivamente e podemos também correlacionar `products` e `categories` por `id_categories` e `id` respectivamente. A partir daí podemos aplicar o filtro por nome do fornecedor e por nome da categoria.