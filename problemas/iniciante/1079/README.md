# 1079 - Médias Ponderadas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1079)

## Solução

Vide problema [1006 - Média 2](../1006/README.md).

Aqui neste exercício usei uma abordagem um pouco distinta colocando os pesos em um vetor e referenciando cada nota com o peso correspondente, mas nada impede de você fazer que nem no problema anterior, lendo as 3 notas por vez e fazendo o cálculo adequado.

### C99

```c
#include <stdio.h>

int main()
{
    double nota;
    int N, pesos[3] = {2, 3, 5};

    scanf("%d", &N);
    for (int k = 0; k < N; ++k)
    {
        double media = 0.0;

        for (int i = 0; i < 3; ++i)
        {
            scanf("%lf", &nota);
            media += pesos[i] * nota;
        }

        printf("%.1lf\n", media / 10);
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
    double nota;
    int N, pesos[3] = {2, 3, 5};

    cin >> N;
    for (int k = 0; k < N; ++k)
    {
        double media = 0.0;

        for (int i = 0; i < 3; ++i)
        {
            cin >> nota;
            media += pesos[i] * nota;
        }

        cout << setprecision(1) << fixed << media / 10 << endl;
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
        int[] pesos = {2, 3, 5};

        int N = int.Parse(Console.ReadLine());
        for(int k = 0; k < N; ++k){
            double media = 0.0;

            List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
            for(int i = 0; i < 3; ++i){
                media += entrada[i] * pesos[i];
            }

            Console.WriteLine($"{media/10:0.0}");
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

        int[] pesos = { 2, 3, 5 };
        int N = Integer.parseInt(in.readLine());
        for (int k = 0; k < N; ++k) {
            double media = 0.0;

            String[] entrada = in.readLine().trim().split(" ");
            for (int i = 0; i < 3; ++i) {
                media += Double.parseDouble(entrada[i]) * pesos[i];
            }

            System.out.printf("%.1f\n", media / 10);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let pesos = [2, 3, 5];
let N = parseInt(lines.shift());
for (let k = 0; k < N; ++k) {
    let notas = lines.shift().trim().split(' ').map((x) => parseFloat(x));

    let media = 0.0;
    for (let i = 0; i < 3; ++i) {
        media += notas[i] * pesos[i];
    }

    console.log(`${(media / 10).toFixed(1)}`);
}
```

### Python 3.9

```py
pesos = [2, 3, 5]
N = int(input())

for _ in range(N):
    notas = [float(x) for x in input().strip().split(' ')]

    media = sum([notas[x] * pesos[x] for x in range(3)])
    print(f'{media/10:.1f}')
```