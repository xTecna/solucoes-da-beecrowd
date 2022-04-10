# 1010 - Cálculo Simples

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1010)

## Solução

Para calcular o total da compra dos dois tipos de produtos, basta multiplicar as respectivas quantidades pelos valores dos produtos e somar esses dois valores.

Repare que os códigos dos produtos são inúteis, então em linguagens onde é possível ignorar essas variáveis, Perceba que os códigos dos produtos são inúteis, mas é preciso lê-los mesmo assim. Basta pegar o valor para as variáveis e não as utilizar mais.

### C99

```c
#include <stdio.h>

int main(){
    int codigo1, quantidade1, codigo2, quantidade2;
    double valor1, valor2, valor;

    scanf("%d %d %lf", &codigo1, &quantidade1, &valor1);
    scanf("%d %d %lf", &codigo2, &quantidade2, &valor2);

    valor = quantidade1 * valor1 + quantidade2 * valor2;

    printf("VALOR A PAGAR: R$ %.2lf\n", valor);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    int codigo1, quantidade1, codigo2, quantidade2;
    double valor1, valor2, valor;

    cin >> codigo1 >> quantidade1 >> valor1;
    cin >> codigo2 >> quantidade2 >> valor2;

    valor = quantidade1 * valor1 + quantidade2 * valor2;

    cout << "VALOR A PAGAR: R$ " << setprecision(2) << fixed << valor << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string[] linhaPeca1 = Console.ReadLine().Trim().Split(' ');
        int quantidade1 = int.Parse(linhaPeca1[1]);
        double valor1 = double.Parse(linhaPeca1[2]);

        string[] linhaPeca2 = Console.ReadLine().Trim().Split(' ');
        int quantidade2 = int.Parse(linhaPeca2[1]);
        double valor2 = double.Parse(linhaPeca2[2]);

        double valor = quantidade1 * valor1 + quantidade2 * valor2;

        Console.WriteLine($"VALOR A PAGAR: R$ {valor:0.00}");
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

        String[] linhaPeca1 = in.readLine().trim().split(" ");
        int quantidade1 = Integer.parseInt(linhaPeca1[1]);
        double valor1 = Double.parseDouble(linhaPeca1[2]);

        String[] linhaPeca2 = in.readLine().trim().split(" ");
        int quantidade2 = Integer.parseInt(linhaPeca2[1]);
        double valor2 = Double.parseDouble(linhaPeca2[2]);
        
        double valor = quantidade1 * valor1 + quantidade2 * valor2;

        System.out.printf("VALOR A PAGAR: R$ %.2f\n", valor);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let [codigo1, quantidade1, valor1] = lines.shift().trim().split(" ");
quantidade1 = parseInt(quantidade1);
valor1 = parseFloat(valor1);

let [codigo2, quantidade2, valor2] = lines.shift().trim().split(" ");
quantidade2 = parseInt(quantidade2);
valor2 = parseFloat(valor2);

let valor = quantidade1 * valor1 + quantidade2 * valor2;

console.log(`VALOR A PAGAR: R$ ${valor.toFixed(2)}`);
```

### Python 3.9

```python
codigo1, quantidade1, valor1 = input().split(' ')
quantidade1 = int(quantidade1)
valor1 = float(valor1)

codigo2, quantidade2, valor2 = input().split(' ')
quantidade2 = int(quantidade2)
valor2 = float(valor2)

total = quantidade1 * valor1 + quantidade2 * valor2

print(f"VALOR A PAGAR: R$ {total:.2f}")
```