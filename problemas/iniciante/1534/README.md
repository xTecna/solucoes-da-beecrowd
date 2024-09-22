# 1534 - Matriz 123

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1534)

## Solução

A lógica deste problema é a seguinte: para toda célula em uma coordenada $(x, y)$, seu valor é igual a

* $1$, se $x = y$. Perceba que uma célula só está na diagonal quando sua coordenada de linha é igual à sua coordenada de coluna;
* $2$, se $x + y = N - 1$. Perceba aqui que todo elemento da diagonal secundária tem suas coordenadas complementares ao maior valor possível de posição: $N - 1$. Para comparar então podemos passar o $y$ para o outro lado e colocar na condicional $x = N - y - 1$;
* $3$, caso contrário.

Um detalhe interessante é que quando a matriz tem um valor central, a diagonal secundária leva prioridade, então é uma boa ver se o valor é $2$ primeiro.