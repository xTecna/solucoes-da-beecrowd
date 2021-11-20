# 1228 - Grid de Largada

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1228)

## Solução

Como estamos tratando de ultrapassagens, então o algoritmo de ordenação [InsertionSort](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#insertionsort) consegue caracterizar muito bem a simulação que precisaremos fazer. A grande diferença entre uma ordenação normal e a ordenação que precisamos fazer aqui é que nosso objetivo não é colocar todos os elementos na ordem crescente, e sim colocar na ordem dos carros ao final da corrida. Podemos fazer isso guardando a informação de cada posição de cada elemento ao final e usar esta posição desejada como parâmetro de comparação.

### C99
```c
#include <stdio.h>

int pos_final[25];

int comp(int a, int b)
{
    return pos_final[a] - pos_final[b];
}

void swap(int *a, int *b)
{
    int aux = *a;
    *a = *b;
    *b = aux;
}

int insertionSort(int *V, int n)
{
    int inversoes = 0;

    for (int i = 1; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]) < 0)
        {
            swap(&V[j], &V[k]);
            ++inversoes;
            --j, --k;
        }
    }

    return inversoes;
}

int main()
{
    int N, comeco[24], final[24];

    while (scanf("%d", &N) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &comeco[i]);
        }

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &final[i]);
            pos_final[final[i]] = i;
        }

        printf("%d\n", insertionSort(comeco, N));
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

vector<int> pos_final;

bool comp(int a, int b)
{
    return pos_final[a] < pos_final[b];
}

template <class T>
int insertionSort(vector<T> &V)
{
    int n = V.size();
    int inversoes = 0;

    for (int i = 0; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]))
        {
            swap(V[k], V[j]);
            ++inversoes;
            --j, --k;
        }
    }

    return inversoes;
}

int main()
{
    int N;
    vector<int> comeco, final;

    while (cin >> N)
    {
        comeco.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> comeco[i];
        }

        final.assign(N, 0);
        pos_final.assign(N + 1, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> final[i];
            pos_final[final[i]] = i;
        }

        cout << insertionSort(comeco) << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let pos_final = {};

const comp = (a, b) => pos_final[a] - pos_final[b];

const insertionSort = (V) => {
    let inversoes = 0;

    for (let i = 1; i < V.length; ++i){
        let j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k]) < 0){
            [V[k], V[j]] = [V[j], V[k]];
            ++inversoes;
            --j, --k;
        }
    }

    return inversoes;
};

while(lines.length){
    let N = parseInt(lines.shift().trim());
    let comeco = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let final = lines.shift().trim().split(' ').map((x) => parseInt(x));
    
    for (let i = 0; i < N; ++i){
        pos_final[final[i]] = i;
    }

    console.log(insertionSort(comeco));
}
```

### Python 3.9
```python
pos_final = []

def comp(a, b):
    return pos_final[a] - pos_final[b]

def insertionSort(V):
    inversoes = 0

    for i in range(1, len(V)):
        j = i
        k = j - 1

        while(k > -1 and comp(V[j], V[k]) < 0):
            V[j], V[k] = V[k], V[j]
            inversoes += 1
            j -= 1
            k -= 1
    
    return inversoes

while True:
    try:
        N = int(input())
        comeco = [int(x) for x in input().strip().split(' ')]
        final = [int(x) for x in input().strip().split(' ')]

        pos_final = [0 for _ in range(N + 1)]
        for i, carro in enumerate(final):
            pos_final[carro] = i
        
        print(insertionSort(comeco))
    except EOFError:
        break
```