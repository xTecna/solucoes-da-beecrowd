# 1768 - Árvore de Natal

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1768)

## Solução

Aqui temos que observar um pouco a árvore pra ver como ela está sendo construída. Na maior parte das linguagens, eu faço uma função só pra desenhar o triângulo que aí dá pra ter mais flexibilidade passando o tamanho e o deslocamento de cada triângulo.

No caso, para o triângulo maior, podemos começar com a primeira linha com $\lfloor \frac{n}{2} \rfloor$ espaços e $1$ asterisco e ir diminuindo os espaços de $1$ em $1$ enquanto aumenta a quantidade de asteriscos de $2$ em $2$ até que se tenha impresso todos os $N$ asteriscos. Para o segundo triângulo menor é a mesma ideia, mas precisamos acrescentar um deslocamento fixo de $\lfloor \frac{N}{2} \rfloor - 1$ espaço para que os centros das duas árvores fique alinhado (já que a árvore de baixo tem tamanho $3$ e sempre que se imprime $3$ asteriscos no triângulo de cima se dá $\lfloor \frac{N}{2} \rfloor - 1$ espaços).