# 1014 - Consumo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1014)

## Solução

Se queremos saber o consumo médio do automóvel por km/L, precisamos dividir a distância percorrida (em km) pelo total de combustível gasto (em L).

### C99

```c
#include <stdio.h>

int main(){
    int X;
    double Y, consumo;

    scanf("%d\n%lf", &X, &Y);
    
    consumo = X/Y;

    printf("%.3lf km/l\n", consumo);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    int X;
    double Y, consumo;

    cin >> X >> Y;
    
    consumo = X/Y;

    cout << setprecision(3) << fixed << consumo << " km/l" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        double Y = double.Parse(Console.ReadLine());
        
        double consumo = X/Y;
        
        Console.WriteLine($"{consumo:0.000} km/l");
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static int max(int a, int b){
        return (a + b + Math.abs(a - b))/2;
    }
    
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);
        
        int X = Integer.parseInt(in.readLine());
        double Y = Double.parseDouble(in.readLine());
        
        double consumo = X/Y;
        
        System.out.printf("%.3f km/l\n", consumo);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let X = parseInt(lines.shift());
let Y = parseFloat(lines.shift());

let consumo = X / Y;

console.log(`${consumo.toFixed(3)} km/l`);
```

### Python 3.9

```python
X = int(input())
Y = float(input())

volume = X/Y

print(f"{volume:.3f} km/l")
```