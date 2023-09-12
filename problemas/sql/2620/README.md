# 2620 - Pedidos no Primeiro Semestre

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2620)

## Solução

Vide problema [2614 - Locações de Setembro](../2614/README.md).

### PostgreSQL

```sql
select customers.name, orders.id from customers join orders on customers.id = orders.id_customers where orders.orders_date between '2016-01-01' and '2016-06-30';
```