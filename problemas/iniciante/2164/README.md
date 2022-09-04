# 2164 - Fibonacci Rápido

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2164)

## Solução

Vide [potenciação rápida](../../../base-teorica/matematica/macetes/README.md#potentiação-rápida) para entender o método de potenciação que usei aqui. Daria para usar as funções prontas de cada linguagem, eu só quis evitar a fadiga.

### C99

```c
#include <stdio.h>
#include <math.h>

double potencia(double base, int expoente)
{
    if (expoente == 1)
    {
        return base;
    }
    else if (expoente % 2)
    {
        return base * potencia(base, expoente - 1);
    }
    else
    {
        double p = potencia(base, expoente / 2);
        return p * p;
    }
}

double Fibonacci(int n)
{
    return (potencia((1 + sqrt(5)) / 2, n) - potencia((1 - sqrt(5)) / 2, n)) / sqrt(5);
}

int main()
{
    int n;

    scanf("%d\n", &n);
    printf("%.1lf\n", Fibonacci(n));

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

double potencia(double base, int expoente)
{
    if (expoente == 1)
    {
        return base;
    }
    else if (expoente % 2)
    {
        return base * potencia(base, expoente - 1);
    }
    else
    {
        double p = potencia(base, expoente / 2);
        return p * p;
    }
}

double Fibonacci(int n)
{
    return (potencia((1 + sqrt(5)) / 2, n) - potencia((1 - sqrt(5)) / 2, n)) / sqrt(5);
}

int main()
{
    int n;

    cin >> n;
    cout << setprecision(1) << fixed << Fibonacci(n) << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static double potencia(double basePotencia, int expoente) {
        if (expoente == 1)
            return basePotencia;
        if (expoente % 2 == 1)
            return basePotencia * potencia(basePotencia, expoente - 1);

        double p = potencia(basePotencia, expoente / 2);
        return p * p;
    }

    static double Fibonacci(int n){
        return (potencia((1 + Math.Sqrt(5)) / 2, n) - potencia((1 - Math.Sqrt(5)) / 2, n)) / Math.Sqrt(5);
    }

    static void Main(string[] args) {
        int n = int.Parse(Console.ReadLine());
        Console.WriteLine($"{Fibonacci(n):#.0}");
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
    public static double potencia(double base, int expoente) {
        if (expoente == 1)
            return base;
        if (expoente % 2 == 1)
            return base * potencia(base, expoente - 1);

        double p = potencia(base, expoente / 2);
        return p * p;
    }

    public static double Fibonacci(int n) {
        return (potencia((1 + Math.sqrt(5)) / 2, n) - potencia((1 - Math.sqrt(5)) / 2, n)) / Math.sqrt(5);
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int n = Integer.parseInt(in.readLine());
        System.out.printf("%.1f\n", Fibonacci(n));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const potencia = (base, expoente) => {
    if (expoente === 1) return base;
    if (expoente % 2) return base * potencia(base, expoente - 1);

    let p = potencia(base, Math.floor(expoente / 2));
    return p * p;
};

const Fibonacci = (n) => (potencia((1 + Math.sqrt(5)) / 2, n) - potencia((1 - Math.sqrt(5)) / 2, n)) / Math.sqrt(5);

let n = parseInt(lines.shift());
console.log(Fibonacci(n).toFixed(1));
```

### Python 3.9

```py
import math


def potencia(base, expoente):
    if(expoente == 1):
        return base
    if(expoente % 2):
        return base * potencia(base, expoente - 1)

    p = potencia(base, expoente//2)
    return p * p


def Fibonacci(n):
    return (potencia((1 + math.sqrt(5)) / 2, n) - potencia((1 - math.sqrt(5)) / 2, n)) / math.sqrt(5)


n = int(input())
print(f'{Fibonacci(n):.1f}')
```