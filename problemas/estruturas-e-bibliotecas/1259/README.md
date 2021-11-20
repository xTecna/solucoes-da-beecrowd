# 1259 - Pares e Ímpares

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1259)

## Solução

Veja a página de [Ordenação](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#customização-de-critérios) para entender como fazer critérios avançados para a ordenação de elementos. A ideia aqui é verificar se cada um dos números é par ou ímpar e comparar de acordo, tudo no mesmo vetor.

> Na versão em JavaScript, usar `lines.shift()` é lento demais, então tive que utilizar o acesso direto.

Na versão em Python, usamos dois vetores por eu não ter conseguido pensar em uma função que ordenasse os dois tipos de número no mesmo vetor. Entretanto, perceba como podemos usar a mesma função em dois vetores diferentes, mudando apenas o parâmetro `reverse`.

### C99
```c
#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    int A = *(int *)a, B = *(int *)b;

    if (A % 2 == 0)
        if (B % 2 == 0)
            return A - B;
        else
            return -1;
    else if (B % 2 == 0)
        return 1;
    else
        return B - A;
}

int main()
{
    int n, numeros[100000];

    scanf("%d", &n);

    for (int i = 0; i < n; ++i)
    {
        scanf("%d", &numeros[i]);
    }

    qsort(numeros, n, sizeof(int), comp);

    for (int i = 0; i < n; ++i)
    {
        printf("%d\n", numeros[i]);
    }

    return 0;
}
```

### C++17
```cpp
#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

bool comp(int a, int b)
{
    if (a % 2 == 0)
        if (b % 2 == 0)
            return a < b;
        else
            return true;
    else if (b % 2 == 0)
        return false;
    else
        return a > b;
}

int main()
{
    int N;
    vector<int> numeros;

    cin >> N;
    numeros.assign(N, 0);
    for (int i = 0; i < N; ++i)
    {
        cin >> numeros[i];
    }

    sort(numeros.begin(), numeros.end(), comp);

    for (int i = 0; i < N; ++i)
    {
        cout << numeros[i] << endl;
    }

    return 0;
}
```

### Python 3.9
```python
def comp(a):
    return a


n = int(input())

pares = []
impares = []
for _ in range(n):
    numero = int(input())

    if (numero % 2 == 0):
        pares.append(numero)
    else:
        impares.append(numero)

pares.sort(key=comp)
impares.sort(key=comp, reverse=True)

for numero in pares:
    print(numero)
for numero in impares:
    print(numero)

```