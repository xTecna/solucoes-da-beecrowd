# 1002 - Área do Círculo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1002)

## Solução

Só aplicar a fórmula da área direto, criando uma variável para guardar o valor de pi dado pelo enunciado ou usando o valor diretamente. Eu só coloquei o valor de pi como constante nas linguagens que permitiam isso para fins didáticos e para sinalizar que este valor alocado não irá mudar de valor (e com isso, a execução do código se torna mais rápida).

Outro detalhe importante sobre esse problema é a forma como você precisa imprimir a saída com exatas 4 casas decimais. Cada linguagem tem a sua maneira de estipular isso, então dê uma olhada.

### C99

```c
#include <stdio.h>

int main(){
    double raio;
    const double PI = 3.14159;

    scanf("%lf", &raio);
    
    printf("A=%.4lf\n", PI * raio * raio);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    double raio;
    const double PI = 3.14159;

    cin >> raio;
    
    cout << "A=" << setprecision(4) << fixed << PI * raio * raio << endl;

    return 0;
}
```

### C#
```cs
using System;

class HelloWorld {
    static void Main(string[] args) {
        const double pi = 3.14159;
        double raio = double.Parse(Console.ReadLine());

        double area = pi * raio * raio;

        Console.WriteLine($"A={area:0.0000}");
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
        final double pi = 3.14159;
        
        double raio = Double.parseDouble(in.readLine());
        double area = pi * raio * raio;

        System.out.printf("A=%.4f\n", area);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

const pi = 3.14159;
let raio = parseFloat(lines.shift());

let area = pi * raio * raio;

console.log(`A=${area.toFixed(4)}`);
```

### Python 3.9

```python
PI = 3.14159
raio = float(input())

area = PI * raio * raio

print(f"A={area:.4f}")
```