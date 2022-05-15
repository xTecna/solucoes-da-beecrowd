# 1133 - Resto da Divisão

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1133)

## Solução

Esse problema pode ser resolvido com um `for` no intervalo de `X` a `Y`, onde para cada valor pode ser perguntado se o valor `i` divido por 5 tem resto 2 ou 3. Basta lembrar que `X` e `Y` não estão incluídos nesse intervalo.

### C99

```c
#include <stdio.h>

int main()
{
    int X, Y;

    scanf("%d %d", &X, &Y);

    if (X > Y)
    {
        int temp = X;
        X = Y;
        Y = temp;
    }

    for (int i = X + 1; i < Y; ++i)
    {
        if (i % 5 > 1 && i % 5 < 4)
        {
            printf("%d\n", i);
        }
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
    int X, Y;

    cin >> X >> Y;

    if (X > Y)
    {
        swap(X, Y);
    }

    for (int i = X + 1; i < Y; ++i)
    {
        if (i % 5 > 1 && i % 5 < 4)
        {
            cout << i << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int X, Y;

        X = int.Parse(Console.ReadLine());
        Y = int.Parse(Console.ReadLine());

        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }

        for(int i = X + 1; i < Y; ++i){
            if(i % 5 > 1 && i % 5 < 4){
                Console.WriteLine(i);
            }
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
    
        int X = Integer.parseInt(in.readLine());
        int Y = Integer.parseInt(in.readLine());

        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }

        for(int i = X + 1; i < Y; ++i){
            if(i % 5 > 1 && i % 5 < 4){
                System.out.println(i);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());
let Y = parseInt(lines.shift());

if (X > Y) {
    [X, Y] = [Y, X];
}

for (let i = X + 1; i < Y; ++i) {
    if (i % 5 > 1 && i % 5 < 4) {
        console.log(i);
    }
}
```

### Python 3.9

```py
X = int(input())
Y = int(input())

if(X > Y):
    X, Y = Y, X

for i in range(X + 1, Y):
    if(1 < i % 5 < 4):
        print(i)
```