# 2172 - Evento

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2172)

## Solução

Vide problema [1004 - Produto Simples](../1004/README.md) e a seção [entrada até EOF](../../../introducao//modelos-de-entrada-e-saida/README.md#entrada-até-eof) para ver como receber entrada até o final. Também note que o produto pode não caber em uma variável inteira apenas, é necessário estendê-la com `long` dependendo da linguagem que você está usando.

### C99

```c
#include <stdio.h>

int main()
{
    long long int X, M;

    while (scanf("%lld %lld\n", &X, &M) != EOF)
    {
        if (X == 0 && M == 0)
        {
            break;
        }

        printf("%lld\n", X * M);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    long long int X, M;

    while (cin >> X >> M)
    {
        if (X == 0 && M == 0)
        {
            break;
        }

        cout << X * M << endl;
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
            List<long> numeros = entrada.Trim().Split(' ').Select(x => long.Parse(x)).ToList();
            if (numeros[0] == 0 && numeros[1] == 0){
                break;
            }

            Console.WriteLine(numeros[0] * numeros[1]);
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
            String[] entrada = in.readLine().trim().split(" ");
            long X = Integer.parseInt(entrada[0]);
            long M = Integer.parseInt(entrada[1]);

            if (X == 0 && M == 0) {
                break;
            }

            System.out.println(X * M);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');
lines.pop();

while (lines.length) {
    let [X, M] = lines.shift().trim().split(' ').map(x => parseInt(x));
    console.log(X * M);
}
```

### Python 3.9

```py
while True:
    try:
        X, M = [int(x) for x in input().strip().split(' ')]
        if(X == 0 and M == 0):
            break

        print(X * M)
    except EOFError:
        break
```