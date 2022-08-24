# 2059 - Ímpar, Par ou Roubo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2059)

## Solução

Este jogo na verdade tem duas camadas: uma que é o jogo em si e outra com roubo e acusação. Com isso em mente, temos que, independente do jogo:

* Se o jogador 1 rouba e o jogador 2 o acusa, o jogador 2 ganha
* Se o jogador 1 rouba e o jogador 2 não o acusa, o jogador 1 ganha
* Se o jogador 1 não rouba, mas o jogador 2 o acusa, o jogador 1 ganha

E só no caso do jogador 1 não roubar e o jogador 2 não o acusá-lo é que segue o jogo de par ou ímpar normalmente.

### C99

```c
#include <stdio.h>

int main()
{
    int p, j1, j2, r, a;

    scanf("%d %d %d %d %d", &p, &j1, &j2, &r, &a);

    if (r)
    {
        if (a)
        {
            printf("Jogador 2 ganha!\n");
        }
        else
        {
            printf("Jogador 1 ganha!\n");
        }
    }
    else
    {
        if (a)
        {
            printf("Jogador 1 ganha!\n");
        }
        else
        {
            printf("Jogador %d ganha!\n", (j1 + j2) % 2 == (1 - p) ? 1 : 2);
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
    int p, j1, j2, r, a;

    cin >> p >> j1 >> j2 >> r >> a;

    if (r)
    {
        if (a)
        {
            cout << "Jogador 2 ganha!" << endl;
        }
        else
        {
            cout << "Jogador 1 ganha!" << endl;
        }
    }
    else
    {
        if (a)
        {
            cout << "Jogador 1 ganha!" << endl;
        }
        else
        {
            cout << "Jogador " << ((j1 + j2) % 2 == (1 - p) ? 1 : 2) << " ganha!" << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        if (entrada[3] == 1)
        {
            if (entrada[4] == 1)
            {
                Console.WriteLine("Jogador 2 ganha!");
            }
            else
            {
                Console.WriteLine("Jogador 1 ganha!");
            }
        }
        else
        {
            if (entrada[4] == 1)
            {
                Console.WriteLine("Jogador 1 ganha!");
            }
            else
            {
                Console.WriteLine($"Jogador {((entrada[1] + entrada[2]) % 2 == (1 - entrada[0]) ? 1 : 2)} ganha!");
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

        String[] entrada = in.readLine().trim().split(" ");
        int p = Integer.parseInt(entrada[0]);
        int j1 = Integer.parseInt(entrada[1]);
        int j2 = Integer.parseInt(entrada[2]);
        int r = Integer.parseInt(entrada[3]);
        int a = Integer.parseInt(entrada[4]);

        if (r == 1) {
            if (a == 1) {
                System.out.println("Jogador 2 ganha!");
            } else {
                System.out.println("Jogador 1 ganha!");
            }
        } else {
            if (a == 1) {
                System.out.println("Jogador 1 ganha!");
            } else {
                System.out.printf("Jogador %d ganha!\n", (j1 + j2) % 2 == (1 - p) ? 1 : 2);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [p, j1, j2, r, a] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if (r) {
    if (a) {
        console.log('Jogador 2 ganha!');
    } else {
        console.log('Jogador 1 ganha!');
    }
} else {
    if (a) {
        console.log('Jogador 1 ganha!');
    } else {
        console.log(`Jogador ${(j1 + j2) % 2 === (1 - p) ? 1 : 2} ganha!`);
    }
}
```

### Python 3.9

```py
p, j1, j2, r, a = [int(x) for x in input().strip().split(' ')]

if(r):
    if(a):
        print('Jogador 2 ganha!')
    else:
        print('Jogador 1 ganha!')
else:
    if(a):
        print('Jogador 1 ganha!')
    else:
        print(f'Jogador {1 if (j1 + j2) % 2 == (1 - p) else 2} ganha!')
```