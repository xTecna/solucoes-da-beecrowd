# 2163 - O Despertar da Força

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2163)

## Solução

> Infelizmente não temos a implementação em Python deste problema.

Confira a função `temSabre` para ver como eu usei dois _loops_ para percorrer todas as casas vizinhas de um determinado quadrado. Também note que eu só procuro sabre nos quadrados fora das bordas, os _loops_ vão da posição $1$ até $N - 2$ inclusive.

### C99

```c
#include <stdio.h>

int mapa[1001][1001];

int temSabre(int x, int y)
{
    for (int i = -1; i < 2; ++i)
    {
        for (int j = -1; j < 2; ++j)
        {
            if (i == 0 && j == 0)
            {
                continue;
            }

            if (mapa[x + i][y + j] != 7)
            {
                return 0;
            }
        }
    }

    return mapa[x][y] == 42;
}

int main()
{
    int N, M;

    scanf("%d %d", &N, &M);
    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < M; ++j)
        {
            scanf("%d", &mapa[i][j]);
        }
    }

    int x = 0, y = 0;
    for (int i = 1; i < N - 1; ++i)
    {
        for (int j = 1; j < M - 1; ++j)
        {
            if (temSabre(i, j))
            {
                x = i + 1, y = j + 1;
                break;
            }
        }
    }

    printf("%d %d\n", x, y);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int mapa[1001][1001];

bool temSabre(int x, int y)
{
    for (int i = -1; i < 2; ++i)
    {
        for (int j = -1; j < 2; ++j)
        {
            if (i == 0 && j == 0)
            {
                continue;
            }

            if (mapa[x + i][y + j] != 7)
            {
                return false;
            }
        }
    }

    return mapa[x][y] == 42;
}

int main()
{
    int N, M;

    cin >> N >> M;
    for (int i = 0; i < N; ++i)
    {
        for (int j = 0; j < M; ++j)
        {
            cin >> mapa[i][j];
        }
    }

    int x = 0, y = 0;
    for (int i = 1; i < N - 1; ++i)
    {
        for (int j = 1; j < M - 1; ++j)
        {
            if (temSabre(i, j))
            {
                x = i + 1, y = j + 1;
                break;
            }
        }
    }

    cout << x << ' ' << y << endl;

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

    static bool temSabre(int x, int y){
        for(int i = -1; i < 2; ++i){
            for(int j = -1; j < 2; ++j){
                if(i == 0 && j == 0){
                    continue;
                }

                if(mapa[x + i, y + j] != 7){
                    return false;
                }
            }
        }

        return mapa[x, y] == 42;
    }

    static void Main(string[] args) {
        List<int> dimensoes = Console.ReadLine().Trim().Split(' ').Select(z => int.Parse(z)).ToList();
        mapa = new int[dimensoes[0], dimensoes[1]];

        for(int i = 0; i < dimensoes[0]; ++i){
            List<int> entrada = Console.ReadLine().Trim().Split(' ').Select(z => int.Parse(z)).ToList();
            for(int j = 0; j < entrada.Count(); ++j){
                mapa[i, j] = entrada[j];
            }
        }

        int x = 0;
        int y = 0;
        for(int i = 1; i < dimensoes[0] - 1; ++i){
            for(int j = 1; j < dimensoes[1] - 1; ++j){
                if(temSabre(i, j)){
                    x = i + 1;
                    y = j + 1;
                    break;
                }
            }
        }

        Console.WriteLine($"{x} {y}");
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

    public static boolean temSabre(int x, int y) {
        for (int i = -1; i < 2; ++i) {
            for (int j = -1; j < 2; ++j) {
                if (i == 0 && j == 0) {
                    continue;
                }

                if (mapa[x + i][y + j] != 7) {
                    return false;
                }
            }
        }

        return mapa[x][y] == 42;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int N = Integer.parseInt(entrada[0]);
        int M = Integer.parseInt(entrada[1]);

        mapa = new int[N][M];
        for (int i = 0; i < N; ++i) {
            entrada = in.readLine().trim().split(" ");
            for (int j = 0; j < M; ++j) {
                mapa[i][j] = Integer.parseInt(entrada[j]);
            }
        }

        int x = 0;
        int y = 0;
        for (int i = 1; i < N - 1; ++i) {
            for (int j = 1; j < M - 1; ++j) {
                if (temSabre(i, j)) {
                    x = i + 1;
                    y = j + 1;
                    break;
                }
            }
        }

        System.out.printf("%d %d\n", x, y);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let mapa = [];

const temSabre = (x, y) => {
    for (let i = -1; i < 2; ++i) {
        for (let j = -1; j < 2; ++j) {
            if (i === 0 && j === 0) {
                break;
            }

            if (mapa[x + i][y + j] != 7) {
                return false;
            }
        }
    }

    return mapa[x][y] === 42;
};

let [N, M] = lines.shift().trim().split(' ').map(x => parseInt(x));

for (let i = 0; i < N; ++i) {
    mapa.push(lines.shift().trim().split(' ').map(x => parseInt(x)));
}

let [x, y] = [0, 0];
for (let i = 1; i < N - 1; ++i) {
    for (let j = 1; j < M - 1; ++j) {
        if (temSabre(i, j)) {
            [x, y] = [i + 1, j + 1];
            break;
        }
    }
}

console.log(`${x} ${y}`);
```