# 1244 - Ordenação por Tamanho

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1244)

## Solução

Pelo enunciado deste problema, podemos notar que o que é pedido é ordenar as palavras de acordo com o tamanho das strings e, em critério de desempate, **manter a ordem original das palavras**. Com isso, usar um algoritmo de ordenação como QuickSort (o padrão das bibliotecas) está fora de questão pois o QuickSort é considerado um algoritmo de ordenação instável, ou seja, um algoritmo que não mantem a ordenação relativa entre elementos que não foram comparados entre si.

Logo, para esta solução, decidimos usar um algoritmo de ordenação estável: o InsertionSort, seguindo a implementação normal, que manterá a ordenação relativa original em caso de empate sem precisar de uma estrutura de dados extra para armazenar as posições iniciais (o que poderia ser uma opção válida, mas desnecessária para a quantidade de palavras que vamos armazenar).

Vide [critério de ordenação](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#customização-de-critérios) para ver como mudar o critério de ordenação de acordo com o tamanho da string.

### C99
```c
#include <string.h>
#include <stdlib.h>
#include <stdio.h>

int tam;
char palavras[100][100];

int comp(char *a, char *b)
{
    return strlen(b) - strlen(a);
}

void insertionSort()
{
    char aux[100];

    for (int i = 1; i < tam; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(palavras[j], palavras[k]) < 0)
        {
            strcpy(aux, palavras[j]);
            strcpy(palavras[j], palavras[k]);
            strcpy(palavras[k], aux);
            --j, --k;
        }
    }
}

int main()
{
    int N;
    char frase[10000], *ptr;

    scanf("%d\n", &N);

    for (int k = 0; k < N; ++k)
    {
        scanf("%[^\n]\n", &frase);

        tam = 0;
        ptr = strtok(frase, " ");
        while (ptr != NULL)
        {
            strcpy(palavras[tam++], ptr);
            ptr = strtok(NULL, " ");
        }

        insertionSort(&palavras, tam);

        printf("%s", palavras[0]);
        for (int i = 1; i < tam; ++i)
        {
            printf(" %s", palavras[i]);
        }
        printf("\n");
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <sstream>
#include <vector>

using namespace std;

bool comp(string a, string b)
{
    return a.length() > b.length();
}

template <class T>
void insertionSort(vector<T> &V)
{
    int n = V.size();

    for (int i = 0; i < n; ++i)
    {
        int j = i, k = j - 1;

        while (k > -1 && comp(V[j], V[k]))
        {
            swap(V[k], V[j]);
            --j, --k;
        }
    }
}

int main()
{
    int N;
    stringstream fluxo;
    string frase, palavra;
    vector<string> palavras;

    cin >> N;
    cin.ignore();

    for (int i = 0; i < N; ++i)
    {
        getline(cin, frase);

        fluxo.clear();
        fluxo << frase;
        palavras.clear();
        while (fluxo >> palavra)
        {
            palavras.push_back(palavra);
        }

        insertionSort(palavras);

        cout << palavras[0];
        for (int i = 1; i < palavras.size(); ++i)
        {
            cout << ' ' << palavras[i];
        }
        cout << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => b.length - a.length;

const insertionSort = (V) => {
    for (let i = 1; i < V.length; ++i){
        let j = i, k = j - 1;

        while(k > -1 && comp(V[j], V[k]) < 0){
            [V[k], V[j]] = [V[j], V[k]];
            --j, --k;
        }
    }
};

let N = parseInt(lines.shift().trim());

for(let i = 0; i < N; ++i){
    let palavras = lines.shift().trim().split(' ');

    insertionSort(palavras);

    console.log(palavras.join(' '));
}
```

### Python 3.9
```python
def comp(a, b):
    return len(b) - len(a)


def insertionSort(V):
    for i in range(1, len(V)):
        j = i
        k = j - 1

        while(k > -1 and comp(V[j], V[k]) < 0):
            V[j], V[k] = V[k], V[j]
            j -= 1
            k -= 1


N = int(input())

for _ in range(N):
    palavras = input().strip().split(' ')

    insertionSort(palavras)

    print(' '.join(palavras))

```