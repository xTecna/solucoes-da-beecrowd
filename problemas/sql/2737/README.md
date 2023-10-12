# 2737 - Advogados

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2737)

## Solução

Aqui queremos resultados de três _queries_ diferentes em uma _query_ só, mas o que todas elas têm em comum é o fato de que elas apresentam o nome do advogado e um número de clientes (o nome do "advogado" da média deve ser `'Average'`).

Com isso, para agregarmos essas diferentes _queries_, podemos uni-las na mesma tabela usando `union all` e para apresentar na ordem de máximo, mínimo e média pode-se criar uma nova coluna (que nesse caso aqui chamamos de `filter`) com valores arbitrários para podermos ordenar no final.

Dá para fazer _queries_ para descobrir o número máximo e mínimo de clientes e usar esses números para fazer a query de quem é o advogado que tem essa quantidade de clientes.

### PostgreSQL

```sql
select name, customers_number from
(
  select name, customers_number, 1 as filter from lawyers where customers_number = (select max(customers_number) from lawyers)
  union all
  select name, customers_number, 2 as filter from lawyers where customers_number = (select min(customers_number) from lawyers)
  union all
  select 'Average' as name, round(avg(customers_number), 0) as customers_number, 3 as filter from lawyers
) tabela order by filter;
```