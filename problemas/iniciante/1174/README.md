# 1174 - Seleçao em Vetor I

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1174)

## Solução

Não é necessário guardar o vetor inteiro, apenas ler cada número, avaliar se ele é menor ou igual a 10 e imprimir caso seja, caso não seja, basta ignorar.

### C99

```c
#include <stdio.h>

int main()
{
    double n;

    for (int i = 0; i < 100; ++i)
    {
        scanf("%lf", &n);

        if (n <= 10.0)
        {
            printf("A[%d] = %.1lf\n", i, n);
        }
    }

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
    double n;

    for (int i = 0; i < 100; ++i)
    {
        cin >> n;

        if (n <= 10.0)
        {
            cout << "A[" << i << "] = " << setprecision(1) << fixed << n << endl;
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
        for(int i = 0; i < 100; ++i){
            double n = double.Parse(Console.ReadLine());

            if(n <= 10.0){
                Console.WriteLine($"A[{i}] = {n:0.0}");
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

        for (int i = 0; i < 100; ++i) {
            double n = Double.parseDouble(in.readLine());

            if (n <= 10.0) {
                System.out.printf("A[%d] = %.1f\n", i, n);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

for (let i = 0; i < 100; ++i) {
    let n = parseFloat(lines.shift().trim());

    if (n <= 10) {
        console.log(`A[${i}] = ${n.toFixed(1)}`);
    }
}
```

### Python 3.9

```py
for i in range(100):
    n = float(input())

    if(n <= 10.0):
        print(f'A[{i}] = {n:.1f}')
```