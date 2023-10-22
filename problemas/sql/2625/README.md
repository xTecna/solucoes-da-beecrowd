# 2625 - Máscara de CPF

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2625)

## Solução

Podemos usar `format` para determinar a forma que o dado será exibido bem similar ao jeito que fazemos normalmente em outras linguagens.

### PostgreSQL

```sql
select format('%s.%s.%s-%s', substring(cpf, 1, 3), substring(cpf, 4, 3), substring(cpf, 7, 3), substring(cpf, 10, 2)) from natural_person;
```