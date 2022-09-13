# 2520 - O Último Analógimôn

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2520)

## Solução

A menor distância entre um quadrado de um grid e outro onde só é possível andar vertical ou horizontalmente é definido pela distância de Manhattan, cuja fórmula é $D_{(x_1, y_1)(x_2, y_2)} = |x_1 - x_2| + |y_1 - y_2|$.

### C99

```c
#include <stdio.h>
#include <math.h>

int distanciaManhattan(int x1, int y1, int x2, int y2)
{
    return abs(x1 - x2) + abs(y1 - y2);
}

int main()
{
    int N, M, numero, x1, y1, x2, y2;

    while (scanf("%d %d", &N, &M) != EOF)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < M; ++j)
            {
                scanf("%d", &numero);

                if (numero == 1)
                {
                    x1 = i;
                    y1 = j;
                }
                else if (numero == 2)
                {
                    x2 = i;
                    y2 = j;
                }
            }
        }

        printf("%d\n", distanciaManhattan(x1, y1, x2, y2));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cmath>

using namespace std;

int distanciaManhattan(int x1, int y1, int x2, int y2)
{
    return abs(x1 - x2) + abs(y1 - y2);
}

int main()
{
    int N, M, numero, x1, y1, x2, y2;

    while (cin >> N >> M)
    {
        for (int i = 0; i < N; ++i)
        {
            for (int j = 0; j < M; ++j)
            {
                cin >> numero;

                if (numero == 1)
                {
                    x1 = i;
                    y1 = j;
                }
                else if (numero == 2)
                {
                    x2 = i;
                    y2 = j;
                }
            }
        }

        cout << distanciaManhattan(x1, y1, x2, y2) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI {
    static int distanciaManhattan(int x1, int y1, int x2, int y2){
        return Math.Abs(x1 - x2) + Math.Abs(y1 - y2);
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            int N = numeros[0];
            int M = numeros[1];

            int x1 = 0, y1 = 0, x2 = 0, y2 = 0;
            for(int i = 0; i < N; ++i){
                numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
                for(int j = 0; j < M; ++j){
                    if(numeros[j] == 1){
                        x1 = i;
                        y1 = j;
                    }else if(numeros[j] == 2){
                        x2 = i;
                        y2 = j;
                    }
                }
            }

            Console.WriteLine(distanciaManhattan(x1, y1, x2, y2));
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static int distanciaManhattan(int x1, int y1, int x2, int y2) {
        return Math.abs(x1 - x2) + Math.abs(y1 - y2);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] NM = in.readLine().trim().split(" ");
            int N = Integer.parseInt(NM[0]);
            int M = Integer.parseInt(NM[1]);

            int x1 = 0, y1 = 0, x2 = 0, y2 = 0;
            for (int i = 0; i < N; ++i) {
                String[] numeros = in.readLine().trim().split(" ");

                for (int j = 0; j < M; ++j) {
                    if (numeros[j].equals("1")) {
                        x1 = i;
                        y1 = j;
                    } else if (numeros[j].equals("2")) {
                        x2 = i;
                        y2 = j;
                    }
                }
            }

            System.out.println(distanciaManhattan(x1, y1, x2, y2));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const distanciaManhattan = (x1, y1, x2, y2) => Math.abs(x1 - x2) + Math.abs(y1 - y2);

while (lines.length) {
    let [N, M] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let [x1, y1, x2, y2] = [0, 0, 0, 0];
    for (let i = 0; i < N; ++i) {
        let numeros = lines.shift().trim().split(' ').map(x => parseInt(x));
        for (let j = 0; j < M; ++j) {
            if (numeros[j] === 1) {
                x1 = i;
                y1 = j;
            } else if (numeros[j] === 2) {
                x2 = i;
                y2 = j;
            }
        }
    }

    console.log(distanciaManhattan(x1, y1, x2, y2));
}
```

### Python 3.9

```py
def distanciaManhattan(x1, y1, x2, y2):
    return abs(x1 - x2) + abs(y1 - y2)

while True:
    try:
        N, M = [int(x) for x in input().strip().split(' ')]

        x1, y1, x2, y2 = 0, 0, 0, 0
        for i in range(N):
            linha = [int(x) for x in input().strip().split(' ')]
            for j in range(M):
                if(linha[j] == 1):
                    x1, y1 = i, j
                elif(linha[j] == 2):
                    x2, y2 = i, j

        print(distanciaManhattan(x1, y1, x2, y2))
    except EOFError:
        break
```