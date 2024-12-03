# 3481 - Classificando uma Árvore

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3481)

## Solução

Já que queremos classificar cada linha da tabela, o `case` é uma mão na roda. Para cada nó, temos as seguintes condições:

* Se o nó não aponta para nenhum outro nó, então este é um nó folha (`LEAF`).
* Caso contrário, se o nó é apontado por outro nó, então este é um nó interno (`INNER`).
* Caso contrário, é um nó raiz (`ROOT`).