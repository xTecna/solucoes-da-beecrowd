# 2611 - Filmes de Ação

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2611)

## Solução

Esse aqui é muito parecido com o problema [2606 - Categorias](../2606/README.md), com a diferença que em vez de usar `like`, aqui é uma igualdade mesmo.

### PostgreSQL

```sql
select movies.id, movies.name from movies join genres on movies.id_genres = genres.id where genres.description = 'Action';
```