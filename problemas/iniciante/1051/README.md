# 1051 - Imposto de Renda

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1051)

## Solução

O cálculo do imposto de renda, tanto nesse exercício quanto na vida real, não é uma taxa que é aplicada ao salário inteiro de acordo com a faixa a qual ele pertence. Se esse fosse o caso, um salário de R$ 10500,00 teria que pagar R$ 2940,00 de imposto e um salário de R$ 4000,00 pagaria R$ 720,00.

Só que, na verdade, o imposto é aplicado à parte do salário que se encaixa na faixa, ou seja, a parte do salário que é de R$ 2000,00 a R$ 3000,00 é cobrada 8% dessa parte. Seguem os exemplos com os dois salários mencionados acima.

---

R$ 4000,00:

| Faixa | Parte do salário que cabe na faixa | Taxa | Imposto devido |
| - | - | - | -: |
| de R$ 2000,01 até R$ 3000,00 | R$ 1000,00 | 8% | R$ 800,00 |
| de R$ 3000,01 até R$ 4500,00 | R$ 1000,00 | 18% | R$ 180,00 |

**Imposto total:** R$ 980,00

---

R$ 10500,00:

| Faixa | Parte do salário que cabe na faixa | Taxa | Imposto devido |
| - | - | - | -: |
| de R$ 2000,01 até R$ 3000,00 | R$ 1000,00 | 8% | R$ 800,00 |
| de R$ 3000,01 até R$ 4500,00 | R$ 1500,00 | 18% | R$ 270,00 |
| acima de R$ 4500,00 | R$ 6000,00 | 28% | R$ 1680,00 |

**Imposto total:** R$ 2750,00

---

A abordagem que fica mais fácil de codificar é começar a cobrar de cima pra baixo, pegando a parte do salário que é acima de R$ 4500,00 primeiro e depois ir diminuindo e aplicando o imposto até sobrar a parte isenta, que não é cobrada.

### C99

```c
#include <stdio.h>

int main()
{
    double renda, devido;

    scanf("%lf", &renda);

    devido = 0;
    if (renda > 4500.00)
    {
        devido += (renda - 4500.00) * 0.28;
        renda = 4500.00;
    }
    if (renda > 3000.00)
    {
        devido += (renda - 3000.00) * 0.18;
        renda = 3000.00;
    }
    if (renda > 2000.00)
    {
        devido += (renda - 2000.00) * 0.08;
    }

    if (devido == 0.00)
    {
        printf("Isento\n");
    }
    else
    {
        printf("R$ %.2lf\n", devido);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    double renda, devido;

    cin >> renda;
    devido = 0;

    if (renda > 4500.00)
    {
        devido += (renda - 4500.00) * 0.28;
        renda = 4500.00;
    }
    if (renda > 3000.00)
    {
        devido += (renda - 3000.00) * 0.18;
        renda = 3000.00;
    }
    if (renda > 2000.00)
    {
        devido += (renda - 2000.00) * 0.08;
    }

    if (devido == 0)
    {
        cout << "Isento" << endl;
    }
    else
    {
        cout << "R$ " << setprecision(2) << fixed << devido << endl;
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        double renda = double.Parse(Console.ReadLine());
        double devido = 0;

        if(renda > 4500.00){
            devido += (renda - 4500.00) * 0.28;
            renda = 4500.00;
        }
        if (renda > 3000.00){
            devido += (renda - 3000.00) * 0.18;
            renda = 3000.00;
        }
        if (renda > 2000.00){
            devido += (renda - 2000.00) * 0.08;
        }

        if (devido == 0){
            Console.WriteLine("Isento");
        }else{
            Console.WriteLine($"R$ {devido:0.00}");
        }
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

        double renda = Double.parseDouble(in.readLine());
        double devido = 0;

        if (renda > 4500.00) {
            devido += (renda - 4500.00) * 0.28;
            renda = 4500.00;
        }
        if (renda > 3000.00) {
            devido += (renda - 3000.00) * 0.18;
            renda = 3000.00;
        }
        if (renda > 2000.00) {
            devido += (renda - 2000.00) * 0.08;
        }

        if (devido == 0) {
            System.out.println("Isento");
        } else {
            System.out.printf("R$ %.2f\n", devido);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let renda = parseFloat(lines.shift().trim());

let devido = 0.00;
if (renda > 4500.00) {
    devido += (renda - 4500.00) * 0.28;
    renda = 4500.00;
}
if (renda > 3000.00) {
    devido += (renda - 3000.00) * 0.18;
    renda = 3000.00;
}
if (renda > 2000.00) {
    devido += (renda - 2000.00) * 0.08;
}

if (devido === 0) {
    console.log("Isento");
} else {
    console.log(`R$ ${devido.toFixed(2)}`);
}
```

### Python 3.9

```py
renda = float(input())
devido = 0

if (renda > 4500.00):
    devido += (renda - 4500.00) * 0.28
    renda = 4500.00
if (renda > 3000.00):
    devido += (renda - 3000.00) * 0.18
    renda = 3000.00
if (renda > 2000.00):
    devido += (renda - 2000.00) * 0.08

if (devido == 0):
    print('Isento')
else:
    print(f'R$ {devido:.2f}')
```