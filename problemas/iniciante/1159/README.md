# 1159 - Soma de Pares Consecutivos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1159)

## Solução

Vide problema [1158 - Soma de Ímpares Consecutivos](../1158/README.md), com a diferença de que o valor `X` seria fixo em `5`.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int somaPA(int a0)
{
    a0 += (abs(a0) % 2);
    int an = a0 + 8;
    int n = 5;

    return ((a0 + an) * n) / 2;
}

int main()
{
    int X;

    while (scanf("%d", &X) != EOF)
    {
        if (X == 0)
        {
            break;
        }

        printf("%d\n", somaPA(X));
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cstdlib>

using namespace std;

int somaPA(int a0)
{
    a0 += (abs(a0) % 2);
    int an = a0 + 8;
    int n = 5;

    return ((a0 + an) * n) / 2;
}

int main()
{
    int X;

    while (cin >> X)
    {
        if (X == 0)
        {
            break;
        }

        cout << somaPA(X) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static int somaPA(int a0){
        a0 += (Math.Abs(a0) % 2);
        int an = a0 + 8;
        int n = 5;

        return ((a0 + an) * n)/2;
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            int X = int.Parse(entrada);

            if(X == 0){
                break;
            }

            Console.WriteLine(somaPA(X));
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
    public static int somaPA(int a0){
        a0 += (Math.abs(a0) % 2);
        int an = a0 + 8;
        int n = 5;

        return ((a0 + an) * n) / 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while(in.ready()){
            int X = Integer.parseInt(in.readLine());

            if(X == 0){
                break;
            }

            System.out.println(somaPA(X));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let somaPA = (a0) => {
    a0 += (Math.abs(a0) % 2);
    let an = a0 + 8;
    let n = 5;

    return Math.floor(((a0 + an) * n) / 2);
};

while (lines.length) {
    let X = parseInt(lines.shift());

    if (X === 0) {
        break;
    }

    console.log(somaPA(X));
}
```

### Python 3.9

```py
def somaPA(a0):
    a0 += (abs(a0) % 2)
    an = a0 + 8
    n = 5

    return ((a0 + an) * n)//2


while True:
    try:
        X = int(input())

        if(X == 0):
            break

        print(somaPA(X))
    except EOFError:
        break
```