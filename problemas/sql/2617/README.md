# 2617 - Fornecedor Ajax SA

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2617)

## Solução

Vide problema [2611 - Filmes de Ação](../2611/README.md).

### PostgreSQL

```sql
select products.name, providers.name from products join providers on products.id_providers = providers.id where providers.name = 'Ajax SA';
```