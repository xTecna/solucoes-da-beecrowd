# 1010 - Cálculo Simples

## [Descrição](https://www.urionlinejudge.com.br/judge/pt/problems/view/1010)

## Solução

Para calcular o total da compra dos dois tipos de produtos, basta multiplicar as respectivas quantidades pelos valores dos produtos e somar esses dois valores. Repare que os códigos dos produtos são inúteis, então em linguagens onde se pode ignorar essas variáveis, pode-se ignorar de forma segura.

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