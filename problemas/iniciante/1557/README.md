# 1557 - Matriz Quadrada III

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1557)

## Solução

Para dúvidas de formatação, consulte o problema [1435 - Matriz Quadrada I](../1435/README.md). Para as linguagens C, Java e Python, tem algumas abordagens diferentes que aprendi enquanto resolvia esse problema.

O espaçamento é calculado através do maior valor possível de ser alcançado na célula ($2^{2n - 2}$). Tendo o valor máximo, sabemos que a quantidade de dígitos de um número maior que zero é sempre o piso do seu logaritmo na base 10 (estamos usando números na base decimal) mais 1 (não é exatamente o teto porque temos que considerar os números $10$ e $100$ como números com $2$ e $3$ dígitos, por exemplo).