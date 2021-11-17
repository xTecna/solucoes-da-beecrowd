# 1043 - Triângulo

## [Descrição](https://www.urionlinejudge.com.br/judge/pt/problems/view/1043)

## Solução

Podemos pensar em alguns exemplos de tamanhos de lados que não podem formar triângulo (como por exemplo, dois lados muito pequenos e um lado muito grande). Para que os lados A, B e C sejam capazes de formar um triângulo, é necessário a soma de dois dos lados seja sempre maior que o terceiro lado. Ou seja,

<img src="https://latex.codecogs.com/png.image?\dpi{110}&space;\bg_white&space;A&space;<&space;B&space;&plus;&space;C\\B&space;<&space;A&space;&plus;&space;C\\C&space;<&space;A&space;&plus;&space;B" title="\bg_white A < B + C\\B < A + C\\C < A + B" />

Cumprindo com essas três inequações, temos três lados de um triângulo.

### C99

```c
#include <stdlib.h>
#include <stdio.h>

int main(){
    double A, B, C;

    scanf("%lf %lf %lf", &A, &B, &C);

    if(A < B + C && B < A + C && C < A + B){
        printf("Perimetro = %.1lf\n", A + B + C);
    }else{
        printf("Area = %.1lf\n", (A + B)/2 * C);
    }

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

    cin >> A >> B >> C;

    if(A < B + C && B < A + C && C < A + B){
        cout << "Perimetro = " << setprecision(1) << fixed << A + B + C << endl;
    }else{
        cout << "Area = " << setprecision(1) << fixed << (A + B)/2 * C << endl;
    }

    return 0;
}
```

### JavaScript 12.18

```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseFloat(x));

if(A < B + C && B < A + C && C < A + B){
    console.log(`Perimetro = ${(A + B + C).toFixed(1)}`);
}else{
    console.log(`Area = ${((A + B)/2 * C).toFixed(1)}`);
}
```

### Python 3.9

```python
A, B, C = [float(x) for x in input().strip().split(' ')]

if(A < B + C and B < A + C and C < A + B):
    print(f"Perimetro = {(A + B + C):.1f}")
else:
    print(f"Area = {((A + B)/2 * C):.1f}")
```