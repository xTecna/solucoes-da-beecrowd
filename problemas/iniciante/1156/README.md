# 1156 - Sequência S II

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1156)

## Solução

Repare que a fórmula não é números ímpares sobre números pares, mas sim números ímpares sobre potências de 2. A operação `1 << i` é uma forma de calcular rapidamente `2^i`.

### C99

```c
#include <stdio.h>

int main()
{
    double S;

    S = 0.0;
    for (int i = 0; i < 20; ++i)
    {
        S += (double)(2 * i + 1) / (1 << i);
    }

    printf("%.2lf\n", S);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double S;

    S = 0.0;
    for (int i = 0; i < 20; ++i)
    {
        S += (double)(2 * i + 1) / (1 << i);
    }

    cout << setprecision(2) << fixed << S << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        double S = 0.0;

        for(int i = 0; i < 20; ++i){
            S += (double)(2 * i + 1)/(1 << i);
        }

        Console.WriteLine($"{S:0.00}");
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
        double S = 0.0;

        for (int i = 0; i < 20; ++i) {
            S += (double) (2 * i + 1) / (1 << i);
        }

        System.out.printf("%.2f\n", S);
    }
}
```

### Javascript 12.18

```js
let S = 0.0;

for (let i = 0; i < 20; ++i) {
    S += (2 * i + 1) / (1 << i);
}

console.log(`${S.toFixed(2)}`);
```

### Python 3.9

```py
S = 0.0

for i in range(20):
    S += (2 * i + 1)/(1 << i)

print(f'{S:.2f}')
```