# 1032 - O Primo de Josephus

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1032)

## Solução

Vide problema [1030 - A Lenda de Flavious Josephus](../1030/README.md) para entender melhor o problema a ser resolvido e a nossa abordagem.

A diferença dessa solução é que os pulos agora não são mais fixos, eles são sempre o próximo número primo. Para isso, é interessante conseguir uma lista com todos os números primos que vamos precisar, no caso, nosso interesse é em conseguir os 3501 primeiros primos. Com um pouco de Google, descobri que o 3501º número primo é 36211, então o nosso limite do vetor do [Crivo de Eratóstenes](../../../base-teorica/matematica/primos/README.md#crivo-de-eratóstenes---complexidade-om-log-log-m-para-todos-os-números-entre-1-e-m-com-m-até-107) é 36212 e o nosso vetor de primos terá 3501 elementos.

Além de tudo isso, também incluí [memorização](../../../base-teorica/paradigmas/memorizacao/README.md) em quase todas as soluções porque como são diversos casos de teste, alguns podem se beneficiar de soluções que já foram calculadas pelos demais.

### C99

```c
#include <stdio.h>
#define PRIMO_LIMITE 32612
#define LIMITE 3502

int C[PRIMO_LIMITE], primos[LIMITE], F[LIMITE][LIMITE];

void Crivo()
{
    int n_primos = 0;

    for (int i = 0; i < PRIMO_LIMITE; ++i)
    {
        C[i] = 1;
    }
    C[1] = 0;
    primos[n_primos++] = 2;

    for (int i = 4; i < PRIMO_LIMITE; i += 2)
    {
        C[i] = 0;
    }

    for (int i = 3; i < PRIMO_LIMITE; i += 2)
    {
        if (C[i] == 1)
        {
            primos[n_primos++] = i;
            for (int j = i * 3; j < PRIMO_LIMITE; j += 2 * i)
            {
                C[j] = 0;
            }
        }
    }
}

int josephus(int n, int k)
{
    if (F[n][k] == -1)
    {
        F[n][k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
    }
    return F[n][k];
}

int main()
{
    int n;

    Crivo();

    for (int i = 0; i < LIMITE; ++i)
    {
        for (int j = 0; j < LIMITE; ++j)
        {
            F[i][j] = -1;
        }
    }

    for (int i = 0; i < LIMITE; ++i)
    {
        F[1][i] = 1;
    }

    while (scanf("%d", &n) != EOF)
    {
        if (n == 0)
        {
            break;
        }

        printf("%d\n", josephus(n, 0));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <vector>
#define PRIMO_LIMITE 32612
#define LIMITE 3502

using namespace std;

vector<bool> C;
vector<int> primos;
int F[LIMITE][LIMITE];

void Crivo()
{
    C.assign(PRIMO_LIMITE, true);
    C[1] = false;
    primos.push_back(2);

    for (int i = 4; i < PRIMO_LIMITE; i += 2)
    {
        C[i] = false;
    }

    for (int i = 3; i < PRIMO_LIMITE; i += 2)
    {
        if (C[i])
        {
            primos.push_back(i);
            for (int j = i * 3; j < PRIMO_LIMITE; j += 2 * i)
            {
                C[j] = false;
            }
        }
    }
}

int josephus(int n, int k)
{
    if (F[n][k] == -1)
    {
        F[n][k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
    }
    return F[n][k];
}

int main()
{
    int n;

    Crivo();

    for (int i = 0; i < LIMITE; ++i)
    {
        for (int j = 0; j < LIMITE; ++j)
        {
            F[i][j] = -1;
        }
    }

    for (int i = 0; i < LIMITE; ++i)
    {
        F[1][i] = 1;
    }

    while (cin >> n)
    {
        if (n == 0)
        {
            break;
        }

        cout << josephus(n, 0) << endl;
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
    const int LIMITE = 3502;
    const int PRIMO_LIMITE = 32612;

    static int[,] F;
    static bool[] C;
    static List<int> primos;

    static void Crivo()
    {
        C = new bool[PRIMO_LIMITE];
        C[0] = false;
        C[1] = false;
        C[2] = true;

        primos = new List<int>();
        primos.Add(2);

        for (int i = 3; i < PRIMO_LIMITE; ++i)
        {
            C[i] = (i % 2 == 1);
        }

        for (int i = 3; i < PRIMO_LIMITE; i += 2)
        {
            if (C[i])
            {
                primos.Add(i);
                for (int j = 3 * i; j < PRIMO_LIMITE; j += 2 * i)
                {
                    C[j] = false;
                }
            }
        }
    }

    static int josephus(int n, int k)
    {
        if (F[n, k] == -1)
        {
            F[n, k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
        }
        return F[n, k];
    }

    static void Main(string[] args)
    {
        string entrada;

        Crivo();

        F = new int[LIMITE, LIMITE];
        for (int i = 0; i < LIMITE; ++i)
        {
            for (int j = 0; j < LIMITE; ++j)
            {
                F[i, j] = -1;
            }
        }

        for (int i = 0; i < LIMITE; ++i)
        {
            F[1, i] = 1;
        }

        while ((entrada = Console.ReadLine()) != null)
        {
            int n = int.Parse(entrada);

            if(n == 0){
                break;
            }

            Console.WriteLine(josephus(n, 0));
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
    public static int LIMITE = 3502;
    public static int PRIMO_LIMITE = 32612;

    public static int[][] F;
    public static boolean[] C;
    public static int[] primos;

    public static void Crivo() {
        C = new boolean[PRIMO_LIMITE];
        C[0] = false;
        C[1] = false;
        C[2] = true;

        int n_primos = 0;
        primos = new int[LIMITE];
        primos[n_primos++] = 2;

        for (int i = 3; i < PRIMO_LIMITE; ++i) {
            C[i] = (i % 2 == 1);
        }

        for (int i = 3; i < PRIMO_LIMITE; i += 2) {
            if (C[i]) {
                primos[n_primos++] = i;

                for (int j = 3 * i; j < PRIMO_LIMITE; j += 2 * i) {
                    C[j] = false;
                }
            }
        }
    }

    public static int josephus(int n, int k) {
        if (F[n][k] == -1) {
            F[n][k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
        }
        return F[n][k];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        Crivo();

        F = new int[LIMITE][LIMITE];
        for (int i = 0; i < LIMITE; ++i) {
            for (int j = 0; j < LIMITE; ++j) {
                F[i][j] = -1;
            }
        }

        for (int i = 0; i < LIMITE; ++i) {
            F[1][i] = 1;
        }

        while (in.ready()) {
            int n = Integer.parseInt(in.readLine());

            if (n == 0) {
                break;
            }

            System.out.println(josephus(n, 0));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');
lines.pop();

const LIMITE = 3502;
const PRIMO_LIMITE = 32612;

let F = new Array(LIMITE);
let C = new Array(PRIMO_LIMITE);
let primos = [];

const Crivo = () => {
    C[0] = false;
    C[1] = false;

    C[2] = true;
    primos.push(2);

    for (let i = 3; i < PRIMO_LIMITE; ++i) {
        C[i] = (i % 2 === 1);
    }

    for (let i = 3; i < PRIMO_LIMITE; ++i) {
        if (C[i]) {
            primos.push(i);
            for (let j = 3 * i; j < PRIMO_LIMITE; j += 2 * i) {
                C[j] = false;
            }
        }
    }
};

const josephus = (n, k) => {
    if (F[n][k] === -1) {
        F[n][k] = (josephus(n - 1, k + 1) + primos[k] - 1) % n + 1;
    }
    return F[n][k];
};

Crivo();

for (let i = 0; i < LIMITE; ++i) {
    F[i] = new Array(LIMITE);
    for (let j = 0; j < LIMITE; ++j) {
        F[i][j] = -1;
    }
}

for (let i = 0; i < LIMITE; ++i) {
    F[1][i] = 1;
}

while (lines.length) {
    let n = parseInt(lines.shift());

    console.log(josephus(n, 0));
}
```

### Python 3.9

```py
LIMITE = 3502
PRIMO_LIMITE = 32612

C = [True for _ in range(PRIMO_LIMITE)]
primos = []


def Crivo(C, primos):
    C[0] = False
    C[1] = False
    primos.append(2)

    for i in range(4, PRIMO_LIMITE, 2):
        C[i] = False

    for i in range(3, PRIMO_LIMITE, 2):
        if(C[i]):
            primos.append(i)
            for j in range(3 * i, PRIMO_LIMITE, 2 * i):
                C[j] = False


def josephus(F, n, k):
    if(F[n][k] == -1):
        F[n][k] = (josephus(F, n - 1, k + 1) + primos[k] - 1) % n + 1
    return F[n][k]


Crivo(C, primos)

F = [[-1 for _ in range(LIMITE)] for _ in range(LIMITE)]
for i in range(LIMITE):
    F[1][i] = 1

while True:
    try:
        n = int(input())

        if(n == 0):
            break

        k = n - 1
        sobrevivente = 0
        for j in range(1, n + 1):
            sobrevivente = (sobrevivente + primos[k]) % j
            k -= 1

        print(sobrevivente + 1)
    except EOFError:
        break
```