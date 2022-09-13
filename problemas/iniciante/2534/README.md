# 2534 - Exame Geral

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2534)

## Solução

Ordene as notas e para cada consulta retorne a posição equivalente.

> Na linguagem Java, eu decidi ordenar em ordem crescente mesmo e fazer as consultas de trás pra frente para evitar a fadiga.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int comp(const void *a, const void *b)
{
    return *(int *)b - *(int *)a;
}

int main()
{
    int N, Q;
    int P[101];

    while (scanf("%d %d", &N, &Q) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            scanf("%d", &P[i]);
        }

        qsort(P, N, sizeof(int), comp);

        for (int i = 0; i < Q; ++i)
        {
            scanf("%d", &N);
            printf("%d\n", P[N - 1]);
        }
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
    int N, Q;
    vector<int> P;

    while (cin >> N >> Q)
    {
        P.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> P[i];
        }

        sort(P.begin(), P.end(), greater<int>());

        for (int i = 0; i < Q; ++i)
        {
            cin >> N;
            cout << P[N - 1] << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static int comp(int a, int b){
        return b - a;
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            List<int> P = new List<int>();
            for(int i = 0; i < numeros[0]; ++i){
                P.Add(int.Parse(Console.ReadLine()));
            }

            P.Sort(comp);

            for(int i = 0; i < numeros[1]; ++i){
                int N = int.Parse(Console.ReadLine());
                Console.WriteLine(P[N - 1]);
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
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int Q = Integer.parseInt(entrada[1]);

            int[] P = new int[N];
            for (int i = 0; i < N; ++i) {
                P[i] = Integer.parseInt(in.readLine());
            }

            Arrays.sort(P);

            for (int i = 0; i < Q; ++i) {
                int posicao = Integer.parseInt(in.readLine());
                System.out.println(P[N - posicao]);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => b - a;

while (lines.length) {
    let [N, Q] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let P = [];
    for (let i = 0; i < N; ++i) {
        P.push(lines.shift());
    }

    P.sort(comp);

    for (let i = 0; i < Q; ++i) {
        N = parseInt(lines.shift());
        console.log(P[N - 1]);
    }
}
```

### Python 3.9

```py
while True:
    try:
        N, Q = [int(x) for x in input().strip().split(' ')]

        P = []
        for _ in range(N):
            P.append(int(input()))

        P.sort(reverse=True)

        for _ in range(Q):
            N = int(input())
            print(P[N - 1])
    except EOFError:
        break
```