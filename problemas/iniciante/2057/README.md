# 2057 - Fuso Horário

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2057)

## Solução

Vide a seção de [deslocar dentro de um intervalo de 0 a n - 1](../../../base-teorica/matematica/macetes/README.md#deslocar-dentro-de-um-intervalo-0-n---1) para entender como conseguir um horário sempre entre 0 e 23 horas.

### C99

```c
#include <stdio.h>

int main()
{
    int S, T, F;

    scanf("%d %d %d", &S, &T, &F);
    printf("%d\n", (24 + S + T + F) % 24);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int S, T, F;

    cin >> S >> T >> F;
    cout << (24 + S + T + F) % 24 << endl;

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
        Console.WriteLine((24 + entrada[0] + entrada[1] + entrada[2]) % 24);
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
        System.out.println(
                (24 + Integer.parseInt(entrada[0]) + Integer.parseInt(entrada[1]) + Integer.parseInt(entrada[2])) % 24);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [S, T, F] = lines.shift().trim().split(' ').map((x) => parseInt(x));
console.log((24 + S + T + F) % 24);
```

### Python 3.9

```py
S, T, F = [int(x) for x in input().strip().split(' ')]
print((24 + S + T + F) % 24)
```