# 2533 - Estágio

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2533)

## Solução

Aplicação direta da fórmula apresentada no problema. Tanto faz se você deixa pra multiplicar 100 no final ou se você multiplica 100 a cada $C_{i}$.

### C99

```c
#include <stdio.h>

int main()
{
    int M, N, C, numerador, denominador;

    while (scanf("%d", &M) != EOF)
    {
        numerador = 0;
        denominador = 0;

        for (int i = 0; i < M; ++i)
        {
            scanf("%d %d", &N, &C);

            numerador += N * C;
            denominador += C;
        }

        printf("%.4lf\n", numerador / (100.0 * denominador));
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
    int M, N, C, numerador, denominador;

    while (cin >> M)
    {
        numerador = 0;
        denominador = 0;

        for (int i = 0; i < M; ++i)
        {
            cin >> N >> C;

            numerador += N * C;
            denominador += C;
        }

        cout << setprecision(4) << fixed << numerador / (100.0 * denominador) << endl;
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
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int M = int.Parse(entrada);

            int numerador = 0;
            int denominador = 0;
            for(int i = 0; i < M; ++i){
                List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

                numerador += numeros[0] * numeros[1];
                denominador += numeros[1];
            }

            Console.WriteLine($"{numerador/(100.0 * denominador):0.0000}");
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
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            int M = Integer.parseInt(in.readLine());

            int numerador = 0;
            int denominador = 0;
            for (int i = 0; i < M; ++i) {
                String[] entrada = in.readLine().trim().split(" ");
                int N = Integer.parseInt(entrada[0]);
                int C = Integer.parseInt(entrada[1]);

                numerador += C * N;
                denominador += C;
            }

            System.out.printf("%.4f\n", numerador / (100.0 * denominador));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let M = parseInt(lines.shift());

    let [numerador, denominador] = [0, 0];
    for (let i = 0; i < M; ++i) {
        let [N, C] = lines.shift().trim().split(' ').map(x => parseInt(x));

        numerador += N * C;
        denominador += C;
    }

    console.log(`${(numerador / (100 * denominador)).toFixed(4)}`);
}
```

### Python 3.9

```py
while True:
    try:
        M = int(input())

        numerador, denominador = 0, 0
        for _ in range(M):
            N, C = [int(x) for x in input().strip().split(' ')]
            numerador += N * C
            denominador += C

        print(f'{(numerador/(100 * denominador)):.4f}')
    except EOFError:
        break
```