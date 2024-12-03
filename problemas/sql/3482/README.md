# 3482 - Seguidores

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3482)

## Solução

Para resolver esse problema, é útil você separar em alguns passos:

1. Arrumar uma tabela com quem é seguido.
2. Arrumar uma tabela com quem segue outras pessoas.
3. Unir as duas tabelas através do `follower_id`, para ter uma relação de quem segue quem.
4. A partir daí, dá pra fazer um `case` para saber quem é o usuário com menos posts para colocá-lo no `u1_name` e no `u2_name`, além de fazer um `group by` por essa dupla para ver quantas linhas têm. Se tiver duas linhas com o mesmo par, isso significa que eles se seguem mutuamente (ou seja, apareceram duas vezes na lista, já que a ordem é estabelecida). Para fazer esse filtro dentro do `group by`, você pode usar `having`.
5. Falando em ordem, a ordenação é feita em um `select` separado porque não é possível descobrir o `u1_id` a tempo de usá-lo na mesma _query_.