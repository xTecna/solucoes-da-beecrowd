# 2622 - Pessoas Jurídicas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2622)

## Solução

Todos os clientes da tabela `customers` possíveis de serem correlacionados com a tabela `legal_person` através de um `join` podem ser considerados pessoas jurídicas, então não há necessidade de filtros adicionais.

### PostgreSQL

```sql
select customers.name from customers join legal_person on customers.id = legal_person.id_customers;
```