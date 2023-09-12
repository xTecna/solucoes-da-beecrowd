# 2614 - Locações de Setembro

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2614)

## Solução

Para datas, podemos usar o filtro `between` para determinar um intervalo de tempo válido para o filtro. Nesse caso, estamos interessados nas datas desde o dia primeiro de setembro até o último dia de setembro com os dois limites sendo incluídos na busca por padrão.

### PostgreSQL

```sql
select customers.name, rentals.rentals_date from customers join rentals on customers.id = rentals.id_customers where rentals.rentals_date between '2016-09-01' and '2016-09-30';
```