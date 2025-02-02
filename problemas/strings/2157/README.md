# 2157 - Sequência Espelho

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2157)

## Solução

Para esse problema, precisamos transformar cada número em _string_ e ir concatenando. Após isso, podemos pegar a _string_ resultante e concatenar com sua _string_ oposta. Fazer isso em algumas linguagens é mais fácil do que em outras.

> Em Pascal, como o limite de tamanho de uma _string_ é $255$, tive que improvisar com um vetor de _strings_. Nenhum número tem mais de $255$ caracteres (ainda bem), então dá para usar um artifício para armazená-los e depois colocarmos cada caractere de cada _string_ invertida no mesmo vetor.