# 2738 - Concurso

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2738)

## Solução

É possível fazer contas e colocar o resultado como coluna e ajustar o formato com `::numeric` para obtermos o resultado com no máximo $5$ dígitos (notas de $0$ a $100$) e arredondado para $2$ casas decimais.

### PostgreSQL

```sql
select name, ((2 * score.math + 3 * score.specific + 5 * score.project_plan)/10)::numeric(5,2) as avg from candidate join score on candidate.id = score.candidate_id order by avg desc;
```