# 1933 - Tri-du

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1933)

## Solução

Analisando as regras, podemos formular maneiras de conseguir a melhor terceira carta possível:

* Se um trio sempre ganha de uma dupla, então se tivermos duas cartas iguais, sempre queremos uma terceira igual também.
* Se não temos duas cartas iguais, nunca vai ser possível fazer um trio. Pelas regras, uma dupla formada por cartas de maior valor ganha de uma de menor valor portanto, neste caso queremos uma carta para fazer dupla com a nossa carta de maior valor.

### C99

```c
#include <stdio.h>

int main()
{
    int A, B;

    scanf("%d %d", &A, &B);

    if (A == B)
    {
        printf("%d\n", A);
    }
    else
    {
        printf("%d\n", A > B ? A : B);
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
    int A, B;

    cin >> A >> B;

    if (A == B)
    {
        cout << A << endl;
    }
    else
    {
        cout << (A > B ? A : B) << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        List<int> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();

        if (entrada[0] == entrada[1])
        {
            Console.WriteLine(entrada[0]);
        }
        else
        {
            Console.WriteLine(Math.Max(entrada[0], entrada[1]));
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
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int A = Integer.parseInt(entrada[0]);
        int B = Integer.parseInt(entrada[1]);

        if (A == B) {
            System.out.println(A);
        } else {
            System.out.println(Math.max(A, B));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if (A === B) {
    console.log(A);
} else {
    console.log(Math.max(A, B));
}
```

### Python 3.9

```py
A, B = [int(x) for x in input().strip().split(' ')]

if(A == B):
    print(A)
else:
    print(max(A, B))
```