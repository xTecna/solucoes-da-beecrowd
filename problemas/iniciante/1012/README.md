# 1012 - Área

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1012)

## Solução

As fórmulas que você pode usar são:

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;\text{Area&space;do&space;Triangulo}&space;=&space;\frac{A&space;\times&space;C}{2}" title="\bg_white \text{Area do Triangulo} = \frac{A \times C}{2}" />

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;\text{Area&space;do&space;Circulo}&space;=&space;\pi&space;\times&space;C^{2}" title="\bg_white \text{Area do Circulo} = \pi \times C^{2}" />

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;\text{Area&space;do&space;Trapezio}&space;=&space;\frac{A&space;&plus;&space;B}{2}&space;\times&space;C" title="\bg_white \text{Area do Trapezio} = \frac{A + B}{2} \times C" />

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;\text{Area&space;do&space;Quadrado}&space;=&space;B&space;\times&space;B" title="\bg_white \text{Area do Quadrado} = B \times B" />

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;\text{Area&space;do&space;Retangulo}&space;=&space;A&space;\times&space;B" title="\bg_white \text{Area do Retangulo} = A \times B" />

### C99

```c
#include <stdio.h>

int main(){
    double A, B, C;
    const double PI = 3.14159;

    scanf("%lf\n%lf\n%lf", &A, &B, &C);

    printf("TRIANGULO: %.3lf\n", (A * C)/2.0);
    printf("CIRCULO: %.3lf\n", PI * C * C);
    printf("TRAPEZIO: %.3lf\n", (A + B)/2.0 * C);
    printf("QUADRADO: %.3lf\n", B * B);
    printf("RETANGULO: %.3lf\n", A * B);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    double A, B, C;
    const double PI = 3.14159;

    cin >> A >> B >> C;

    cout << "TRIANGULO: " << setprecision(3) << fixed << (A * C)/2.0 << endl;
    cout << "CIRCULO: " << setprecision(3) << fixed << PI * C * C << endl;
    cout << "TRAPEZIO: " << setprecision(3) << fixed << (A + B)/2.0 * C << endl;
    cout << "QUADRADO: " << setprecision(3) << fixed << B * B << endl;
    cout << "RETANGULO: " << setprecision(3) << fixed << A * B << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        const double PI = 3.14159;
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double A = entrada[0];
        double B = entrada[1];
        double C = entrada[2];
        
        double areaTriangulo = (A * C)/2;
        double areaCirculo = PI * C * C;
        double areaTrapezio = (A + B)/2 * C;
        double areaQuadrado = B * B;
        double areaRetangulo = A * B;
        
        Console.WriteLine($"TRIANGULO: {areaTriangulo:0.000}");
        Console.WriteLine($"CIRCULO: {areaCirculo:0.000}");
        Console.WriteLine($"TRAPEZIO: {areaTrapezio:0.000}");
        Console.WriteLine($"QUADRADO: {areaQuadrado:0.000}");
        Console.WriteLine($"RETANGULO: {areaRetangulo:0.000}");
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
        
        double PI = 3.14159;
        String[] entrada = in.readLine().trim().split(" ");
        double A = Double.parseDouble(entrada[0]);
        double B = Double.parseDouble(entrada[1]);
        double C = Double.parseDouble(entrada[2]);

        double areaTriangulo = (A * C)/2;
        double areaCirculo = PI * C * C;
        double areaTrapezio = (A + B)/2 * C;
        double areaQuadrado = B * B;
        double areaRetangulo = A * B;

        System.out.printf("TRIANGULO: %.3f\n", areaTriangulo);
        System.out.printf("CIRCULO: %.3f\n", areaCirculo);
        System.out.printf("TRAPEZIO: %.3f\n", areaTrapezio);
        System.out.printf("QUADRADO: %.3f\n", areaQuadrado);
        System.out.printf("RETANGULO: %.3f\n", areaRetangulo);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

const PI = 3.14159;

let [A, B, C] = lines.shift().split(" ").map((x) => parseFloat(x));

const areaTriangulo = (A * C) / 2;
const areaCirculo = PI * C * C;
const areaTrapezio = ((A + B) / 2) * C;
const areaQuadrado = B * B;
const areaRetangulo = A * B;

console.log(`TRIANGULO: ${areaTriangulo.toFixed(3)}`);
console.log(`CIRCULO: ${areaCirculo.toFixed(3)}`);
console.log(`TRAPEZIO: ${areaTrapezio.toFixed(3)}`);
console.log(`QUADRADO: ${areaQuadrado.toFixed(3)}`);
console.log(`RETANGULO: ${areaRetangulo.toFixed(3)}`);
```

### Python 3.9

```python
PI = 3.14159

A, B, C = [float(x) for x in input().split(' ')]

areaTriangulo = (A * C)/2
areaCirculo = PI * C * C
areaTrapezio = (A + B)/2 * C
areaQuadrado = B * B
areaRetangulo = A * B

print(f"TRIANGULO: {areaTriangulo:.3f}")
print(f"CIRCULO: {areaCirculo:.3f}")
print(f"TRAPEZIO: {areaTrapezio:.3f}")
print(f"QUADRADO: {areaQuadrado:.3f}")
print(f"RETANGULO: {areaRetangulo:.3f}")
```