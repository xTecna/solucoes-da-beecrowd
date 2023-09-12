# 2623 - Categorias com Vários Produtos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2623)

## Solução

Para filtrar apenas por alguns determinados valores em uma coluna, você pode definir os valores dentro de um conjunto e usar `in`, como na declaração apresentada aqui. Você também pode ordenar por uma determinada coluna usando `order by` pela coluna desejada.

### PostgreSQL

```sql
select products.name, categories.name from products join categories on products.id_categories = categories.id where products.amount > 100 and categories.id in (1, 2, 3, 6, 9) order by categories.id;
```