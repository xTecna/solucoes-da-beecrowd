# 1009 - Salário com Bônus

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1009)

## Solução

A compensação do trabalho que o vendedor vai receber ao final das vendas equivale ao salário fixo dele mais 15% das vendas efetuadas por ele. Com isso, basta fazer o cálculo equivalente e imprimir o resultado.

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