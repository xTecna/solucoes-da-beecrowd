# 2029 - Reservatório de Mel

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2029)

## Solução

Para calcular a área $A$ da boca do recipiente, usamos a fórmula $A = \pi r^{2}$, onde $r$ é o raio, metade do diâmetro.

Para calcular o volume $V$ do cilindro inteiro, usamos a fórmula $V = \pi r^{2} h$, onde $h$ é a altura do cilindro. Neste caso, como temos o volume e o que queremos descobrir é $h$, então podemos manipular a fórmula para $h = \frac{V}{\pi r^{2}}$. Como temos que $A = \pi r^{2}$, podemos primeiro calcular o valor de $A$ e depois fazermos $h = \frac{V}{h}$ para facilitarmos os cálculos.

### C99

```c
#include <stdio.h>

int main()
{
    double V, D;
    double PI = 3.14;

    while (scanf("%lf\n%lf\n", &V, &D) != EOF)
    {
        D /= 2;

        double area = PI * D * D;
        double altura = V / area;

        printf("ALTURA = %.2lf\nAREA = %.2lf\n", altura, area);
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
    double V, D;
    double PI = 3.14;

    while (cin >> V >> D)
    {
        D /= 2;

        double area = PI * D * D;
        double altura = V / area;

        cout << "ALTURA = " << setprecision(2) << fixed << altura << endl;
        cout << "AREA = " << setprecision(2) << fixed << area << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        double PI = 3.14;

        while((entrada = Console.ReadLine()) != null){
            double V = double.Parse(entrada);
            double D = double.Parse(Console.ReadLine());

            D /= 2;

            double area = PI * D * D;
            double altura = V / area;

            Console.WriteLine($"ALTURA = {altura:0.00}");
            Console.WriteLine($"AREA = {area:0.00}");
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

        double PI = 3.14;

        while (in.ready()) {
            double V = Double.parseDouble(in.readLine());
            double D = Double.parseDouble(in.readLine());

            D /= 2;

            double area = PI * D * D;
            double altura = V / area;

            System.out.printf("ALTURA = %.2f\n", altura);
            System.out.printf("AREA = %.2f\n", area);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const PI = 3.14;
while (lines.length) {
    let V = parseFloat(lines.shift());
    let D = parseFloat(lines.shift());

    D /= 2;

    let area = PI * D * D;
    let altura = V / area;

    console.log(`ALTURA = ${altura.toFixed(2)}`);
    console.log(`AREA = ${area.toFixed(2)}`);
}
```

### Python 3.9

```py
PI = 3.14
while True:
    try:
        V = float(input())
        D = float(input())

        D /= 2

        area = PI * D * D
        altura = V / area

        print(f'ALTURA = {altura:.2f}')
        print(f'AREA = {area:.2f}')
    except EOFError:
        break
```