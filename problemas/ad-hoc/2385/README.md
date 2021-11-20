# 2385 - Multiplicação de Matrizes

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2385)

## Solução

Um bom jeito de começar a solucionar problemas é em vez de focar nas possibilidades de resolução, focar com quais limitações nossa solução vai ter que lidar. Por exemplo, neste problema, as matrizes envolvidas tem tamanho máximo 10000 x 10000, o que é inviável de representar nos computadores atuais. Logo, agora temos uma dica de que não será necessário construir as matrizes completas A e B para resolver o problema.

Com isso, vem a pergunta: ué, mas se não podemos construir as matrizes, como vamos calcular o resultado na matriz C? Daí podemos ver que o problema na verdade não pede para imprimirmos a matriz C, ele só pede para que imprimamos um elemento específico situado em uma coordenada específica da matriz C, o que torna nosso problema muito mais fácil.

Mas como que vamos descobrir o valor do elemento específico sem saber a matriz inteira? Basta lembrar de como multiplicação de matrizes funciona na prática. Para toda matriz A e B quadrada de dimensões iguais, podemos calcular um elemento da matriz C na posição (i, j) da seguinte forma:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
C_{ij}&space;=&space;\sum\limits_{k&space;=&space;1}^{N}&space;A_{ik}&space;\times&space;B_{kj}" title="\bg_white 
C_{ij} = \sum\limits_{k = 1}^{N} A_{ik} \times B_{kj}" />

Com isso, basta apenas calcularmos este somatório para todos os valores de k para conseguirmos nossa resposta, só prestando atenção a dois detalhes importantes:

* A resposta pode dar overflow, então utilize inteiros com capacidade maior para armazenar a resposta;
* Os índices vão de 1 até N.

### C99
```c
#include <stdio.h>

int main(){
    long long int resposta;
    int N, P, Q, R, S, X, Y, I, J;

    scanf("%d\n", &N);
    scanf("%d %d %d %d %d %d\n", &P, &Q, &R, &S, &X, &Y);
    scanf("%d %d", &I, &J);

    resposta = 0;
    for(int k = 1; k <= N; ++k){
        resposta += ((P * I + Q * k) % X) * ((R * k + S * J) % Y);
    }

    printf("%lld\n", resposta);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int P, Q, R, S, X, Y;

int A(int i, int j){
    return (P * i + Q * j) % X;
}

int B(int i, int j){
    return (R * i + S * j) % Y;
}

int main(){
    int N, I, J;
    long long int resposta;

    cin >> N >> P >> Q >> R >> S >> X >> Y >> I >> J;

    resposta = 0;
    for(int k = 1; k <= N; ++k){
        resposta += A(I, k) * B(k, J);
    }
    cout << resposta << endl;

    return 0;
}
```

### Python 3.9
```python
N = int(input())
P, Q, R, S, X, Y = [int(x) for x in input().split()]
I, J = [int(x) for x in input().split()]

def A(i, j):
    return ((P * i + Q * j) % X)

def B(i, j):
    return ((R * i + S * j) % Y)

print(sum([A(I, k) * B(k, J) for k in range(1, N + 1)]))
```