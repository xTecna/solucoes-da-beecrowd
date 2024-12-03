# 3480 - Cadeiras Adjacentes

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/3480)

## Solução

O enunciado não é muito claro nisso, mas só estamos interessados em estritamente duas cadeiras lado a lado. Com isso, podemos filtrar apenas as cadeiras disponíveis e usar a _window function_ `lead` para podermos ver se há uma cadeira ao lado dessa na mesma fila e se o valor dessa cadeira é `id + 1` ou não. Você pode fazer esse problema tanto usando `lead` pra focar nas cadeiras da esquerda quanto fazer com `lag` focando nas cadeiras da direita, fica a seu critério.