# 1837 - Prefácio

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1837)

## Solução

Por favor, se você possuir uma solução melhor e mais fácil, por favor, faça um pull request.

Para a minha solução, achei muito mais fácil lidar com cada caso de sinais separadamente, já que resto de divisão entre números negativos é problemática às vezes.

### C99

```c
#include <stdio.h>
#include <math.h>

void calcula(int x, int y)
{
    int quociente;

    if (x > 0)
        if (y > 0)
            quociente = x / y;
        else
            quociente = ceil((double)x / y);
    else if (y > 0)
        quociente = floor((double)x / y);
    else
        quociente = ceil((double)x / y);

    printf("%d %d\n", quociente, x - (y * quociente));
}

int main()
{
    int a, b;

    scanf("%d %d", &a, &b);

    calcula(a, b);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cmath>

using namespace std;

void calcula(int x, int y)
{
    int quociente;

    if (x > 0)
    {
        if (y > 0)
        {
            quociente = x / y;
        }
        else
        {
            quociente = ceil((double)x / y);
        }
    }
    else
    {
        if (y > 0)
        {
            quociente = floor((double)x / y);
        }
        else
        {
            quociente = ceil((double)x / y);
        }
    }

    cout << quociente << " " << x - (y * quociente) << endl;
}

int main()
{
    int a, b, q;

    cin >> a >> b;
    calcula(a, b);

    return 0;
}
```

### C#

```cs
using System;
using System.Linq;
using System.Collections.Generic;

class URI
{
    static void calcula(int x, int y)
    {
        int quociente;

        if (x > 0)
            if (y > 0)
                quociente = x / y;
            else
                quociente = (int)Math.Ceiling((double)x / y);
        else if (y > 0)
            quociente = (int)Math.Floor((double)x / y);
        else
            quociente = (int)Math.Ceiling((double)x / y);

        Console.WriteLine($"{quociente} {x - (y * quociente)}");
    }

    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
        calcula(entrada[0], entrada[1]);
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void calcula(int x, int y) {
        int quociente;

        if (x > 0)
            if (y > 0)
                quociente = x / y;
            else
                quociente = (int) Math.ceil((double) x / y);
        else if (y > 0)
            quociente = (int) Math.floor((double) x / y);
        else
            quociente = (int) Math.ceil((double) x / y);

        System.out.println(String.format("%d %d", quociente, x - (y * quociente)));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int a = Integer.parseInt(entrada[0]);
        int b = Integer.parseInt(entrada[1]);

        calcula(a, b);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const calcula = (x, y) => {
    let quociente;

    if (x > 0)
        if (y > 0)
            quociente = Math.floor(x / y);
        else
            quociente = Math.ceil(x / y);
    else
        if (y > 0)
            quociente = Math.floor(x / y);
        else
            quociente = Math.ceil(x / y);

    quociente = parseInt(quociente);

    return `${quociente} ${x - (y * quociente)}`;
};

let [a, b, q] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(calcula(a, b, q));
```

### Python 3.9

```py
import math


def calcula(x, y):
    quociente = 0

    if(x > 0):
        if(y > 0):
            quociente = x//y
        else:
            quociente = math.ceil(x/y)
    else:
        if(y > 0):
            quociente = x//y
        else:
            quociente = math.ceil(x/y)

    return f'{quociente} {x - (y * quociente)}'


a, b = [int(x) for x in input().strip().split(' ')]

print(calcula(a, b))
```