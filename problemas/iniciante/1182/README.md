# 1182 - Coluna na Matriz

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1182)

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
    int C;
    char T;
    double soma, numero;

    soma = 0.0;
    scanf("%d\n%c", &C, &T);
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            scanf("%lf", &numero);

            if (j == C)
            {
                soma += numero;
            }
        }
    }

    printf("%.1lf\n", T == 'S' ? soma : soma / 12);

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
    int C;
    char T;
    double soma, numero;

    soma = 0.0;
    cin >> C >> T;
    for (int i = 0; i < 12; ++i)
    {
        for (int j = 0; j < 12; ++j)
        {
            cin >> numero;

            if (j == C)
            {
                soma += numero;
            }
        }
    }

    cout << setprecision(1) << fixed << (T == 'S' ? soma : soma / 12) << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        string T = Console.ReadLine();

        double soma = 0.0;
        for(int i = 0; i < 12; ++i){
            for(int j = 0; j < 12; ++j){
                double numero = double.Parse(Console.ReadLine());

                if(j == C){
                    soma += numero;
                }
            }
        }

        if(T == "S"){
            Console.WriteLine($"{soma:0.0}");
        }else{
            Console.WriteLine($"{soma/12:0.0}");
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

        int C = Integer.parseInt(in.readLine());
        String T = in.readLine();

        double soma = 0.0;
        for (int i = 0; i < 12; ++i) {
            for (int j = 0; j < 12; ++j) {
                double numero = Double.parseDouble(in.readLine());

                if (j == C) {
                    soma += numero;
                }
            }
        }

        if (T.equals("S")) {
            System.out.printf("%.1f\n", soma);
        } else {
            System.out.printf("%.1f\n", soma / 12.0);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = parseInt(lines.shift().trim());
let T = lines.shift().trim();

let soma = 0.0;
for (let i = 0; i < 12; ++i) {
    for (let j = 0; j < 12; ++j) {
        let numero = parseFloat(lines.shift());

        if (j === C) {
            soma += numero;
        }
    }
}

if (T === 'S') {
    console.log(`${soma.toFixed(1)}`);
} else {
    console.log(`${(soma / 12).toFixed(1)}`);
}
```

### Python 3.9

```py
C = int(input())
T = input()

soma = 0.0
for _ in range(12):
    for j in range(12):
        numero = float(input())

        if(j == C):
            soma += numero

if(T == 'S'):
    print(f'{soma:.1f}')
else:
    print(f'{soma/12:.1f}')
```