# 1015 - Distância Entre Dois Pontos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1015)

## Solução

Aplicação direta da fórmula apresentada no enunciado. Para a maioria das linguagens, é necessário recorrer a uma biblioteca externa para usar a operação da raiz quadrada.

### C99

```c
#include <stdio.h>
#include <math.h>

int main(){
    double x1, y1, x2, y2, distancia;

    scanf("%lf %lf\n%lf %lf", &x1, &y1, &x2, &y2);

    distancia = sqrt((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1));

    printf("%.4lf\n", distancia);

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
    double x1, y1, x2, y2, distancia;

    cin >> x1 >> y1 >> x2 >> y2;

    distancia = sqrt((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1));

    cout << setprecision(4) << fixed << distancia << endl;

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        List<double> entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double x1 = entrada[0];
        double y1 = entrada[1];
        
        entrada = Console.ReadLine().Trim().Split(' ').Select((x) => double.Parse(x)).ToList();
        double x2 = entrada[0];
        double y2 = entrada[1];
        
        double distancia = Math.Sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
        
        Console.WriteLine($"{distancia:0.0000}");
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
        
        String[] entrada = in.readLine().split(" ");
        double x1 = Double.parseDouble(entrada[0]);
        double y1 = Double.parseDouble(entrada[1]);
        
        entrada = in.readLine().split(" ");
        double x2 = Double.parseDouble(entrada[0]);
        double y2 = Double.parseDouble(entrada[1]);
        
        double distancia = Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));
        
        System.out.printf("%.4f\n", distancia);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [x1, y1] = lines.shift().split(" ").map((x) => parseFloat(x));
let [x2, y2] = lines.shift().split(" ").map((x) => parseFloat(x));

let distancia = Math.sqrt((x2 - x1) * (x2 - x1) + (y2 - y1) * (y2 - y1));

console.log(distancia.toFixed(4));
```

### Python 3.9

```python
import math

x1, y1 = [float(x) for x in input().split(' ')]
x2, y2 = [float(x) for x in input().split(' ')]

distancia = math.sqrt((x2 - x1)*(x2 - x1) + (y2 - y1)*(y2 - y1))

print(f"{distancia:.4f}")
```