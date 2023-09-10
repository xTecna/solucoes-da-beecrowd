# 2619 - Super Luxo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2619)

## Solução

Vide [2618 - Produtos Importados](../2618/README.md).

### PostgreSQL

```sql
select products.name, providers.name, products.price from products join providers on providers.id = products.id_providers join categories on categories.id = products.id_categories where products.price > 1000 and categories.name = 'Super Luxury';
```