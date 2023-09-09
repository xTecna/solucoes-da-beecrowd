# 2613 - Filmes em Promoção

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2613)

## Solução

Esse aqui é muito parecido com o problema [2611 - Filmes de Ação](../2611/README.md), com diferenças também depois do `where`.

### PostgreSQL

```sql
select movies.id, movies.name from movies join prices on movies.id_prices = prices.id where prices.value < 2.00;
```