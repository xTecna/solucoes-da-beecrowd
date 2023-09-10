# 2621 - Quantidades Entre 10 e 20

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2621)

## Solução

Vide problemas [2606 - Categorias](../2606/README.md) e [2613 - Filmes em Promoção](../2613/README.md).

### PostgreSQL

```sql
select products.name from products join providers on products.id_providers = providers.id where products.amount > 10 and products.amount < 20 and providers.name like 'P%';
```