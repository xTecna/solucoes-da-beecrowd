# 2243 - Isósceles

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2243)

## Solução

Para solucionar esse problema, vamos utilizar uma ideia que envolve olhar as pilhas de blocos da esquerda para a direita e da direita para a esquerda. A ideia aqui é considerar qual o maior triângulo podemos fazer em cada bloco considerando apenas um dos lados de cada vez. Ou seja, considerando apenas o lado esquerdo primeiro, por exemplo, qual é o maior triângulo que pode ser feito em determinada coluna de cubinhos?

Vamos ilustrar o processo para esse caso de teste:

![Caso de teste inicial com diversas pilhas de cubinhos](../.gitbook/assets/esquemaisosceles1.png)

Para esse caso de teste, vamos verificar qual a altura máxima possível de formar um triângulo da esquerda para a direita, apenas o lado esquerdo do triângulo. Confira a figura e a recorrência abaixo:

![Varredura da esquerda para direita com o maior triângulo possível para cada coluna](../.gitbook/assets/esquemaisosceles2.png)

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
T(i)&space;=&space;min(altura(i),&space;T(i&space;-&space;1)&space;+&space;1)" title="\bg_white 
T(i) = min(altura(i), T(i - 1) + 1)" />

T(i) representando a altura do maior triângulo na coluna i, considerando apenas o lado esquerdo. Vemos se é possível adicionar um bloco da altura da coluna à esquerda, se der, OK, se não der, tudo bem, ficamos com a altura da coluna. Sabemos que podemos fazer um triângulo menor do que o anterior + 1 porque todos os bloquinhos do lado esquerdo já estão garantidos, já que o anterior + 1 é maior do que a altura da coluna atual.

Vamos então sobrepor o da esquerda para a direita com o caso da direita para a esquerda, como a ilustração abaixo:

![Varredura da direita para esquerda com o maior triângulo para cada coluna](../.gitbook/assets/esquemaisosceles3.png)

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;
T(i)&space;=&space;min(altura(i),&space;T(i&space;+&space;1)&space;+&space;1)" title="\bg_white 
T(i) = min(altura(i), T(i + 1) + 1)" />

A recorrência é a mesma, exceto que agora fazemos da direita para esquerda e comparamos com T(i + 1), representado em cinza claro. Também podemos ver a sobreposição das duas varreduras, onde tal sobreposição representa o mínimo entre as varreduras da esquerda e da direita. Com isso, conseguimos comprovar que podemos sempre representar um triângulo começando pelo maior cubinho cinza espalhando para os lados em cada coluna. Com isso, nosso resultado seria a maior altura que pudermos alcançar neste cinza. A imagem abaixo apresenta o maior triângulo possível:

![O cinza mais claro representa o maior triângulo possível com esses bloquinhos](../.gitbook/assets/esquemaisosceles4.png)

Repare que a coluna logo à direita desta também gera o maior triângulo. Logo, nossa solução envolve:

* Varrer as colunas da esquerda para direita;
* Varrer as colunas da direita para esquerda;
* Verificar qual é o mínimo entre os valores indo da esquerda para direita e da direita para esquerda.

### C99
```c
#include <stdio.h>

int min(int a, int b){
    return a < b ? a : b;
}

int max(int a, int b){
    return a > b ? a : b;
}

int main(){
    int N, resposta;
    int colunas[50001], esquerda[50001], direita[50001];

    scanf("%d", &N);
    for(int i = 0; i < N; ++i){
        scanf("%d", &colunas[i]);
    }

    esquerda[0] = 1;
    for(int i = 1; i < N; ++i){
        esquerda[i] = min(colunas[i], esquerda[i - 1] + 1);
    }

    direita[N - 1] = 1;
    for(int i = N - 2; i > -1; --i){
        direita[i] = min(colunas[i], direita[i + 1] + 1);
    }

    resposta = 0;
    for(int i = 0; i < N; ++i){
        resposta = max(resposta, min(esquerda[i], direita[i]));
    }

    printf("%d\n", resposta);

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int N, resposta;
    int colunas[50001], esquerda[50001], direita[50001];

    cin >> N;
    for(int i = 0; i < N; ++i){
        cin >> colunas[i];
    }

    esquerda[0] = 1;
    for(int i = 1; i < N; ++i){
        esquerda[i] = min(colunas[i], esquerda[i - 1] + 1);
    }

    direita[N - 1] = 1;
    for(int i = N - 2; i > -1; --i){
        direita[i] = min(colunas[i], direita[i + 1] + 1);
    }

    resposta = 0;
    for(int i = 0; i < N; ++i){
        resposta = max(resposta, min(esquerda[i], direita[i]));
    }

    cout << resposta << endl;

    return 0;
}
```

### Python 3.9
```python
N = int(input().strip())
colunas = [int(x) for x in input().strip().split(' ')]

esquerda, direita = [0 for _ in range(N)], [0 for _ in range(N)]

esquerda[0] = 1
for i in range(1, N):
    esquerda[i] = min(colunas[i], esquerda[i - 1] + 1)

direita[N - 1] = 1
for i in range(N - 2, -1, -1):
    direita[i] = min(colunas[i], direita[i + 1] + 1)

print(max([min(esquerda[i], direita[i]) for i in range(N)]))
```