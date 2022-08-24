# 1929 - Triângulo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1929)

## Solução

Três segmentos de reta de tamanhos $a$, $b$ e $c$ só podem formar um triângulo se para todo segmento $x$, com $y$ e $z$ representando os outros segmentos, sem perda de generalidade, temos que $abs(z - y) < x < z + y$.

Como estamos testando com quatro segmentos diferentes, basta escrevermos o teste uma única vez em uma função separada e chamar essa função com todas as combinações de trios de segmentos possível.

### C99

```c
#include <stdio.h>

int fazTriangulo(int a, int b, int c)
{
    return (abs(b - c) < a && a < b + c && abs(a - c) < b && b < a + c && abs(a - b) < c && c < a + b);
}

int main()
{
    int A, B, C, D;

    scanf("%d %d %d %d", &A, &B, &C, &D);

    int resposta = fazTriangulo(A, B, C) || fazTriangulo(A, B, D) || fazTriangulo(A, C, D) || fazTriangulo(B, C, D);

    printf("%c\n", resposta ? 'S' : 'N');

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

bool fazTriangulo(int a, int b, int c)
{
    return (abs(b - c) < a && a < b + c && abs(a - c) < b && b < a + c && abs(a - b) < c && c < a + b);
}

int main()
{
    int A, B, C, D;

    cin >> A >> B >> C >> D;

    bool resposta = fazTriangulo(A, B, C) || fazTriangulo(A, B, D) || fazTriangulo(A, C, D) || fazTriangulo(B, C, D);

    cout << (resposta ? 'S' : 'N') << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static bool fazTriangulo(int a, int b, int c)
    {
        return (Math.Abs(b - c) < a && a < b + c && Math.Abs(a - c) < b && b < a + c && Math.Abs(a - b) < c && c < a + b);
    }

    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        bool resposta = fazTriangulo(entrada[0], entrada[1], entrada[2]) || fazTriangulo(entrada[0], entrada[1], entrada[3]) || fazTriangulo(entrada[0], entrada[2], entrada[3]) || fazTriangulo(entrada[1], entrada[2], entrada[3]);

        Console.WriteLine(resposta ? "S" : "N");
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
    public static boolean fazTriangulo(int a, int b, int c) {
        return (Math.abs(b - c) < a && a < b + c && Math.abs(a - c) < b && b < a + c && Math.abs(a - b) < c
                && c < a + b);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        int C = Integer.parseInt(entrada[2]);
        int D = Integer.parseInt(entrada[3]);

        boolean resposta = fazTriangulo(A, B, C) || fazTriangulo(A, B, D) || fazTriangulo(A, C, D)
                || fazTriangulo(B, C, D);

        System.out.println(resposta ? "S" : "N");
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let fazTriangulo = (a, b, c) => (Math.abs(b - c) < a && a < b + c && Math.abs(a - c) < b && b < a + c && Math.abs(a - b) < c && c < a + b);

let [A, B, C, D] = lines.shift().trim().split(' ').map((x) => parseInt(x));

let resposta = fazTriangulo(A, B, C) || fazTriangulo(A, B, D) || fazTriangulo(A, C, D) || fazTriangulo(B, C, D);

console.log(resposta ? "S" : "N");
```

### Python 3.9

```py
def fazTriangulo(a, b, c):
    return (abs(b - c) < a and a < b + c and abs(a - c) < b and b < a + c and abs(a - b) < c and c < a + b)

A, B, C, D = [int(x) for x in input().strip().split(' ')]

resposta = fazTriangulo(A, B, C) or fazTriangulo(A, B, D) or fazTriangulo(A, C, D) or fazTriangulo(B, C, D)

print('S' if resposta else 'N')
```