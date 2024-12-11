# 1632 - Variações

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1632)

## Solução

As senhas podem ser formadas apenas por letras do alfabeto, então para qualquer letra tem $2$ variações e para algumas letras específicas ("a", "e", "i", "o", "s") tem mais uma (os números "4", "3", "1", "0" e "5" respectivamente).

Com isso, para calcular o total de variações podemos ler a _string_, para cada letra pegar o total de variações disponíveis e então multiplicar todas essas variações, como um problema de análise combinatória.