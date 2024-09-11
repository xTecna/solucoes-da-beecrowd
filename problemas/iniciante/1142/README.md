# 1142 - PUM

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1142)

## Solução

Você pode criar uma variável externa para ir contando o número atual toda vez que você passar pelo for interno e imprimir `PUM` quando este valor for divisível por 4.

Do jeito apresentado em algumas linguagens, eu quis calcular o valor direto, dependendo da linha a ser impressa e alterando `j` de 0 a 3 (pois são 3 números por linha), através da fórmula `4 * i + j + 1`, pois a `i`-ésima linha sempre começa com `4 * i + 1` e `j` contribui à fórmula com o deslocamento necessário a cada linha. Em outras linguagens, eu criei uma variável intermediária para facilitar a compreensão do código.