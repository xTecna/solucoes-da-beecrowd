# 1012 - Área

## [Descrição](https://www.urionlinejudge.com.br/judge/pt/problems/view/1012)

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