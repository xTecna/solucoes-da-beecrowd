# 1158 - Soma de Ímpares Consecutivos III

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1158)

## Solução

A ideia é tratar esse problema como uma [soma de uma progressão aritmética](../../../base-teorica/matematica/progressoes/README.md#soma-dos-termos-de-a1-até-an-de-uma-progressão-aritmética) com `a0 = N + (1 - (N % 2))`, `r = 2` dos próximos `X` elementos da sequência.

> `N` pode ser um número negativo, portanto é sempre uma boa tirar o resto da divisão do valor absoluto, pois o resto da divisão de números negativos pode se retornar resultados inconsistentes.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

long long int somaPA(int a0, int n)
{
    a0 += 1 - (abs(a0) % 2);
    int an = a0 + (n - 1) * 2;

    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int N, X, Y;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &X, &Y);

        printf("%lld\n", somaPA(X, Y));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstdlib>

using namespace std;

int somaPA(int a0, int n)
{
    a0 += 1 - (abs(a0) % 2);
    int an = a0 + (n - 1) * 2;

    return ((long long int)(a0 + an) * n) / 2;
}

int main()
{
    int N, X, Y;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X >> Y;

        cout << somaPA(X, Y) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static long somaPA(int a0, int n){
        a0 += 1 - (Math.Abs(a0) % 2);
        int an = a0 + (n - 1) * 2;

        return ((long)(a0 + an) * n)/2;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine().Trim());
        for(int i = 0; i < N; ++i){
            string[] numeros = Console.ReadLine().Trim().Split(' ');
            int X = int.Parse(numeros[0]);
            int Y = int.Parse(numeros[1]);

            Console.WriteLine(somaPA(X, Y));
        }
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
    public static long somaPA(int a0, int n){
        a0 += 1 - (Math.abs(a0) % 2);
        int an = a0 + (n - 1) * 2;

        return ((long)(a0 + an) * n) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine().trim());
        for(int i = 0; i < N; ++i){
            String[] entrada = in.readLine().trim().split(" ");
            int X = Integer.parseInt(entrada[0]);
            int Y = Integer.parseInt(entrada[1]);

            System.out.println(somaPA(X, Y));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let somaPA = (a0, n) => {
    a0 += 1 - (Math.abs(a0) % 2);
    let an = a0 + (n - 1) * 2;

    return Math.floor(((a0 + an) * n) / 2);
};

let N = parseInt(lines.shift().trim());
for (let i = 0; i < N; ++i) {
    let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    console.log(somaPA(X, Y));
}
```

### Python 3.9

```py
def somaPA(a0, n):
    a0 += 1 - (abs(a0) % 2)
    an = a0 + (n - 1) * 2

    return ((a0 + an) * n)//2


N = int(input())
for _ in range(N):
    X, Y = [int(x) for x in input().strip().split(' ')]

    print(somaPA(X, Y))
```