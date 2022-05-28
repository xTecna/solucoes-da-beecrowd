# 1048 - Aumento de Salário

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1048)

## Solução

Usar uma variável apenas para o percentual de reajuste ajuda a gente a arrumar melhor o raciocínio necessário para resolver esse problema.

### C99

```c
#include <stdio.h>

int main() {
    int reajuste;
    double salario;
    
    scanf("%lf", &salario);
    
    if(salario <= 400.00)
        reajuste = 15;
    else if(salario <= 800.00)
        reajuste = 12;
    else if(salario <= 1200.00)
        reajuste = 10;
    else if(salario <= 2000.00)
        reajuste = 7;
    else
        reajuste = 4;
    
    printf("Novo salario: %.2lf\n", salario * (1 + reajuste/100.00));
    printf("Reajuste ganho: %.2lf\n", salario * reajuste/100.00);
    printf("Em percentual: %d \%\n", reajuste);
    
    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main() {
    int reajuste;
    double salario;
    
    cin >> salario;
    
    if(salario <= 400.00)
        reajuste = 15;
    else if(salario <= 800.00)
        reajuste = 12;
    else if(salario <= 1200.00)
        reajuste = 10;
    else if(salario <= 2000.00)
        reajuste = 7;
    else
        reajuste = 4;
    
    cout << "Novo salario: " << setprecision(2) << fixed << salario * (1 + reajuste/100.0) << endl;
    cout << "Reajuste ganho: " << setprecision(2) << fixed << salario * reajuste/100.0 << endl;
    cout << "Em percentual: " << reajuste << " %" << endl;
    
    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int reajuste;
        double salario;
        
        salario = double.Parse(Console.ReadLine());
        
        if(salario <= 400.00)
            reajuste = 15;
        else if(salario <= 800.00)
            reajuste = 12;
        else if(salario <= 1200.00)
            reajuste = 10;
        else if(salario <= 2000.00)
            reajuste = 7;
        else
            reajuste = 4;
        
        Console.WriteLine($"Novo salario: {salario * (1 + reajuste/100.0):0.00}");
        Console.WriteLine($"Reajuste ganho: {salario * reajuste/100.0:0.00}");
        Console.WriteLine($"Em percentual: {reajuste} %");
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
        
        int reajuste;
        double salario;
        
        salario = Double.parseDouble(in.readLine());
        
        if(salario <= 400.00)
            reajuste = 15;
        else if(salario <= 800.00)
            reajuste = 12;
        else if(salario <= 1200.00)
            reajuste = 10;
        else if(salario <= 2000.00)
            reajuste = 7;
        else
            reajuste = 4;
        
        System.out.printf("Novo salario: %.2f\n", salario * (1 + reajuste/100.00));
        System.out.printf("Reajuste ganho: %.2f\n", salario * reajuste/100.00);
        System.out.printf("Em percentual: %d %%\n", reajuste);
    }
}
```

### JavaScript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let salario = parseFloat(lines.shift());
let reajuste;

if (salario <= 400.00)
    reajuste = 15;
else if (salario <= 800.00)
    reajuste = 12;
else if (salario <= 1200.00)
    reajuste = 10;
else if (salario <= 2000.00)
    reajuste = 7;
else
    reajuste = 4;

console.log(`Novo salario: ${(salario * (1 + reajuste / 100.0)).toFixed(2)}`);
console.log(`Reajuste ganho: ${(salario * reajuste / 100.0).toFixed(2)}`);
console.log(`Em percentual: ${reajuste} %`);
```

### Python 3.9

```py
salario = float(input())
reajuste = 0

if(salario <= 400.00):
    reajuste = 15
elif(salario <= 800.00):
    reajuste = 12
elif(salario <= 1200.00):
    reajuste = 10
elif(salario <= 2000.00):
    reajuste = 7
else:
    reajuste = 4

print(f'Novo salario: {salario * (1 + reajuste/100):.2f}')
print(f'Reajuste ganho: {salario * reajuste/100:.2f}')
print(f'Em percentual: {reajuste} %')
```