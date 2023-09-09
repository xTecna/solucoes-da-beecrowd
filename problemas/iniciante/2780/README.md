# 2780 - Basquete de Robôs

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2780)

## Solução

Aqui podemos usar as estruturas de `if` e `else` para decidir o quão longe o robô está do gol de acordo com sua distância $D$.

* Se $D \geq 800$, então a cesta vale 1 ponto.
* Senão, se $D \geq 1400$, então a cesta vale 2 pontos. Repare que como usamos senão, então para chegar aqui é necessário que $D > 800$.
* Senão, a cesta vale 3 pontos. Pelo mesmo raciocínio do item anterior, sabemos que $D > 1400$.

### C99

```c
#include <stdio.h>

int main()
{
    int D;

    scanf("%d", &D);

    if (D <= 800)
    {
        printf("1\n");
    }
    else if (D <= 1400)
    {
        printf("2\n");
    }
    else
    {
        printf("3\n");
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
    int D;

    cin >> D;

    if (D <= 800)
    {
        cout << 1 << endl;
    }
    else if (D <= 1400)
    {
        cout << 2 << endl;
    }
    else
    {
        cout << 3 << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int D = int.Parse(Console.ReadLine());

        if (D <= 800)
        {
            Console.WriteLine(1);
        }
        else if (D <= 1400)
        {
            Console.WriteLine(2);
        }
        else
        {
            Console.WriteLine(3);
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

        int D = Integer.parseInt(in.readLine());

        if (D <= 800) {
            System.out.println(1);
        } else if (D <= 1400) {
            System.out.println(2);
        } else {
            System.out.println(3);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let D = parseInt(lines.shift());

if (D <= 800) {
    console.log(1);
}
else if (D <= 1400) {
    console.log(2);
}
else {
    console.log(3);
}
```

### Python 3.9

```py
D = int(input())

if (D <= 800):
    print(1)
elif (D <= 1400):
    print(2)
else:
    print(3)
```