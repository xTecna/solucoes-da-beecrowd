# 2159 - Número Aproximado de Primos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2159)

## Solução

Aplicação direta da fórmula apresentada no enunciado.

### C99

```c
#include <stdio.h>
#include <math.h>

double limiteInferior(int n)
{
    return n / log(n);
}

double limiteSuperior(int n)
{
    return 1.25506 * n / log(n);
}

int main()
{
    int n;

    scanf("%d", &n);
    printf("%.1lf %.1lf\n", limiteInferior(n), limiteSuperior(n));

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

double limiteInferior(int n)
{
    return n / log(n);
}

double limiteSuperior(int n)
{
    return 1.25506 * n / log(n);
}

int main()
{
    int n;

    cin >> n;
    cout << setprecision(1) << fixed << limiteInferior(n) << ' ' << setprecision(1) << fixed << limiteSuperior(n) << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static double limiteInferior(int n)
    {
        return n / Math.Log(n);
    }

    static double limiteSuperior(int n)
    {
        return 1.25506 * n / Math.Log(n);
    }

    static void Main(string[] args) {
        int n = int.Parse(Console.ReadLine());
        Console.WriteLine($"{limiteInferior(n):#.0} {limiteSuperior(n):#.0}");
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
    public static double limiteInferior(int n) {
        return n / Math.log(n);
    }

    public static double limiteSuperior(int n) {
        return 1.25506 * n / Math.log(n);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int n = Integer.parseInt(in.readLine());
        System.out.printf("%.1f %.1f\n", limiteInferior(n), limiteSuperior(n));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const limiteInferior = (n) => n / Math.log(n);
const limiteSuperior = (n) => 1.25506 * n / Math.log(n);

let n = parseInt(lines.shift());
console.log(`${limiteInferior(n).toFixed(1)} ${limiteSuperior(n).toFixed(1)}`);
```

### Python 3.9

```py
import math


def limiteInferior(n):
    return n / math.log(n)


def limiteSuperior(n):
    return 1.25506 * n / math.log(n)


n = int(input())
print(f'{limiteInferior(n):.1f} {limiteSuperior(n):.1f}')
```