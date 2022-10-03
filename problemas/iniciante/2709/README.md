# 2709 - As Moedas de Robbie

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2709)

## Solução

Vide [números primos](../../../base-teorica/matematica/primos/README.md) para conferir como checar se um número é primo ou não. Com isso, você pode somar os números pulando de $N$ em $N$ de trás pra frente, começando na moeda $M - 1$ e descendo no `for`. Depois de somar, basta ver se o número específico é primo ou não. O limite do crivo pode ser $10000$ porque o número máximo de moedas é $20$ e o valor máximo das moedas é $500$, o que dá uma soma máxima possível de $10000$.

### C99

```c
#include <string.h>
#include <stdio.h>

int C[10001];

void Crivo()
{
    for (int i = 0; i < 10001; ++i)
    {
        C[i] = i % 2;
    }

    C[1] = 0;
    C[2] = 1;

    for (int i = 3; i < 10001; i += 2)
        if (C[i] == 1)
            for (int j = 3 * i; j < 10001; j += 2 * i)
                C[j] = 0;
}

int main()
{
    int M, N;
    int V[20];

    Crivo();

    while (scanf("%d", &M) != EOF)
    {
        for (int i = 0; i < M; ++i)
        {
            scanf("%d", &V[i]);
        }

        scanf("%d", &N);

        int soma = 0;
        for (int i = M - 1; i > -1; i -= N)
        {
            soma += V[i];
        }

        if (C[soma])
            printf("You’re a coastal aircraft, Robbie, a large silver aircraft.\n");
        else
            printf("Bad boy! I’ll hit you.\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstring>
#include <vector>

using namespace std;

bool C[10001];

void Crivo()
{
    memset(C, true, sizeof(C));
    C[0] = false;
    C[1] = false;

    for (int i = 4; i < 10001; i += 2)
    {
        C[i] = false;
    }

    for (int i = 3; i < 10001; ++i)
    {
        if (C[i])
        {
            for (int j = 3 * i; j < 10001; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

int main()
{
    vector<int> V;
    int M, N, soma;

    Crivo();

    while (cin >> N)
    {
        V.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> V[i];
        }

        cin >> M;

        soma = 0;
        for (int i = N - 1; i > -1; i -= M)
        {
            soma += V[i];
        }

        cout << (string)(C[soma] ? "You’re a coastal aircraft, Robbie, a large silver aircraft." : "Bad boy! I’ll hit you.") << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static bool[] C { get; set; }

    static void Crivo(){
        C = new bool[10001];

        for(int i = 0; i < 10001; ++i)
            C[i] = (i % 2 == 1);
        C[1] = false;
        C[2] = true;

        for(int i = 0; i < 10001; ++i)
            if(C[i])
                for(int j = 3 * i; j < 10001; j += 2 * i)
                C[j] = false;
    }

    static void Main(string[] args) {
        Crivo();

        int[] moedas;
        string entrada;
        while(!string.IsNullOrEmpty(entrada = Console.ReadLine())){
            int M = int.Parse(entrada);
            
            moedas = new int[M];
            for(int i = 0; i < M; ++i)
                moedas[i] = int.Parse(Console.ReadLine());
            
            int N = int.Parse(Console.ReadLine());

            int soma = 0;
            for(int i = M - 1; i > -1; i -= N)
                soma += moedas[i];
            
            if(C[soma])
                Console.WriteLine("You’re a coastal aircraft, Robbie, a large silver aircraft.");
            else
                Console.WriteLine("Bad boy! I’ll hit you.");
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
    public static boolean[] C;

    public static void Crivo() {
        C = new boolean[10001];

        for (int i = 0; i < 10001; ++i) {
            C[i] = i % 2 == 1;
        }

        C[1] = false;
        C[2] = true;

        for (int i = 3; i < 10001; i += 2) {
            if (C[i]) {
                for (int j = 3 * i; j < 10001; j += 2 * i) {
                    C[j] = false;
                }
            }
        }
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Crivo();

        while (in.ready()) {
            int M = Integer.parseInt(in.readLine().trim());

            int[] V = new int[M];
            for (int i = 0; i < M; ++i) {
                V[i] = Integer.parseInt(in.readLine().trim());
            }

            int N = Integer.parseInt(in.readLine().trim());

            int soma = 0;
            for (int i = M - 1; i > -1; i -= N) {
                soma += V[i];
            }

            if (C[soma]) {
                System.out.println("You’re a coastal aircraft, Robbie, a large silver aircraft.");
            } else {
                System.out.println("Bad boy! I’ll hit you.");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const Crivo = (C) => {
    for (let i = 0; i < 10001; ++i) {
        C[i] = i % 2;
    }
    C[1] = 0;
    C[2] = 1;

    for (let i = 3; i < 10001; i += 2) {
        if (C[i]) {
            for (let j = 3 * i; j < 10001; j += 2 * i) {
                C[j] = 0;
            }
        }
    }
};

C = [];
Crivo(C);

while (lines.length) {
    let M = parseInt(lines.shift());

    let V = [];
    for (let i = 0; i < M; ++i) {
        V[i] = parseInt(lines.shift());
    }

    let N = parseInt(lines.shift());

    let soma = 0;
    for (let i = M - 1; i > -1; i -= N) {
        soma += V[i];
    }

    if (C[soma])
        console.log("You’re a coastal aircraft, Robbie, a large silver aircraft.");
    else
        console.log("Bad boy! I’ll hit you.");
}
```

### Python 3.9

```py
def Crivo():
    C = [i % 2 for i in range(10001)]

    C[1] = 0
    C[2] = 1

    for i in range(3, 10001, 2):
        if (C[i]):
            for j in range(3 * i, 10001, 2 * i):
                C[j] = 0

    return C


C = Crivo()

while True:
    try:
        M = int(input())

        V = []
        for _ in range(M):
            V.append(int(input()))

        N = int(input())

        soma = 0
        for i in range(M - 1, -1, -N):
            soma += V[i]

        if(C[soma]):
            print('You’re a coastal aircraft, Robbie, a large silver aircraft.')
        else:
            print('Bad boy! I’ll hit you.')
    except EOFError:
        break
```