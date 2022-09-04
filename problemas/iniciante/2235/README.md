# 2235 - Andando no Tempo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2235)

## Solução

Podemos fazer no mínimo uma viagem e no máximo três, então vamos considerar cada número de viagens para decidir como é possível voltar no presente com cada um.

* Com uma viagem apenas é impossível voltar ao presente, já que não tem como termos viagem de $0$ anos.
* Com duas viagens, é possível voltar ao presente se ambas tiverem o mesmo número de anos.
* Com três viagens, é possível voltar ao presente se o tempo de uma das viagens for igual à soma do tempo das duas outras viagens.

### C99

```c
#include <stdio.h>

int main()
{
    int A, B, C;

    scanf("%d %d %d", &A, &B, &C);

    if (A == B || A == C || B == C || A + B == C || A + C == B || B + C == A)
    {
        printf("S\n");
    }
    else
    {
        printf("N\n");
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
    int A, B, C;

    cin >> A >> B >> C;

    if (A == B || A == C || B == C || A + B == C || A + C == B || B + C == A)
    {
        cout << "S" << endl;
    }
    else
    {
        cout << "N" << endl;
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
        int A = entrada[0];
        int B = entrada[1];
        int C = entrada[2];

        if (A == B || A == C || B == C || A + B == C || A + C == B || B + C == A)
        {
            Console.WriteLine("S");
        }
        else
        {
            Console.WriteLine("N");
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
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);
        int C = Integer.parseInt(entrada[2]);

        if (A == B || A == C || B == C || A + B == C || A + C == B || B + C == A) {
            System.out.println("S");
        } else {
            System.out.println("N");
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if (A === B || A === C || B === C || A + B === C || A + C === B || B + C === A) {
    console.log('S');
} else {
    console.log('N');
}
```

### Python 3.9

```py
A, B, C = [int(x) for x in input().strip().split(' ')]

if(A == B or A == C or C == B or A + B == C or A + C == B or B + C == A):
    print('S')
else:
    print('N')
```