# 1150 - Ultrapassando Z

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1150)

## Solução

Como a soma de números consecutivos consuma crescer bem rápido, não tem problema só irmos somando consecutivamente até alcançar `Z`, é uma resposta que cabe dentro do tempo limite para todas as linguagens que suportamos aqui.

### C99

```c
#include <stdio.h>

int main()
{
    int X, Z;

    scanf("%d", &X);
    while (scanf("%d", &Z) != EOF)
    {
        if (Z > X)
        {
            break;
        }
    }

    int resposta = 1, soma = X;
    while (soma <= Z)
    {
        soma += X + resposta;
        ++resposta;
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
    int X, Z;

    cin >> X;
    while (cin >> Z)
    {
        if (Z > X)
        {
            break;
        }
    }

    int resposta = 1, soma = X;
    while (soma <= Z)
    {
        soma += X + resposta;
        ++resposta;
    }

    cout << resposta << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        int X = int.Parse(Console.ReadLine());

        int Z = 0;
        string entrada;
        while ((entrada = Console.ReadLine()) != null)
        {
            Z = int.Parse(entrada);

            if (Z > X)
            {
                break;
            }
        }

        int resposta = 1, soma = X;
        while (soma <= Z)
        {
            soma += X + resposta;
            ++resposta;
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

        int X = Integer.parseInt(in.readLine());
        int Z = 0;
        while (in.ready()) {
            Z = Integer.parseInt(in.readLine());

            if (Z > X) {
                break;
            }
        }

        int resposta = 1, soma = X;
        while (soma <= Z) {
            soma += X + resposta;
            ++resposta;
        }

        System.out.println(resposta);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());
let Z = 0;
while (lines.length) {
    Z = parseInt(lines.shift());

    if (Z > X) {
        break;
    }
}

let resposta = 1, soma = X;
while (soma <= Z) {
    soma += X + resposta;
    ++resposta;
}

console.log(resposta);
```

### Python 3.9

```py
X = int(input())

Z = 0
while(True):
    try:
        Z = int(input())

        if(Z > X):
            break
    except EOFError:
        break

resposta, soma = 1, X
while(soma <= Z):
    soma += X + resposta
    resposta += 1

print(resposta)
```