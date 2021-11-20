# 1008 - Salário

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1008)

## Solução

Para calcular o salário do funcionário, basta multiplicar o valor que ele recebe por hora pelo número de horas trabalhadas. Perceba que a variável número não é usada para absolutamente nada, mas decidimos lê-la mesmo assim (e para algumas linguagens, é realmente necessário ler o número, mesmo não usando ele para nada depois).

### C99

```c
#include <stdio.h>

int main(){
    int numero, horas;
    double valor, salario;

    scanf("%d\n%d\n%lf", &numero, &horas, &valor);

    salario = valor * horas;

    printf("NUMBER = %d\nSALARY = U$ %.2lf\n", numero, salario);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    int numero, horas;
    double valor, salario;

    cin >> numero >> horas >> valor;

    salario = valor * horas;

    cout << "NUMBER = " << numero << endl;
    cout << "SALARY = U$ " << setprecision(2) << fixed << salario << endl;

    return 0;
}
```

### JavaScript 12.18

```javascript
let input = require("fs").readFileSync("/dev/stdin", "utf8");
let lines = input.split("\n");

let numero = parseInt(lines.shift());
let horas = parseInt(lines.shift());
let valor = parseFloat(lines.shift());

let salario = valor * horas;

console.log(`NUMBER = ${numero}`);
console.log(`SALARY = U$ ${salario.toFixed(2)}`);
```

### Python 3.9

```python
numero = int(input())
horas = int(input())
valor = float(input())

salario = valor * horas

print(f"NUMBER = {numero}")
print(f"SALARY = U$ {salario:.2f}")
```