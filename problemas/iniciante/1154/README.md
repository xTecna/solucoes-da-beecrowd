# 1154 - Idades

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1154)

## Solução

Dê uma olhada em [Modelos de entrada e saída](../../../introducao/modelos-de-entrada-e-saida/README.md#entrada-até-eof) para entender como ler entradas indefinidamente em qualquer linguagem. Lembrando que o _loop_ também deve ser interrompido caso venha uma idade negativa.

Você só precisa guardar a soma acumulada, contar quantas idades você leu e deixar para calcular a média ao final.

### C99

```c
#include <stdio.h>

int main()
{
    int idade, soma, contador;

    soma = 0;
    contador = 0;
    while (scanf("%d", &idade) != EOF)
    {
        if (idade < 0)
        {
            break;
        }

        soma += idade;
        ++contador;
    }

    printf("%.2lf\n", (double)soma / contador);

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
    int idade, soma, contador;

    soma = 0;
    contador = 0;
    while (cin >> idade)
    {
        if (idade < 0)
        {
            break;
        }

        soma += idade;
        ++contador;
    }

    cout << setprecision(2) << fixed << (double)soma / contador << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string entrada;
        int idade, soma, contador;

        soma = 0;
        contador = 0;
        while((entrada = Console.ReadLine()) != null){
            idade = int.Parse(entrada);

            if(idade < 0){
                break;
            }

            soma += idade;
            ++contador;
        }

        Console.WriteLine($"{(double)soma/contador:0.00}");
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

        int soma, contador;

        soma = 0;
        contador = 0;
        while (in.ready()) {
            int idade = Integer.parseInt(in.readLine());

            if (idade < 0) {
                break;
            }

            soma += idade;
            ++contador;
        }

        System.out.printf("%.2f\n", (double) soma / contador);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [soma, contador] = [0, 0];
while (lines.length) {
    let idade = parseInt(lines.shift().trim());

    if (idade < 0) {
        break;
    }

    soma += idade;
    ++contador;
}

console.log(`${(soma / contador).toFixed(2)}`);
```

### Python 3.9

```py
soma, contador = 0, 0

while True:
    try:
        idade = int(input())

        if(idade < 0):
            break

        soma += idade
        contador += 1
    except EOFError:
        break

print(f'{soma/contador:.2f}')
```