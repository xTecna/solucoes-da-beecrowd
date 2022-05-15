# 1178 - Preenchimento de Vetor

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1178)

## Solução

Fazer um _loop_ que repete 100 vezes o seguinte processo:

* Imprime o valor de `N`
* Divide `N` por 2

### C99

```c
#include <stdio.h>

int main()
{
    double X;

    scanf("%lf", &X);

    for (int i = 0; i < 100; ++i)
    {
        printf("N[%d] = %.4lf\n", i, X);
        X /= 2;
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
    double X;

    cin >> X;

    for (int i = 0; i < 100; ++i)
    {
        cout << "N[" << i << "] = " << setprecision(4) << fixed << X << endl;
        X /= 2;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        double X;

        X = double.Parse(Console.ReadLine());

        for(int i = 0; i < 100; ++i){
            Console.WriteLine($"N[{i}] = {X:0.0000}");
            X /= 2;
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Locale;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
    
        double X = Double.parseDouble(in.readLine());

        for(int i = 0; i < 100; ++i){
            System.out.println(String.format(Locale.US, "N[%d] = %.4f", i, X));
            X /= 2;
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseFloat(lines.shift());

for (let i = 0; i < 100; ++i) {
    console.log(`N[${i}] = ${X.toFixed(4)}`);
    X /= 2;
}
```

### Python 3.9

```py
X = float(input())

for i in range(100):
    print(f'N[{i}] = {X:.4f}')
    X /= 2
```