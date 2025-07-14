# 1295 - Problema dos Pares Mais Próximos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1295)

## Solução

Uma solução que testa todos os pares e escolhe o que tem a menor distância entre eles tem complexidade $O(n^{2})$, o que é lento demais para a quantidade de pontos possível para esse problema, onde $N \leq 10000$.

Com isso, uma solução mais rápida para esse problema envolve o conceito de dividir para conquistar, onde dividimos o nosso problema ao meio, em pedaços mais fáceis de resolver, até sermos capazes de resolver um caso bem fácil, onde a resposta estão pode ser aplicada de volta ao caso mais difícil. Nesse problema em específico, isso significa:

1. Ordenar todos os pontos pela coordenada $x$.
2. Começar a resolver o problema chamando uma função recursiva que recebe a lista de pontos e retorna a menor distância entre dois deles, onde:
    1. Se a lista tiver 3 ou menos elementos, resolver testando todos os pares e retornando a menor distância entre todas as possibilidades, o que é bem rápido de resolver para tão poucos elementos. Esse é nosso caso mais básico e que retorna uma resposta válida para o problema, então aqui tudo certo.
    2. Caso contrário,
        1. Chamar a função novamente, mas apenas para a primeira metade dos elementos.
        2. Chamar a função novamente, mas apenas para a segunda metade dos elementos.
        3. Agora que a menor distância entre ambos os lados, precisamos entender como usar essa informação para encontrar a menor distância entre todos os elementos (tanto da esquerda quanto da direita). Para isso,
            4. Primeiramente ficamos com o valor mínimo entre ambos os lados.
            5. Depois disso, fazemos um _loop_ para verificar, para cada ponto do vetor, se a distância na coordenada $x$ entre cada ponto é menor do que esse valor mínimo ou não. A ideia aqui é criar uma faixa entre os lados esquerdo e direito, já que já testamos todos os pontos do lado esquerdo, todos do lado direito, mas não testamos alguns pontos com outros: vide a figura abaixo.

![Esquematização do espaço de busca do problema. À esquerda e a direita os pontos já foram verificados, com linhas verdes indicando todas as combinações já feitas pela recursão, enquanto a faixa vermelha indica combinações (linhas vermelhas) que ainda podem ser calculadas, que são calculadas indo de par a par naquele intervalo.](../../../assets/1295.png)

Com esse processo de divisão e depois união dos resultados encontrados podemos resolver o algoritmo com uma complexidade $O(n \log{n})$, mais apropriada para o tamanho de entrada envolvida no problema.