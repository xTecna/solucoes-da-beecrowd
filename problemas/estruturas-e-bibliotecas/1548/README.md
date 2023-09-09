# 1548 - Fila do Recreio

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1548)

## Solução

Para este problema, basta checar quantos elementos do vetor ordenado são iguais ao do vetor original nas mesmas posições, ou seja, em quantas posições tem uma pessoa que não trocou de lugar. Caso tenha dúvidas sobre como a ordenação foi empregada aqui, veja a nossa página sobre [ordenação](../../../base-teorica/estruturas-e-bibliotecas/ordenacao/README.md).

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
    int N, M, resposta;
    int original[1000], ordenado[1000];

    scanf("%d", &N);

    for (int k = 0; k < N; ++k)
    {
        scanf("%d", &M);

        for (int i = 0; i < M; ++i)
        {
            scanf("%d", &original[i]);
            ordenado[i] = original[i];
        }

        qsort(ordenado, M, sizeof(int), comp);

        resposta = 0;
        for (int i = 0; i < M; ++i)
        {
            if (original[i] == ordenado[i])
                ++resposta;
        }

        printf("%d\n", resposta);
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
    int N, M, P, resposta;
    vector<int> original, ordenado;

    cin >> N;

    for (int k = 0; k < N; ++k)
    {
        cin >> M;

        original.assign(M, 0);
        for (int i = 0; i < M; ++i)
        {
            cin >> original[i];
        }

        ordenado = original;
        sort(ordenado.begin(), ordenado.end(), greater<int>());

        resposta = 0;
        for (int i = 0; i < M; ++i)
        {
            if (original[i] == ordenado[i])
                ++resposta;
        }

        cout << resposta << endl;
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
    static int Comp(int a, int b){
        return b - a;
    }
    
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            int M = int.Parse(Console.ReadLine());
            
            List<int> alunos = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            List<int> ordenada = new List<int>(alunos);
            
            ordenada.Sort(Comp);
            
            int resposta = 0;
            for(int i = 0; i < M; ++i){
                if(alunos[i] == ordenada[i]){
                    resposta += 1;
                }
            }
            Console.WriteLine(resposta);
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.Collections;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for(int k = 0; k < N; ++k){
            int M = Integer.parseInt(in.readLine());

            String[] alunos = in.readLine().trim().split(" ");
            Integer[] notas = new Integer[M];
            for(int i = 0; i < M; ++i){
                notas[i] = Integer.parseInt(alunos[i]);
            }

            Arrays.sort(notas, Collections.reverseOrder());

            int resposta = 0;
            for(int i = 0; i < M; ++i){
                if(Integer.parseInt(alunos[i]) == notas[i]){
                    resposta += 1;
                }
            }
            System.out.println(resposta);
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const comp = (a, b) => {
    return b - a;
};

let N = parseInt(lines.shift().trim());

while(lines.length){
    let M = parseInt(lines.shift().trim());

    let original = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let ordenado = [...original];
    ordenado.sort(comp);

    let resposta = original.reduce((acc, cur, i) => original[i] === ordenado[i] ? acc + 1 : acc, 0);

    console.log(resposta);
}
```

### Python 3.9
```py
N = int(input())

for _ in range(N):
    M = int(input())

    original = [int(x) for x in input().split(' ')]

    ordenado = sorted(original, reverse=True)

    resposta = 0
    for i in range(M):
        if(original[i] == ordenado[i]):
            resposta += 1

    print(resposta)

```