# 1088 - Bolhas e Baldes

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1088)

## Solução

O problema a ser descrito é idêntico ao problema [1162 - Organizador de Vagões](../1162/README.md), onde é preciso contar quantas trocas entre elementos consecutivos temos que fazer até que o vetor fique ordenado. Naquele problema, podemos simular o processo e contabilizarmos nós mesmos, porém isso só foi possível porque o número de elementos envolvidos era pequeno o suficiente (50 elementos no máximo).

Neste problema, como há a possibilidade de termos até 100.000 elementos, não podemos mais simular diretamente o algoritmo, por este possui complexidade O(n²). Entretanto, ainda há uma alternativa: podemos usar um método de ordenação mais eficiente, o [MergeSort](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#mergesort), para contar quantas inversões serão feitas no total.

O raciocínio a ser usado aqui é a ideia do dividir para conquistar: cada vez que formos fazer o merge entre os dois vetores da esquerda e da direita, sempre que formos escolher o elemento da direita, significa que estamos fazendo inversões, onde a quantidade de inversões é o número de elementos que ainda faltam entrar no vetor de merge do lado esquerdo (ou seja, quantos elementos o elemento da direita teve que "furar a fila").

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int inversoes;

int comp(int a, int b)
{
    return a - b;
}

void merge(int *V, int inicio, int meio, int fim)
{
    int *aux = (int *)malloc((fim - inicio) * sizeof(int));
    int i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while (i1 < n1 && i2 < n2)
    {
        if (comp(V[i1], V[i2]) < 0)
        {
            aux[i++] = V[i1++];
        }
        else
        {
            aux[i++] = V[i2++];
            inversoes += (n1 - i1);
        }
    }

    while (i1 < n1)
        aux[i++] = V[i1++];
    while (i2 < n2)
        aux[i++] = V[i2++];

    for (int i = inicio; i < fim; ++i)
    {
        V[i] = aux[i - inicio];
    }

    free(aux);
}

void mergeSort(int *V, int inicio, int fim)
{
    if (fim - inicio > 1)
    {
        int meio = (inicio + fim) / 2;

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
}

int main()
{
    int N, *P;

    while (scanf("%d", &N))
    {
        if (!N)
            break;

        P = (int *)malloc(N * sizeof(int));

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &P[i]);
        }

        inversoes = 0;
        mergeSort(P, 0, N);

        printf("%s\n", (inversoes % 2) ? "Marcelo" : "Carlos");

        free(P);
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

int inversoes;

bool comp(int a, int b)
{
    return a < b;
}

template <class T>
void merge(vector<T> &V, int inicio, int meio, int fim)
{
    vector<int> aux(V.begin() + inicio, V.begin() + fim);
    int i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while (i1 < n1 && i2 < n2)
    {
        if (comp(V[i1], V[i2]))
        {
            aux[i++] = V[i1++];
        }
        else
        {
            aux[i++] = V[i2++];
            inversoes += (n1 - i1);
        }
    }

    while (i1 < n1)
        aux[i++] = V[i1++];
    while (i2 < n2)
        aux[i++] = V[i2++];

    for (int i = inicio; i < fim; ++i)
    {
        V[i] = aux[i - inicio];
    }
}

template <class T>
void mergeSort(vector<T> &V, int inicio, int fim)
{
    if (fim - inicio > 1)
    {
        int meio = (inicio + fim) / 2;

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
}

int main()
{
    int N;
    vector<int> P;

    while (cin >> N)
    {
        if (!N)
            break;

        P.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> P[i];
        }

        inversoes = 0;
        mergeSort(P, 0, P.size());

        cout << (string)(inversoes % 2 ? "Marcelo" : "Carlos") << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

let inversoes = 0;

comp = (a, b) => a - b;

merge = (V, inicio, meio, fim) => {
    let aux = Array(fim - inicio);
    let i = 0, i1 = inicio, i2 = meio, n1 = meio, n2 = fim;

    while(i1 < n1 && i2 < n2){
        if(comp(V[i1], V[i2]) < 0){
            aux[i++] = V[i1++];
        }else{
            aux[i++] = V[i2++];
            inversoes += (n1 - i1);
        }
    }

    while(i1 < n1)  aux[i++] = V[i1++];
    while(i2 < n2)  aux[i++] = V[i2++];

    for(let i = inicio; i < fim; ++i){
        V[i] = aux[i - inicio];
    }
};

mergeSort = (V, inicio, fim) => {
    if(fim - inicio > 1){
        let meio = Math.floor((inicio + fim)/2);

        mergeSort(V, inicio, meio);
        mergeSort(V, meio, fim);
        merge(V, inicio, meio, fim);
    }
};

while(lines.length){
    let P = lines.shift().trim().split(' ').map((x) => parseInt(x));
    P.shift();

    inversoes = 0;
    mergeSort(P, 0, P.length);

    console.log(inversoes % 2 ? "Marcelo" : "Carlos");
}
```