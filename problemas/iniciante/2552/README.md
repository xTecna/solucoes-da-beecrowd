# 2552 - PãodeQuejoSweeper

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2552)

## Solução

Usar sentinelas, isto é, uma linha e uma coluna extra no começo e no final da matriz, é essencial para manter a verificação dos vizinhos o mais simples possível. Com os sentinelas, a função vira apenas a soma dos vizinhos sem precisar se preocupar se precisar fazer checagem de limites.

### C99

```c
#include <stdio.h>

int matriz[102][102];

int paesDeQueijoVizinhos(int i, int j)
{
    return matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1];
}

int main()
{
    int N, M;

    while (scanf("%d %d", &N, &M) != EOF)
    {
        for (int i = 0; i <= N + 1; ++i)
        {
            for (int j = 0; j <= M + 1; ++j)
            {
                matriz[i][j] = 0;
            }
        }

        for (int i = 1; i <= N; ++i)
        {
            for (int j = 1; j <= M; ++j)
            {
                scanf("%d", &matriz[i][j]);
            }
        }

        for (int i = 1; i <= N; ++i)
        {
            for (int j = 1; j <= M; ++j)
            {
                if (matriz[i][j] == 0)
                {
                    printf("%d", paesDeQueijoVizinhos(i, j));
                }
                else
                {
                    printf("9");
                }
            }
            printf("\n");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int matriz[102][102];

int paesDeQueijoVizinhos(int i, int j)
{
    return matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1];
}

int main()
{
    int N, M;

    while (cin >> N >> M)
    {
        for (int i = 0; i <= N + 1; ++i)
        {
            for (int j = 0; j <= M + 1; ++j)
            {
                matriz[i][j] = 0;
            }
        }

        for (int i = 1; i <= N; ++i)
        {
            for (int j = 1; j <= M; ++j)
            {
                cin >> matriz[i][j];
            }
        }

        for (int i = 1; i <= N; ++i)
        {
            for (int j = 1; j <= M; ++j)
            {
                if (matriz[i][j] == 0)
                {
                    cout << paesDeQueijoVizinhos(i, j);
                }
                else
                {
                    cout << 9;
                }
            }
            cout << endl;
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
    static int paesDeQueijoVizinhos(int[,] matriz, int i, int j){
        return matriz[i - 1, j] + matriz[i + 1, j] + matriz[i, j - 1] + matriz[i, j + 1];
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int M = numeros[1];

            int[,] matriz = new int[N + 2, M + 2];
            for(int i = 1; i <= N; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                for(int j = 1; j <= M; ++j){
                    matriz[i, j] = numeros[j - 1];
                }
            }

            for(int i = 1; i <= N; ++i){
                for(int j = 1; j <= M; ++j){
                    if(matriz[i, j] == 0){
                        Console.Write(paesDeQueijoVizinhos(matriz, i, j));
                    }else{
                        Console.Write(9);
                    }
                }
                Console.WriteLine("");
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
    public static int paesDeQueijoVizinhos(int[][] matriz, int i, int j) {
        return matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");
            int N = Integer.parseInt(entrada[0]);
            int M = Integer.parseInt(entrada[1]);

            int[][] matriz = new int[N + 2][M + 2];
            for (int i = 1; i <= N; ++i) {
                entrada = in.readLine().trim().split(" ");
                for (int j = 1; j <= M; ++j) {
                    matriz[i][j] = Integer.parseInt(entrada[j - 1]);
                }
            }

            for (int i = 1; i <= N; ++i) {
                for (int j = 1; j <= M; ++j) {
                    if (matriz[i][j] == 0) {
                        System.out.print(paesDeQueijoVizinhos(matriz, i, j));
                    } else {
                        System.out.print(9);
                    }
                }
                System.out.println("");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const paesDeQueijoVizinhos = (matriz, i, j) => matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1];

while (lines.length) {
    let [N, M] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let matriz = [];
    for (let i = 0; i <= N + 1; ++i) {
        matriz.push([]);
        for (let j = 0; j <= M + 1; ++j) {
            matriz[i].push(0);
        }
    }

    for (let i = 1; i <= N; ++i) {
        matriz[i] = [0, ...lines.shift().trim().split(' ').map(x => parseInt(x)), 0];
    }

    let novaMatriz = '';
    for (let i = 1; i <= N; ++i) {
        for (let j = 1; j <= M; ++j) {
            if (matriz[i][j] === 0) {
                novaMatriz += `${paesDeQueijoVizinhos(matriz, i, j)}`;
            } else {
                novaMatriz += '9';
            }
        }
        novaMatriz += '\n';
    }
    console.log(novaMatriz.trim());
}
```

### Python 3.9

```py
def paesDeQueijoVizinhos(matriz, i, j):
    return matriz[i - 1][j] + matriz[i + 1][j] + matriz[i][j - 1] + matriz[i][j + 1]


while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        matriz = [[0 for _ in range(M + 2)] for _ in range(N + 2)]
        for i in range(1, N + 1):
            linha = [int(x) for x in input().strip().split(' ')]
            for j in range(1, M + 1):
                matriz[i][j] = linha[j - 1]

        for i in range(1, N + 1):
            for j in range(1, M + 1):
                if(matriz[i][j] == 0):
                    print(paesDeQueijoVizinhos(matriz, i, j), end='')
                else:
                    print(9, end='')
            print('')
    except EOFError:
        break
```