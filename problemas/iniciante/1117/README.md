# 1117 - Validação de Nota

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1117)

## Solução

Aqui eu fiz uma restrição com duas variáveis, mas talvez seria mais fácil se você criasse um vetor, colocasse nesse vetor apenas valores válidos e parasse de ler entradas quando o vetor tivesse dois elementos.

### C99

```c
#include <stdio.h>

int main()
{
    double nota, nota1, nota2;

    nota1 = -1.0, nota2 = -1.0;
    while (nota2 == -1.0)
    {
        scanf("%lf", &nota);

        if (nota >= 0.0 && nota <= 10.0)
        {
            if (nota1 == -1.0)
            {
                nota1 = nota;
            }
            else
            {
                nota2 = nota;
            }
        }
        else
        {
            printf("nota invalida\n");
        }
    }

    printf("media = %.2lf\n", (nota1 + nota2) / 2);

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
    double nota, nota1, nota2;

    nota1 = -1.0, nota2 = -1.0;
    while (nota2 == -1.0)
    {
        cin >> nota;

        if (nota >= 0.0 && nota <= 10.0)
        {
            if (nota1 == -1.0)
            {
                nota1 = nota;
            }
            else
            {
                nota2 = nota;
            }
        }
        else
        {
            cout << "nota invalida" << endl;
        }
    }

    cout << "media = " << setprecision(2) << fixed << (nota1 + nota2) / 2 << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        double nota, nota1, nota2;

        nota1 = -1.0;
        nota2 = -1.0;
        while(nota2 == -1.0){
            nota = double.Parse(Console.ReadLine());

            if(nota >= 0.0 && nota <= 10.0){
                if(nota1 == -1.0){
                    nota1 = nota;
                }else{
                    nota2 = nota;
                }
            }else{
                Console.WriteLine("nota invalida");
            }
        }

        Console.WriteLine($"media = {(nota1 + nota2) / 2}");
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

        double nota1, nota2;

        nota1 = -1.0;
        nota2 = -1.0;
        while (nota2 == -1.0) {
            double nota = Double.parseDouble(in.readLine());

            if (nota >= 0.0 && nota <= 10.0) {
                if (nota1 == -1.0) {
                    nota1 = nota;
                } else {
                    nota2 = nota;
                }
            } else {
                System.out.println("nota invalida");
            }
        }

        System.out.printf("media = %.2f\n", (nota1 + nota2) / 2.0);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [nota1, nota2] = [-1.0, -1.0];
while (nota2 === -1.0) {
    let nota = parseFloat(lines.shift());

    if (nota >= 0.0 && nota <= 10.0) {
        if (nota1 === -1.0) {
            nota1 = nota;
        } else {
            nota2 = nota;
        }
    } else {
        console.log('nota invalida');
    }
}

console.log(`media = ${((nota1 + nota2) / 2).toFixed(2)}`);
```

### Python 3.9

```py
nota1, nota2 = -1.0, -1.0
while(nota2 == -1.0):
    nota = float(input())

    if(0.0 <= nota <= 10.0):
        if(nota1 == -1.0):
            nota1 = nota
        else:
            nota2 = nota
    else:
        print('nota invalida')

print(f'media = {(nota1 + nota2) / 2:.2f}')
```