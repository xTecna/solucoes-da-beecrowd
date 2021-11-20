# 1036 - Fórmula de Bhaskara

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1036)

## Solução

O enunciado já dá as dicas para gente, nós teremos resultados válidos se essas duas coisas acontecerem juntas:

* O valor de A tem que ser diferente de zero;
* O valor de delta tem que ser não-negativo.

Não há necessidade alguma de imprimir apenas um R1 caso delta seja igual a zero, até no ponto de vista matemático. Quando delta é igual a zero, significa que temos duas raízes com o mesmo valor, não só uma raiz, então você pode imprimir as duas com o mesmo valor corretamente.

> Você pode perceber que eu deixei para testar se A é diferente de zero depois do cálculo do delta, fiz isso apenas para simplificar o código.


### C99

```c
#include <stdio.h>
#include <math.h>

int main(){
    double a, b, c, delta, R1, R2;

    scanf("%lf %lf %lf", &a, &b, &c);

    delta = b * b - 4 * a * c;

    if(a != 0 && delta > -1){
        R1 = (- b + sqrt(delta))/(2 * a);
        R2 = (- b - sqrt(delta))/(2 * a);
        
        printf("R1 = %.5lf\nR2 = %.5lf\n", R1, R2);
    }else{
        printf("Impossivel calcular\n");
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main(){
    double a, b, c, delta, R1, R2;

    cin >> a >> b >> c;

    delta = b * b - 4 * a * c;

    if(a != 0 && delta > -1){
        R1 = (- b + sqrt(delta))/(2 * a);
        R2 = (- b - sqrt(delta))/(2 * a);
        
        cout << "R1 = " << setprecision(5) << fixed << R1 << endl;
        cout << "R2 = " << setprecision(5) << fixed << R2 << endl;
    }else{
        cout << "Impossivel calcular" << endl;
    }

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [a, b, c] = lines.shift().trim().split(" ").map((x) => parseFloat(x));

let delta = b * b - 4 * a * c;

if (a !== 0 && delta > -1) {
  let R1 = (-b + Math.sqrt(delta)) / (2 * a);
  let R2 = (-b - Math.sqrt(delta)) / (2 * a);

  console.log(`R1 = ${R1.toFixed(5)}`);
  console.log(`R2 = ${R2.toFixed(5)}`);
} else {
  console.log("Impossivel calcular");
}
```

### Python 3.9

```python
import math

a, b, c = [float(x) for x in input().strip().split(' ')]

delta = b * b - 4 * a * c

if(a != 0 and delta > -1):
    R1 = (- b + math.sqrt(delta))/(2 * a)
    R2 = (- b - math.sqrt(delta))/(2 * a)

    print(f"R1 = {R1:.5f}")
    print(f"R2 = {R2:.5f}")
else:
    print("Impossivel calcular")
```