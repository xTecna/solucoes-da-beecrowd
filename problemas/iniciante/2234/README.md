# 2234 - Cachorros-Quentes

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2234)

## Solução

Para calcular quantos cachorros quentes foram consumidos por pessoa, basta fazer $\frac{H}{P}$. Lembre-se de que o resultado precisa ser um número decimal.

### C99

```c
#include <stdio.h>

int main()
{
    int H, P;

    scanf("%d %d", &H, &P);
    printf("%.2lf\n", (double)H / P);

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
    int H, P;

    cin >> H >> P;
    cout << setprecision(2) << fixed << (double)H / P << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        string[] entrada = Console.ReadLine().Trim().Split(' ');
        int H = int.Parse(entrada[0]);
        int P = int.Parse(entrada[1]);

        Console.WriteLine($"{(double)H / P:0.00}");
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
        int H = Integer.parseInt(entrada[0]);
        int P = Integer.parseInt(entrada[1]);

        System.out.printf("%.2f\n", (double) H / P);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [H, P] = lines.shift().trim().split(' ').map((x) => parseInt(x));
console.log((H / P).toFixed(2));
```

### Python 3.9

```py
H, P = [int(x) for x in input().strip().split(' ')]
print(f'{H/P:.2f}')
```