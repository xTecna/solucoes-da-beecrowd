# 2744 - Senhas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2744)

## Solução

A função `MD5` criptografa as senhas em MD5.

### PostgreSQL

```sql
select id, password, MD5(password) from account;
```