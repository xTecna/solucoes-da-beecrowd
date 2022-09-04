# 1963 - O Filme

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1963)

## Solução

A fórmula para calcular o aumento de um preço que antes era $A$ e agora é $B$ em pontos percentuais é $100 \times \frac{A}{B} - 100$ ou $100 - (\frac{A}{B} - 1)$.

### C99

```c
#include <stdio.h>

int main()
{
    double A, B;

    scanf("%lf %lf", &A, &B);
    printf("%.2lf%%\n", 100 * B / A - 100);

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
    double A, B;

    cin >> A >> B;
    cout << setprecision(2) << fixed << 100 * B / A - 100 << '%' << endl;

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
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        Console.WriteLine($"{100 * entrada[1] / entrada[0] - 100:0.00}%");
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
        double A = Double.parseDouble(entrada[0]);
        double B = Double.parseDouble(entrada[1]);

        System.out.printf("%.2f%%\n", 100 * B / A - 100);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B] = lines.shift().trim().split(' ').map((x) => parseFloat(x));
console.log(`${(100 * B / A - 100).toFixed(2)}%`);
```

### Python 3.9

```py
A, B = [float(x) for x in input().strip().split(' ')]
print(f'{(100 * B / A - 100):.2f}%')
```