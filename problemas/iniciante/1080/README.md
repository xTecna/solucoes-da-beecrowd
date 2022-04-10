# 1080 - Maior e Posição

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1080)

## Solução

Você não precisa ter o vetor inteiro como uma variável para resolver este problema, você pode ler um número de cada vez e ir verificando se o valor é maior do que o maior valor que você tem em mãos. Com isso, o primeiro valor de `maior` ou precisa ser um número muito pequeno ou pode ser o primeiro número que você imprimir. Para seguir com essa segunda alternativa, pode ser interessante ler o primeiro elemento separadamente e fazer o `for` até 99 em vez de 100.

### C99

```c
#include <limits.h>
#include <stdio.h>

int main()
{
    int i, N, maior, maior_pos;

    maior = INT_MIN;
    for (i = 1; i <= 100; ++i)
    {
        scanf("%d", &N);
        if (N > maior)
        {
            maior = N;
            maior_pos = i;
        }
    }

    printf("%d\n%d\n", maior, maior_pos);

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <climits>

using namespace std;

int main()
{
    int numero, maior, posicao;

    maior = INT_MIN;
    posicao = 1;
    for (int i = 0; i < 100; ++i)
    {
        scanf("%d", &numero);

        if (numero > maior)
        {
            maior = numero;
            posicao = i + 1;
        }
    }

    printf("%d\n%d\n", maior, posicao);

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int numero, maior = int.MinValue, posicao = 1;

        for(int i = 0; i < 100; ++i){
            numero = int.Parse(Console.ReadLine());

            if(numero > maior){
                maior = numero;
                posicao = i + 1;
            }
        }

        Console.WriteLine(maior);
        Console.WriteLine(posicao);
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
                
        int numero, maior = Integer.MIN_VALUE, posicao = 1;

        for(int i = 0; i < 100; ++i){
            numero = Integer.parseInt(in.readLine());

            if(numero > maior){
                maior = numero;
                posicao = i + 1;
            }
        }

        System.out.printf("%d\n%d\n", maior, posicao);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [maior, posicao] = [Number.MIN_VALUE, 1];

for (let i = 0; i < 100; ++i) {
    let numero = parseInt(lines.shift());

    if (numero > maior) {
        maior = numero;
        posicao = i + 1;
    }
}

console.log(maior);
console.log(posicao);
```

### Python 3.9

```py
import math

maior, posicao = -math.inf, 1

for i in range(100):
    numero = int(input())

    if(numero > maior):
        maior = numero
        posicao = i + 1

print(maior)
print(posicao)
```