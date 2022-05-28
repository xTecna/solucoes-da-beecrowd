# 1025 - Onde está o Mármore?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1025)

## Solução

O problema consiste em ordenar todos os mármores em ordem crescente e ir respondendo qual a primeira posição de um determinado número de mármore.

Para solucioná-lo, podemos usar duas diferentes abordagens:

* Ordenar o vetor de mármores e fazer cada consulta com [pesquisa binária](../../../base-teorica/estruturas-e-bibliotecas/pesquisa-binaria/README.md), com complexidade O(log n) de tempo para cada consulta;
* Acumular todos os valores de mármore em um vetor auxiliar, usando-o para contar quantos mármores de cada tem na entrada (ver [Counting sort](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md#counting-sort)) para poder fazer as consultas em tempo O(1) (mas com gasto de espaço O(N)).

> Na versão em JavaScript, usar `lines.shift()` é lento demais, então tive que utilizar o acesso direto.

### Alternativa 1 - Pesquisa Binária

| Complexidade | Notação assintótica |
| ------------ | ------------------- |
| Tempo        |            O(log n) |
| Espaço       |                O(1) |

Essa solução precisa de uma leve adaptação para que quando for igual, não retorne a posição, e sim escolha o intervalo à esquerda. Isso acontece porque não queremos saber apenas se o mármore existe ou não, mas sim a posição do primeiro mármore. Então, se o mármore existe, precisamos chegar pra trás ainda pra nos certificarmos de que é de fato o primeiro mármore.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    return *(int *)a - *(int *)b;
}

int pesquisaBinaria(int *V, int n, int valor)
{
    int inicio = 0, fim = n;

    while (inicio < fim)
    {
        int meio = (inicio + fim) / 2;

        if (V[meio] < valor)
        {
            inicio = meio + 1;
        }
        else
        {
            fim = meio;
        }
    }

    return V[inicio] == valor ? inicio + 1 : -1;
}

int main()
{
    int *marmores;
    int T, N, Q, consulta, resposta;

    T = 0;
    while (scanf("%d %d", &N, &Q))
    {
        if (N == 0 && Q == 0)
            break;

        marmores = (int *)malloc(sizeof(int) * N);
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &marmores[i]);
        }

        qsort(marmores, N, sizeof(int), comp);

        printf("CASE# %d:\n", ++T);
        for (int i = 0; i < Q; ++i)
        {
            scanf("%d", &consulta);

            resposta = pesquisaBinaria(marmores, N, consulta);
            if (resposta == -1)
            {
                printf("%d not found\n", consulta);
            }
            else
            {
                printf("%d found at %d\n", consulta, resposta);
            }
        }

        free(marmores);
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

int main()
{
    vector<int> marmores;
    int T, N, Q, consulta;

    T = 0;
    while (cin >> N >> Q)
    {
        if (!N && !Q)
            break;

        marmores.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> marmores[i];
        }

        sort(marmores.begin(), marmores.end());

        cout << "CASE# " << ++T << ":" << endl;
        for (int i = 0; i < Q; ++i)
        {
            cin >> consulta;

            vector<int>::iterator it = lower_bound(marmores.begin(), marmores.end(), consulta);

            if (it == marmores.end() || *it != consulta)
                cout << consulta << " not found" << endl;
            else
                cout << consulta << " found at " << (it - marmores.begin()) + 1 << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;

class URI
{
    static int pesquisaBinaria(List<int> V, int valor)
    {
        int inicio = 0;
        int fim = V.Count;

        while (inicio < fim)
        {
            int meio = (inicio + fim) / 2;

            if (V[meio] < valor)
            {
                inicio = meio + 1;
            }
            else
            {
                fim = meio;
            }
        }

        if (inicio >= V.Count)
        {
            return -1;
        }

        return V[inicio] == valor ? inicio + 1 : -1;
    }

    static void Main(string[] args)
    {
        int T = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            string[] numeros = entrada.Trim().Split(' ');

            int N = int.Parse(numeros[0]);
            int Q = int.Parse(numeros[1]);

            if (N == 0 && Q == 0)
            {
                break;
            }

            List<int> marmores = new List<int>();
            for (int i = 0; i < N; ++i)
            {
                marmores.Add(int.Parse(Console.ReadLine()));
            }
            marmores.Sort();

            Console.WriteLine($"CASE# {++T}:");
            for (int i = 0; i < Q; ++i)
            {
                int consulta = int.Parse(Console.ReadLine());

                int resposta = pesquisaBinaria(marmores, consulta);
                if (resposta == -1)
                {
                    Console.WriteLine($"{consulta} not found");
                }
                else
                {
                    Console.WriteLine($"{consulta} found at {resposta}");
                }
            }
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Main {
    public static int pesquisaBinaria(int[] V, int valor) {
        int inicio = 0, fim = V.length;

        while (inicio < fim) {
            int meio = (inicio + fim) / 2;

            if (V[meio] < valor) {
                inicio = meio + 1;
            } else {
                fim = meio;
            }
        }

        if (inicio >= V.length) {
            return -1;
        }

        return V[inicio] == valor ? inicio + 1 : -1;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = 0;
        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            int N = Integer.parseInt(entrada[0]);
            int Q = Integer.parseInt(entrada[1]);

            if (N == 0 && Q == 0) {
                break;
            }

            int[] marmores = new int[N];
            for (int i = 0; i < N; ++i) {
                marmores[i] = Integer.parseInt(in.readLine());
            }
            Arrays.sort(marmores);

            System.out.printf("CASE# %d:\n", ++T);
            for (int i = 0; i < Q; ++i) {
                int consulta = Integer.parseInt(in.readLine());

                int resposta = pesquisaBinaria(marmores, consulta);
                if (resposta == -1) {
                    System.out.printf("%d not found\n", consulta);
                } else {
                    System.out.printf("%d found at %d\n", consulta, resposta);
                }
            }
        }
    }
}
```

### JavaScript 12.18

```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const comp = (a, b) => a - b;

const pesquisaBinaria = (V, valor) => {
    let [inicio, fim] = [0, V.length];

    while (inicio < fim) {
        let meio = Math.floor((inicio + fim) / 2);

        if (V[meio] < valor)
            inicio = meio + 1;
        else
            fim = meio;
    }

    if (inicio >= V.length) {
        return -1;
    }

    return V[inicio] === valor ? inicio + 1 : -1;
};

lines.pop();

let T = 0, p = 0;
while (p < lines.length) {
    let [N, Q] = lines[p++].trim().split(' ').map((x) => parseInt(x));

    let marmores = [];
    for (let i = 0; i < N; ++i) {
        marmores.push(parseInt(lines[p++].trim()));
    }
    marmores.sort(comp);

    console.log(`CASE# ${++T}:`);
    for (let i = 0; i < Q; ++i) {
        let consulta = parseInt(lines[p++].trim());

        let resposta = pesquisaBinaria(marmores, consulta);
        if (resposta === -1)
            console.log(`${consulta} not found`);
        else
            console.log(`${consulta} found at ${resposta}`);
    }
}
```

### Python 3.9

```python
def pesquisaBinaria(V, valor):
    inicio, fim = 0, len(V)

    while(inicio < fim):
        meio = (inicio + fim)//2

        if(V[meio] < valor):
            inicio = meio + 1
        else:
            fim = meio

    if(inicio >= len(V)):
        return -1

    return inicio + 1 if V[inicio] == valor else -1


T = 1
while True:
    try:
        N, Q = [int(x) for x in input().strip().split(' ')]

        if(N == 0 and Q == 0):
            break

        marmores = []
        for _ in range(N):
            marmores.append(int(input()))
        marmores.sort()

        print(f'CASE# {T}:')
        T += 1
        for _ in range(Q):
            consulta = int(input())

            resposta = pesquisaBinaria(marmores, consulta)
            if(resposta == -1):
                print(f'{consulta} not found')
            else:
                print(f'{consulta} found at {resposta}')
    except EOFError:
        break
```

### Alternativa 2 - Contando os mármores

É importante notar que não sabemos o valor máximo `m` que N pode assumir. O valor que está no código que eu escrevi foi um valor chutado.

| Complexidade | Notação assintótica |
| ------------ | ------------------- |
| Tempo        |                O(m) |
| Espaço       |                O(m) |

### C99

```c
#include <string.h>
#include <stdio.h>

int main()
{
    int T, N, Q, x, consulta, marmores[10000];

    T = 0;
    while (scanf("%d %d", &N, &Q))
    {
        if (!N && !Q)
        {
            break;
        }

        memset(marmores, 0, sizeof(marmores));

        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &x);

            marmores[x] += 1;
        }

        for (int i = 1; i < 10000; ++i)
        {
            marmores[i] += marmores[i - 1];
        }

        printf("CASE# %d:\n", ++T);
        for (int i = 0; i < Q; ++i)
        {
            scanf("%d", &consulta);

            if (marmores[consulta] == marmores[consulta - 1])
            {
                printf("%d not found\n", consulta);
            }
            else
            {
                printf("%d found at %d\n", consulta, marmores[consulta - 1] + 1);
            }
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int T, N, Q, x;
    vector<int> marmores;

    T = 0;
    while (cin >> N >> Q)
    {
        if (!N && !Q)
            break;

        marmores.assign(10000, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> x;

            marmores[x] += 1;
        }

        for (int i = 1; i < 10000; ++i)
        {
            marmores[i] += marmores[i - 1];
        }

        cout << "CASE# " << ++T << ":" << endl;
        for (int i = 0; i < Q; ++i)
        {
            cin >> x;

            if (marmores[x] == marmores[x - 1])
                cout << x << " not found" << endl;
            else
                cout << x << " found at " << marmores[x - 1] + 1 << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        int T = 0;
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            string[] numeros = entrada.Trim().Split(' ');

            int N = int.Parse(numeros[0]);
            int Q = int.Parse(numeros[1]);

            if (N == 0 && Q == 0)
            {
                break;
            }

            int[] marmores = new int[10000];
            for (int i = 0; i < N; ++i)
            {
                marmores[int.Parse(Console.ReadLine())] += 1;
            }

            for (int i = 1; i < 10000; ++i)
            {
                marmores[i] += marmores[i - 1];
            }

            Console.WriteLine($"CASE# {++T}:");
            for (int i = 0; i < Q; ++i)
            {
                int x = int.Parse(Console.ReadLine());

                if (marmores[x] == marmores[x - 1])
                {
                    Console.WriteLine($"{x} not found");
                }
                else
                {
                    Console.WriteLine($"{x} found at {marmores[x - 1] + 1}");
                }
            }
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = 0;
        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            int N = Integer.parseInt(entrada[0]);
            int Q = Integer.parseInt(entrada[1]);

            if (N == 0 && Q == 0) {
                break;
            }

            int[] marmores = new int[10000];
            for (int i = 0; i < N; ++i) {
                marmores[Integer.parseInt(in.readLine())] += 1;
            }

            for (int i = 1; i < 10000; ++i) {
                marmores[i] += marmores[i - 1];
            }

            System.out.printf("CASE# %d:\n", ++T);
            for (int i = 0; i < Q; ++i) {
                int x = Integer.parseInt(in.readLine());

                if (marmores[x] == marmores[x - 1]) {
                    System.out.printf("%d not found\n", x);
                } else {
                    System.out.printf("%d found at %d\n", x, marmores[x - 1] + 1);
                }
            }
        }
    }
}
```

### JavaScript 12.18

```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

lines.pop();

let T = 0, p = 0;
let marmores = Array(10000);
while (p < lines.length) {
    let [N, Q] = lines[p++].trim().split(' ').map((x) => parseInt(x));

    marmores.fill(0);
    for (let i = 0; i < N; ++i) {
        let x = parseInt(lines[p++].trim());

        marmores[x] += 1;
    }

    for (let i = 1; i < 10000; ++i) {
        marmores[i] += marmores[i - 1];
    }

    console.log(`CASE# ${++T}:`);
    for (let i = 0; i < Q; ++i) {
        x = parseInt(lines[p++].trim());

        if (marmores[x] === marmores[x - 1])
            console.log(`${x} not found`);
        else
            console.log(`${x} found at ${marmores[x - 1] + 1}`);
    }
}
```

### Python 3.9

```python
T = 1
while True:
    try:
        N, Q = [int(x) for x in input().strip().split(' ')]

        if(N == 0 and Q == 0):
            break

        marmores = [0 for _ in range(10000)]
        for _ in range(N):
            marmores[int(input())] += 1

        for i in range(1, 10000):
            marmores[i] += marmores[i - 1]

        print(f'CASE# {T}:')
        T += 1
        for _ in range(Q):
            x = int(input())

            if(marmores[x] == marmores[x - 1]):
                print(f'{x} not found')
            else:
                print(f'{x} found at {marmores[x - 1] + 1}')
    except EOFError:
        break
```