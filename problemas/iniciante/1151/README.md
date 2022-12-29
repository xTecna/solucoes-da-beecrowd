# 1151 - Fibonacci Fácil

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1151)

## Solução

Aqui neste problema proponho uma mudança simples no algoritmo basicão de Fibonacci que aumenta bastante a eficiência do algoritmo. Por favor, dê uma olhada em [memorização](../../../base-teorica/paradigmas/memorizacao/README.md) para entender como essa técnica funciona e o porquê dela ser tão eficiente.

### C99

```c
#include <string.h>
#include <stdio.h>

int F[46];

int Fibonacci(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

int main()
{
    memset(F, -1, sizeof(F));
    F[0] = 0;
    F[1] = 1;

    int N;

    scanf("%d", &N);
    Fibonacci(N);

    printf("%d", F[0]);
    for (int i = 1; i < N; ++i)
    {
        printf(" %d", F[i]);
    }
    printf("\n");

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <vector>

using namespace std;

vector<int> F;

int Fibonacci(int n)
{
    if (F[n] == -1)
    {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

int main()
{
    F.assign(46, -1);
    F[0] = 0;
    F[1] = 1;

    int N;

    cin >> N;
    Fibonacci(N);

    cout << F[0];
    for (int i = 1; i < N; ++i)
    {
        cout << " " << F[i];
    }
    cout << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static int[] F;

    static int Fibonacci(int n){
        if(F[n] == -1){
            F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
        }
        return F[n];
    }

    static void Main(string[] args) {
        F = new int[46];

        F[0] = 0;
        F[1] = 1;
        for(int i = 2; i < 46; ++i){
            F[i] = -1;
        }

        int N = int.Parse(Console.ReadLine());
        Fibonacci(N);

        Console.Write(F[0]);
        for(int i = 1; i < N; ++i){
            Console.Write($" {F[i]}");
        }
        Console.WriteLine("");
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int[] F;

    public static int Fibonacci(int n){
        if(F[n] == -1){
            F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
        }
        return F[n];
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        F = new int[46];
        F[0] = 0;
        F[1] = 1;
        for(int i = 2; i < 46; ++i){
            F[i] = -1;
        }

        int N = Integer.parseInt(in.readLine());
        Fibonacci(N);

        System.out.print(F[0]);
        for(int i = 1; i < N; ++i){
            System.out.printf(" %d", F[i]);
        }
        System.out.println("");
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let F = [];

let Fibonacci = (n) => {
    if (F[n] === -1) {
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1);
    }
    return F[n];
}

F[0] = 0;
F[1] = 1;
for (let i = 2; i < 46; ++i) {
    F[i] = -1;
}

let N = parseInt(lines.shift());
Fibonacci(N);

let resposta = [];
for (let i = 0; i < N; ++i) {
    resposta.push(F[i]);
}

console.log(resposta.join(' '));
```

### Python 3.9

```py
F = [-1 for _ in range(46)]


def Fibonacci(n):
    if(F[n] == -1):
        F[n] = Fibonacci(n - 2) + Fibonacci(n - 1)
    return F[n]


F[0] = 0
F[1] = 1

N = int(input())
Fibonacci(N)

print(' '.join([str(x) for x in F[:N]]))
```