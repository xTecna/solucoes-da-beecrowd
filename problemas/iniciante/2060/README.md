# 2060 - Desafio de Bino

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2060)

## Solução

Pode-se fazer o contador de cada múltiplo em um vetor para ficar mais fácil de fazer o _loop_ de verificação, já que 2, 3, 4 e 5 são números sequenciais. Em algumas linguagens entretanto, tomei a liberdade de usar uma abordagem mais funcional com um raciocínio um pouco diferente, em vez de pegar um elemento e testar se ele é divisível por 2, 3, 4 ou 5, eu separo e faço quatro perguntas diferentes: "quantos números deste vetor são divisíveis por 2?" "e por 3?" "e por 4?" "e por 5?".

### C99

```c
#include <stdio.h>

int main()
{
    int N, L, multiplos[6] = {0, 0, 0, 0, 0, 0};

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d", &L);

        for (int j = 2; j < 6; ++j)
        {
            if (L % j == 0)
            {
                ++multiplos[j];
            }
        }
    }

    for (int i = 2; i < 6; ++i)
    {
        printf("%d Multiplo(s) de %d\n", multiplos[i], i);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int N, L;
    vector<int> multiplos;

    multiplos.assign(6, 0);

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> L;

        for (int j = 2; j < 6; ++j)
        {
            if (L % j == 0)
            {
                ++multiplos[j];
            }
        }
    }

    for (int i = 2; i < 6; ++i)
    {
        cout << multiplos[i] << " Multiplo(s) de " << i << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        int[] multiplos = new int[] { 0, 0, 0, 0, 0, 0 };

        int N = int.Parse(Console.ReadLine());
        List<int> numeros = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        for (int i = 2; i < 6; ++i)
        {
            Console.WriteLine($"{numeros.Aggregate(0, (acc, cur) => (cur % i == 0) ? acc + 1 : acc)} Multiplo(s) de {i}");
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

        int N = Integer.parseInt(in.readLine());
        String[] numeros = in.readLine().trim().split(" ");

        int[] multiplos = new int[6];
        for (int i = 0; i < N; ++i) {
            int numero = Integer.parseInt(numeros[i]);

            for (int j = 2; j < 6; ++j) {
                if (numero % j == 0) {
                    ++multiplos[j];
                }
            }
        }

        for (int i = 2; i < 6; ++i) {
            System.out.printf("%d Multiplo(s) de %d\n", multiplos[i], i);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));

for (let i = 2; i < 6; ++i) {
    console.log(`${numeros.reduce((acc, cur) => (cur % i === 0) ? acc + 1 : acc, 0)} Multiplo(s) de ${i}`);
}
```

### Python 3.9

```py
N = int(input())
numeros = [int(x) for x in input().strip().split(' ')]

for i in range(2, 6):
    print(f'{sum([1 if x % i == 0 else 0 for x in numeros])} Multiplo(s) de {i}')
```