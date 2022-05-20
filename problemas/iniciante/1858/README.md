# 1858 - A Resposta de Theon

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1858)

## Solução

Esse problema consiste em descobrir a posição do algoz de menor valor, já que Theon quer diminuir o número de vezes que ele irá ser atingido por Ramsay.

### C99

```c
#include <stdio.h>

int main()
{
    int N, T, menor, resposta;

    scanf("%d", &N);

    scanf("%d", &T);

    menor = T;
    resposta = 1;
    for (int i = 1; i < N; ++i)
    {
        scanf("%d", &T);

        if (T < menor)
        {
            menor = T;
            resposta = i + 1;
        }
    }

    printf("%d\n", resposta);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N, T, menor, resposta;

    cin >> N;

    cin >> T;

    menor = T;
    resposta = 1;
    for (int i = 1; i < N; ++i)
    {
        cin >> T;

        if (T < menor)
        {
            menor = T;
            resposta = i + 1;
        }
    }

    cout << resposta << endl;

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
        int T = int.Parse(Console.ReadLine());

        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        int menor = entrada[0];
        int resposta = 1;
        for (int i = 1; i < T; ++i)
        {
            if (entrada[i] < menor)
            {
                menor = entrada[i];
                resposta = i + 1;
            }
        }

        Console.WriteLine(resposta);
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
        String[] entrada = in.readLine().trim().split(" ");

        int menor = Integer.parseInt(entrada[0]);
        int resposta = 1;
        for (int i = 1; i < N; ++i) {
            int algoz = Integer.parseInt(entrada[i]);

            if (algoz < menor) {
                menor = algoz;
                resposta = i + 1;
            }
        }

        System.out.println(resposta);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let entrada = lines.shift().trim().split(' ').map((x) => parseInt(x));

let menor = entrada[0];
let resposta = 1;
for (let i = 1; i < N; ++i) {
    if (entrada[i] < menor) {
        menor = entrada[i];
        resposta = i + 1;
    }
}

console.log(resposta);
```

### Python 3.9

```py
N = int(input())
entrada = [int(x) for x in input().strip().split(' ')]

menor = entrada[0]
resposta = 1
for i in range(1, N):
    if(entrada[i] < menor):
        menor = entrada[i]
        resposta = i + 1

print(resposta)
```