# 2168 - Crepúsculo em Portland

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2168)

## Solução

Repare que apesar do primeiro valor ser $N$, o que vem depois é uma matriz $N + 1 \times N + 1$. A partir daí, vemos que para uma determinada esquina em $(x, y)$ ser segura, é necessário que tenham duas ou mais câmeras entre as posições $(x, y)$, $(x + 1, y)$, $(x, y + 1)$ e $(x + 1, y + 1)$.

Abaixo eu sobrepus uma das entradas com uma das saídas para que você possa ver melhor qual quadrado influencia cada esquina.

|   |       |   |       |   |
|---|-------|---|-------|---|
| 1 |       | 0 |       | 0 |
|   | **S** |   | **U** |   |
| 1 |       | 1 |       | 0 |
|   | **S** |   | **S** |   |
| 0 |       | 0 |       | 1 |

### C99

```c
#include <stdio.h>

int mapa[101][101];

int segura(int x, int y)
{
    return mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2;
}

int main()
{
    int N;

    scanf("%d", &N);
    for (int i = 0; i < N + 1; ++i)
    {
        for (int j = 0; j < N + 1; ++j)
        {
            scanf("%d", &mapa[i][j]);
        }
    }

    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < N; ++j)
        {
            printf("%c", segura(i, j) ? 'S' : 'U');
        }
        printf("\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int mapa[101][101];

bool segura(int x, int y)
{
    return mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2;
}

int main()
{
    int N;

    cin >> N;
    for (int i = 0; i < N + 1; ++i)
    {
        for (int j = 0; j < N + 1; ++j)
        {
            cin >> mapa[i][j];
        }
    }

    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < N; ++j)
        {
            cout << (segura(i, j) ? 'S' : 'U');
        }
        cout << endl;
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
    static int[,] mapa;

    static bool segura(int x, int y){
        return mapa[x, y] + mapa[x + 1, y] + mapa[x, y + 1] + mapa[x + 1, y + 1] >= 2;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        mapa = new int[N + 1, N + 1];
        for(int i = 0; i < N + 1; ++i){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            for(int j = 0; j < N + 1; ++j){
                mapa[i, j] = entrada[j];
            }
        }

        for(int i = 0; i < N; ++i){
            for(int j = 0; j < N; ++j){
                Console.Write(segura(i, j) ? 'S' : 'U');
            }
            Console.WriteLine("");
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
    public static int[][] mapa;

    public static boolean segura(int x, int y) {
        return mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        mapa = new int[N + 1][N + 1];
        for (int i = 0; i < N + 1; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            for (int j = 0; j < N + 1; ++j) {
                mapa[i][j] = Integer.parseInt(entrada[j]);
            }
        }

        for (int i = 0; i < N; ++i) {
            for (int j = 0; j < N; ++j) {
                System.out.printf("%c", segura(i, j) ? 'S' : 'U');
            }
            System.out.println("");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let mapa = [];
const segura = (x, y) => mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2;

let N = parseInt(lines.shift());
for (let i = 0; i < N + 1; ++i) {
    mapa.push(lines.shift().trim().split(' ').map(x => parseInt(x)));
}

for (let i = 0; i < N; ++i) {
    linha = '';
    for (let j = 0; j < N; ++j) {
        linha += (segura(i, j) ? 'S' : 'U');
    }
    console.log(linha);
}
```

### Python 3.9

```py
mapa = []


def segura(x, y):
    return mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2


N = int(input())
for _ in range(N + 1):
    mapa.append([int(x) for x in input().strip().split(' ')])

for i in range(N):
    for j in range(N):
        print('S' if segura(i, j) else 'U', end='')
    print('')
```