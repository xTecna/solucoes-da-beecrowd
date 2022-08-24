# 1959 - Polígonos Regulares Simples

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1959)

## Solução

O perímetro de um polígono regular de $N$ lados de tamanho $L$ é calculado pela fórmula $N \times L$. Único detalhe a se atentar é que o resultado dessa multiplicação pode ser bem grande, então é necessário usar pelo menos `long` para armazenar o resultado.

### C99

```c
#include <stdio.h>

int main()
{
    long long int N, L;

    scanf("%lld %lld", &N, &L);
    printf("%lld\n", N * L);

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    long long int N, L;

    cin >> N >> L;
    cout << N * L << endl;

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
        List<long> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => long.Parse(x)).ToList();
        Console.WriteLine(entrada[0] * entrada[1]);
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
        System.out.println(Long.parseLong(entrada[0]) * Long.parseLong(entrada[1]));

    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [N, L] = lines.shift().trim().split(' ').map((x) => parseInt(x));
console.log(N * L);
```

### Python 3.9

```py
N, L = [int(x) for x in input().strip().split(' ')]
print(N * L)
```