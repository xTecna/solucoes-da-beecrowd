# 2663 - Fase

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2663)

## Solução

Aqui é preciso ordenar os números da maior até a menor pontuação e ver quem está na posição `K`. Após isso, ir avançando no vetor enquanto o valor dele ainda for o mesmo da pessoa na posição, ou seja, todo o mundo que tirar a mesma pontuação da pessoa `K` também está classificada. O único cuidado que você deve tomar é não ultrapassar o tamanho do vetor, caso em que todas as pessoas após à pessoa `K` também tiraram a mesma pontuação.

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
    int N, K;
    int pontos[1001];

    scanf("%d\n%d\n", &N, &K);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d\n", &pontos[i]);
    }
    qsort(pontos, N, sizeof(int), comp);

    int resposta = K;
    while (resposta < N && pontos[resposta] == pontos[K - 1])
    {
        ++resposta;
    }

    printf("%d\n", resposta);

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
    int N, K;
    vector<int> pontos;

    cin >> N >> K;
    pontos.assign(N, 0);
    for (int i = 0; i < N; ++i)
    {
        cin >> pontos[i];
    }
    sort(pontos.begin(), pontos.end(), greater<int>());

    int resposta = K;
    while (resposta < N && pontos[resposta] == pontos[K - 1])
    {
        ++resposta;
    }

    cout << resposta << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;

class URI {
    static int comp(int a, int b){
        return b - a;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        int K = int.Parse(Console.ReadLine());

        List<int> pontos = new List<int>();
        for(int i = 0; i < N; ++i){
            pontos.Add(int.Parse(Console.ReadLine()));
        }
        pontos.Sort(comp);

        int resposta = K;
        while(resposta < N && pontos[resposta] == pontos[K - 1]){
            ++resposta;
        }

        Console.WriteLine(resposta);
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

        int N = Integer.parseInt(in.readLine());
        int K = Integer.parseInt(in.readLine());

        int[] pontos = new int[N];
        for (int i = 0; i < N; ++i) {
            pontos[i] = Integer.parseInt(in.readLine());
        }

        Arrays.sort(pontos);
        int resposta = N - K - 1;
        while (resposta > -1 && pontos[resposta] == pontos[N - K]) {
            --resposta;
        }

        System.out.println(N - resposta - 1);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => b - a;

let N = parseInt(lines.shift());
let K = parseInt(lines.shift());

pontos = [];
for (let i = 0; i < N; ++i) {
    pontos.push(parseInt(lines.shift()));
}
pontos.sort(comp);

let resposta = K;
while (resposta < N && pontos[resposta] === pontos[K - 1]) {
    ++resposta;
}
console.log(resposta);
```

### Python 3.9

```py
N = int(input())
K = int(input())

pontos = []
for _ in range(N):
    pontos.append(int(input()))
pontos.sort(reverse=True)

resposta = K
while(resposta < N and pontos[resposta] == pontos[K - 1]):
    resposta += 1
print(resposta)
```