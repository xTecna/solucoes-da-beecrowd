# 1129 - Leitura Ótica

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1129)

## Solução

Aqui precisamos verificar dentre as cores qual delas são pretas, e descartar casos onde nenhuma ou mais de uma cor preta foi encontrada. Em linguagens funcionais, é perfeitamente plausível usar `filter` para esse objetivo. Entender o [código ASCII](../../../base-teorica/strings/ascii/README.md) também vai te dar uma maneira muito mais fácil de imprimir a saída (no nosso código, por exemplo, o número `65` se refere ao caractere `'A'`).