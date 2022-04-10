# 1009 - Salário com Bônus

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1009)

## Solução

A compensação do trabalho que o vendedor vai receber ao final das vendas equivale ao salário fixo dele mais 15% das vendas efetuadas por ele. Com isso, basta fazer o cálculo equivalente e imprimir o resultado.

Perceba que o nome do funcionário não é usado para nada, mas é preciso lê-lo mesmo assim. Basta pegar o valor para a variável e não a utilizar mais.

### C99

```c
#include <stdio.h>

int main(){
    char vendedor[10];
    double salario, vendas, total;

    scanf("%s\n%lf\n%lf", &vendedor, &salario, &vendas);

    total = salario + 0.15 * vendas;

    printf("TOTAL = R$ %.2lf\n", total);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    string vendedor;
    double salario, vendas, total;

    cin >> vendedor >> salario >> vendas;

    total = salario + 0.15 * vendas;

    cout << "TOTAL = R$ " << setprecision(2) << fixed << total << endl;

    return 0;
}
```

### C#
```cs
using System;

class URI {
    static void Main(string[] args) {
        string vendedor = Console.ReadLine();
        double salario = double.Parse(Console.ReadLine());
        double vendas = double.Parse(Console.ReadLine());

        double total = salario + 0.15 * vendas;

        Console.WriteLine($"TOTAL = R$ {total:0.00}");
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

        String vendedor = in.readLine();
        double salario = Double.parseDouble(in.readLine());
        double vendas = Double.parseDouble(in.readLine());
        
        double total = salario + 0.15 * vendas;

        System.out.printf("TOTAL = R$ %.2f\n", total);
    }
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let vendedor = lines.shift();
let salario = parseFloat(lines.shift());
let vendas = parseFloat(lines.shift());

let total = salario + 0.15 * vendas;

console.log(`TOTAL = R$ ${total.toFixed(2)}`);
```

### Python 3.9

```python
vendedor = input()
salario = float(input())
vendas = float(input())

total = salario + 0.15 * vendas

print(f"TOTAL = R$ {total:.2f}")
```