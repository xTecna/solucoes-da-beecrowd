# 1099 - Soma de Ímpares Consecutivos II

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1099)

## Solução

Vide problema [1071 - Soma de Impares Consecutivos I](../1071/README.md). Aqui só implementei a versão com soma de progressão aritmética.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int numeroImpares(int X, int Y)
{
    return (Y - X) / 2 + 1;
}

int somaPA(int a0, int an)
{
    return (a0 + an) * numeroImpares(a0, an) / 2;
}

int main()
{
    int N, X, Y;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%d %d", &X, &Y);

        if (X > Y)
        {
            int temp = X;
            X = Y;
            Y = temp;
        }

        X += (abs(X) % 2) + 1;
        Y -= (abs(Y) % 2) + 1;

        printf("%d\n", X > Y ? 0 : somaPA(X, Y));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstdlib>

using namespace std;

int numeroImpares(int X, int Y)
{
    return (Y - X) / 2 + 1;
}

int somaPA(int a0, int an)
{
    return (a0 + an) * numeroImpares(a0, an) / 2;
}

int main()
{
    int N, X, Y;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X >> Y;

        if (X > Y)
        {
            swap(X, Y);
        }

        X += (abs(X) % 2) + 1;
        Y -= (abs(Y) % 2) + 1;

        cout << (X > Y ? 0 : somaPA(X, Y)) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static int numeroImpares(int X, int Y){
        return (Y - X) / 2 + 1;
    }

    static int somaPA(int a0, int an){
        return (a0 + an) * numeroImpares(a0, an) / 2;
    }

    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            int X = int.Parse(entrada[0]);
            int Y = int.Parse(entrada[1]);

            if(X > Y){
                int temp = X;
                X = Y;
                Y = temp;
            }

            X += (Math.Abs(X) % 2) + 1;
            Y -= (Math.Abs(Y) % 2) + 1;

            Console.WriteLine(X > Y ? 0 : somaPA(X, Y));
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
    public static int numeroImpares(int X, int Y){
        return (Y - X) / 2 + 1;
    }

    public static int somaPA(int a0, int an){
        return (a0 + an) * numeroImpares(a0, an) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        int N = Integer.parseInt(in.readLine());
        for(int i = 0; i < N; ++i){
            String[] entrada = in.readLine().trim().split(" ");
            int X = Integer.parseInt(entrada[0]);
            int Y = Integer.parseInt(entrada[1]);

            if(X > Y){
                int temp = X;
                X = Y;
                Y = temp;
            }

            X += (Math.abs(X) % 2) + 1;
            Y -= (Math.abs(Y) % 2) + 1;

            System.out.printf("%d\n", X > Y ? 0 : somaPA(X, Y));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let numeroImpares = (X, Y) => (Y - X) / 2 + 1;
let somaPA = (a0, an) => (a0 + an) * numeroImpares(a0, an) / 2;

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (X > Y) {
        [X, Y] = [Y, X];
    }

    X += (Math.abs(X) % 2) + 1;
    Y -= (Math.abs(Y) % 2) + 1;

    console.log(`${X > Y ? 0 : somaPA(X, Y)}`);
}
```

### Python 3.9

```py
def numeroImpares(X, Y):
    return (Y - X) // 2 + 1


def somaPA(a0, an):
    return (a0 + an) * numeroImpares(a0, an) // 2


N = int(input())
for _ in range(N):
    X, Y = [int(x) for x in input().strip().split(' ')]

    if (X > Y):
        X, Y = Y, X

    X += (abs(X) % 2) + 1
    Y -= (abs(Y) % 2) + 1

    print(somaPA(X, Y) if X <= Y else 0)

```