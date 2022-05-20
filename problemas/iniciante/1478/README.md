# 1478 - Matriz Quadrada II

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1478)

## Solução

Vide problema [1435 - Matriz Quadrada I](../1435/README.md) para entender melhor a formatação.

Com relação ao conteúdo, podemos perceber que cada elemento é a diferença absoluta entre o valor da linha e o valor da coluna mais um, ou seja, a célula em `(1, 1)` tem valor `1` porque `|1 - 1| + 1 = 1`, a célula em `(2, 1)` tem valor `2` porque `|2 - 1| + 1 = 2` e assim por diante.

> A solução em Java 14 que funciona para o problema 1435 é lenta demais para resolver este problema (repare que este problema tem a metade do time limit do outro).

### C99

```c
#include <stdio.h>

int main()
{
    int N;

    while (scanf("%d", &N) != EOF)
    {
        if (N == 0)
        {
            break;
        }

        for (int i = 0; i < N; ++i)
        {
            printf("%3d", i + 1);
            for (int j = 1; j < N; ++j)
            {
                printf("%4d", abs(i - j) + 1);
            }
            printf("\n");
        }
        printf("\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int N;

    while (cin >> N)
    {
        if (N == 0)
        {
            break;
        }

        for (int i = 0; i < N; ++i)
        {
            cout << setw(3) << setfill(' ') << i + 1;
            for (int j = 1; j < N; ++j)
            {
                cout << setw(4) << setfill(' ') << abs(i - j) + 1;
            }
            cout << endl;
        }
        cout << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int N = int.Parse(entrada);

            if (N == 0)
            {
                break;
            }

            for (int i = 0; i < N; ++i)
            {
                Console.Write((i + 1).ToString().PadLeft(3));
                for (int j = 1; j < N; ++j)
                {
                    Console.Write((Math.Abs(i - j) + 1).ToString().PadLeft(4));
                }
                Console.WriteLine("");
            }
            Console.WriteLine("");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift().trim());

    if (N === 0) {
        break;
    }

    let resposta = '';
    for (let i = 0; i < N; ++i) {
        resposta += (i + 1).toString().padStart(3);
        for (let j = 1; j < N; ++j) {
            resposta += (Math.abs(i - j) + 1).toString().padStart(4);
        }
        resposta += '\n';
    }

    console.log(resposta);
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        for i in range(N):
            print(f'{i + 1:3d}', end='')
            for j in range(1, N):
                print(
                    f'{(abs(i - j) + 1):4d}', end='')
            print('')
        print('')
    except EOFError:
        break
```