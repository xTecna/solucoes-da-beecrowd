# 1176 - Fibonacci em Vetor

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1176)

## Solução

Vide seção de [memorização](../../../base-teorica/paradigmas/memorizacao/README.md) para entender como funciona a chamada recursiva abaixo e entender porque ela é eficiente para resolver o problema.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

long long int F[61];

long long int Fibonacci(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

int main()
{
    int T, N;

    memset(F, -1, sizeof(F));
    F[0] = 0;
    F[1] = 1;

    scanf("%d", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%d", &N);

        printf("Fib(%d) = %lld\n", N, Fibonacci(N));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <vector>

using namespace std;

vector<long long int> F;

long long int Fibonacci(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

int main()
{
    int T, N;

    F.assign(61, -1);
    F[0] = 0;
    F[1] = 1;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> N;

        cout << "Fib(" << N << ") = " << Fibonacci(N) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static long[] F;

    static long Fibonacci(int n){
        if(F[n] == -1){
            F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
        }
        return F[n];
    }

    static void Main(string[] args) {
        F = new long[61];
        F[0] = 0;
        F[1] = 1;
        for(int i = 2; i < 61; ++i){
            F[i] = -1;
        }

        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            int N = int.Parse(Console.ReadLine());

            Console.WriteLine($"Fib({N}) = {Fibonacci(N)}");
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
    public static long[] F;

    public static long Fibonacci(int n){
        if(F[n] == -1){
            F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
        }
        return F[n];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F = new long[61];
        F[0] = 0;
        F[1] = 1;
        for(int i = 2; i < 61; ++i){
            F[i] = -1;
        }

        int T = Integer.parseInt(in.readLine());
        for(int i = 0; i < T; ++i){
            int N = Integer.parseInt(in.readLine());

            System.out.printf("Fib(%d) = %d\n", N, Fibonacci(N));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = Array(61);
let Fibonacci = (n) => {
    if (F[n] === -1) {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
};

F[0] = 0;
F[1] = 1;
for (let i = 2; i < 61; ++i) {
    F[i] = -1;
}

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let N = parseInt(lines.shift());

    console.log(`Fib(${N}) = ${Fibonacci(N)}`);
}
```

### Python 3.9

```py
F = [-1 for _ in range(61)]
F[0] = 0
F[1] = 1


def Fibonacci(n):
    if(F[n] == -1):
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1)
    return F[n]


T = int(input())
for _ in range(T):
    N = int(input())

    print(f'Fib({N}) = {Fibonacci(N)}')
```