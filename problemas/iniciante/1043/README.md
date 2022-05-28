# 1043 - Triângulo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1043)

## Solução

Podemos pensar em alguns exemplos de tamanhos de lados que não podem formar triângulo (como por exemplo, dois lados muito pequenos e um lado muito grande). Para que os lados `A`, `B` e `C` sejam capazes de formar um triângulo, é necessário que a soma de dois dos lados seja sempre maior que o terceiro lado, ou seja, $A < B + C$, $B < A + C$ e $C < A + B$. Cumprindo essas três inequações, temos três lados de um triângulo.

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

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double A = entrada[0];
        double B = entrada[1];
        double C = entrada[2];
        
        if(A < B + C && B < A + C && C < A + B)
            Console.WriteLine($"Perimetro = {A + B + C:0.0}");
        else
            Console.WriteLine($"Area = {(A + B)/2.0 * C:0.0}");
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
        double C = Double.parseDouble(entrada[2]);
        
        if(A < B + C && B < A + C && C < A + B){
            System.out.printf("Perimetro = %.1f\n", A + B + C);
        }else{
            System.out.printf("Area = %.1f\n", (A + B)/2.0 * C);
        }
    }
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