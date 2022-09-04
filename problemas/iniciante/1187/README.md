# 1187 - Área Superior

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1187)

## Solução

Esse problema é de uma série de diversos problemas que se resolvem mais ou menos todos do mesmo jeito. Verifique as soluções deste problema e tente resolver os outros problemas com o mesmo raciocínio.

Série:

* [1181 - Linha na Matriz](../1181/README.md)
* [1182 - Coluna na Matriz](../1182/README.md)
* [1183 - Acima da Diagonal Principal](../1183/README.md)
* [1184 - Abaixo da Diagonal Principal](../1184/README.md)
* [1185 - Acima da Diagonal Secundária](../1185/README.md)
* [1186 - Abaixo da Diagonal Secundária](../1186/README.md)
* [1187 - Área Superior](../1187/README.md)
* [1188 - Área Inferior](../1188/README.md)
* [1189 - Área Esquerda](../1189/README.md)
* [1190 - Área Direita](../1190/README.md)

### C99

```c
#include <stdio.h>

int main()
{
    char O;
    int contador;
    double soma, numero;

    scanf("%c", &O);

    soma = 0.0;
    contador = 0;
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            scanf("%lf", &numero);

            if ((i < 5) && (i < j && j < 11 - i))
            {
                soma += numero;
                ++contador;
            }
        }
    }

    printf("%.1lf\n", O == 'S' ? soma : soma / contador);

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
    char O;
    int contador;
    double soma, numero;

    cin >> O;

    soma = 0.0;
    contador = 0;
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            cin >> numero;

            if ((i < 5) && (i < j && j < 11 - i))
            {
                soma += numero;
                ++contador;
            }
        }
    }

    cout << setprecision(1) << fixed << ((O == 'S') ? soma : soma / contador) << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string O = Console.ReadLine().Trim();

        int contador = 0;
        double soma = 0.0;
        for(int i = 0; i < 12; ++i){
            for(int j = 0; j < 12; ++j){
                double numero = double.Parse(Console.ReadLine());

                if((i < 5) && (i < j && j < 11 - i)){
                    soma += numero;
                    ++contador;
                }
            }
        }

        if(O == "S"){
            Console.WriteLine($"{soma:0.0}");
        }else{
            Console.WriteLine($"{soma/contador:0.0}");
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

        String O = in.readLine().trim();

        int contador = 0;
        double soma = 0.0;
        for (int i = 0; i < 12; ++i) {
            for (int j = 0; j < 12; ++j) {
                double numero = Double.parseDouble(in.readLine());

                if ((i < 5) && (i < j && j < 11 - i)) {
                    soma += numero;
                    ++contador;
                }
            }
        }

        System.out.printf("%.1f\n", (O.equals("S") ? soma : soma / contador));
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let O = lines.shift().trim();

let soma = 0.0;
let contador = 0;
for (let i = 0; i < 12; ++i) {
    for (let j = 0; j < 12; ++j) {
        let numero = parseFloat(lines.shift());

        if ((i < 5) && (i < j && j < 11 - i)) {
            soma += numero;
            ++contador;
        }
    }
}

if (O === 'S') {
    console.log(`${soma.toFixed(1)}`);
} else {
    console.log(`${(soma / contador).toFixed(1)}`);
}
```

### Python 3.9

```py
O = input()

soma = 0.0
contador = 0
for i in range(12):
    for j in range(12):
        numero = float(input())

        if(i < 5 and i < j < 11 - i):
            soma += numero
            contador += 1

if(O == 'S'):
    print(f'{soma:.1f}')
else:
    print(f'{soma/contador:.1f}')
```