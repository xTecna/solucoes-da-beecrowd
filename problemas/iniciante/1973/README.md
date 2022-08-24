# 1973 - Jornada nas Estrelas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1973)

## Solução

A ideia desse algoritmo é simular o processo do irmão em Estrela 1 começando em seu próprio sítio e seguindo a trajetória da seguinte forma, considerando que os sítios sejam todos numa mesma reta horizontal:

1. Rouba um carneiro do sítio atual, se tiver carneiro
2. Se o número de carneiros antes do roubo era ímpar, vai para direita, senão vai para esquerda
3. Se ele cair fora da linha, para o processo, senão volta para o passo 1

Perceba que o passo 2 pode ser reescrito como "se o número de carneiros agora é par, vai para direita, senão vai para esquerda", mas eu não pensei nisso na época que eu escrevi os códigos abaixo.

Você contabilizar o número de carneiros não roubados somando todos os elementos que sobraram no final ou considerando que nenhum carneiro foi roubado a princípio e diminuir de um em um caso haja um roubo, fica a seu critério.

### C99

```c
#include <stdio.h>

int ovelhas[1000000], visitados[1000000];

int main()
{
    int N, estrelas;
    long long int naoRoubados;

    scanf("%d", &N);

    int i;
    naoRoubados = 0;
    for (i = 0; i < N; ++i)
    {
        scanf("%d", &ovelhas[i]);

        visitados[i] = 0;
        naoRoubados += ovelhas[i];
    }

    i = 0;
    estrelas = 0;
    while (i > -1 && i < N)
    {
        if (!visitados[i])
        {
            visitados[i] = 1;
            ++estrelas;
        }

        int antes = ovelhas[i];
        if (ovelhas[i] > 0)
        {
            ovelhas[i] -= 1;
            --naoRoubados;
        }

        if (antes % 2)
            ++i;
        else
            --i;
    }

    printf("%d %lld\n", estrelas, naoRoubados);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstring>
#include <vector>

using namespace std;

int main()
{
    bool visitado[1000001];
    vector<int> V;
    int N, estrelas;
    unsigned long long int soma;

    cin >> N;
    V.assign(N, 0);
    memset(visitado, false, sizeof(visitado));

    soma = 0;
    for (int i = 0; i < N; ++i)
    {
        cin >> V[i];
        soma += V[i];
    }

    int i = 0;
    estrelas = 0;
    while (i > -1 && i < N)
    {
        if (!visitado[i])
        {
            visitado[i] = true;
            estrelas += 1;
        }

        if (V[i] > 0)
        {
            V[i] -= 1;
            soma -= 1;
        }
        else
        {
            break;
        }

        if (V[i] % 2 == 0)
        {
            i += 1;
        }
        else
        {
            i -= 1;
        }
    }

    cout << estrelas << ' ' << soma << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Linq;
using System.Collections.Generic;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        List<int> ovelhas = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        long naoRoubados = 0;
        for(int k = 0; k < N; ++k){
            naoRoubados += ovelhas[k];
        }
        
        int i = 0, estrelas = 0;
        HashSet<int> visitados = new HashSet<int>();
        while(-1 < i && i < N){
            if(!visitados.Contains(i)){
                visitados.Add(i);
                ++estrelas;
            }

            long antes = ovelhas[i];
            if(ovelhas[i] > 0){
                --ovelhas[i];
                --naoRoubados;
            }

            if(antes % 2 == 1)
                ++i;
            else
                --i;
        }

        Console.WriteLine($"{estrelas} {naoRoubados}");
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

        int N = Integer.parseInt(in.readLine());
        String[] entrada = in.readLine().trim().split(" ");
        int[] ovelhas = new int[N];

        long naoRoubados = 0;
        for (int k = 0; k < N; ++k) {
            ovelhas[k] = Integer.parseInt(entrada[k]);
            naoRoubados += ovelhas[k];
        }

        int i = 0, estrelas = 0;
        boolean[] visitados = new boolean[N];
        while (-1 < i && i < N) {
            if (!visitados[i]) {
                visitados[i] = true;
                ++estrelas;
            }

            long antes = ovelhas[i];
            if (ovelhas[i] > 0) {
                --ovelhas[i];
                --naoRoubados;
            }

            if (antes % 2 == 1) {
                ++i;
            } else {
                --i;
            }
        }

        System.out.printf("%d %d\n", estrelas, naoRoubados);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let ovelhas = lines.shift().trim().split(' ').map((x) => parseInt(x));
let naoRoubados = ovelhas.reduce((acc, cur) => acc + cur, 0);

let visitados = new Set();
let i = 0, estrelas = 0;
while (i > -1 && i < N) {
    if (!visitados.has(i)) {
        visitados.add(i);
        ++estrelas;
    }

    let antes = ovelhas[i];
    if (ovelhas[i] > 0) {
        ovelhas[i]--;
        --naoRoubados;
    }

    if (antes % 2)
        ++i;
    else
        --i;
}

console.log(`${estrelas} ${naoRoubados}`);
```

### Python 3.9

```py
N = int(input())
ovelhas = [int(x) for x in input().strip().split(' ')]

i = 0
estrelas = 0
visitados = set()
naoRoubados = sum(ovelhas)
while(-1 < i < N):
    if(not i in visitados):
        visitados.add(i)
        estrelas += 1

    antes = ovelhas[i]
    if(ovelhas[i] > 0):
        ovelhas[i] -= 1
        naoRoubados -= 1

    if(antes % 2):
        i += 1
    else:
        i -= 1

print(f'{estrelas} {naoRoubados}')
```