# 2718 - Luzes de Natal

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2718)

## Solução

Vide [bases numéricas](../../../base-teorica/matematica/base-numerica/README.md) para entender o raciocínio por trás da resolução do problema. Enquanto passamos o número para a base binária, vemos se temos um caractere `1` ou `0`. Caso seja um, acrescentamos na nossa variável de controle, acumulando os números `1` que lemos até aquele momento. Caso contrário, caso seja `0`, nós trocamos a resposta pelo valor acumulado, caso este seja maior, e resetamos o nosso valor acumulado pra `0`.

### C99

```c
#include <stdio.h>

int max(int a, int b)
{
    return a > b ? a : b;
}

int main()
{
    int N;
    long long int X;

    scanf("%d", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%lld", &X);

        int resposta = 0, contador = 0;
        while (X > 0)
        {
            if (X % 2 == 1)
            {
                ++contador;
            }
            else
            {
                resposta = max(resposta, contador);
                contador = 0;
            }
            X /= 2;
        }
        resposta = max(resposta, contador);

        printf("%d\n", resposta);
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int N;
    long long int X;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        int resposta = 0, contador = 0;
        while (X > 0)
        {
            if (X % 2 == 1)
            {
                ++contador;
            }
            else
            {
                resposta = max(resposta, contador);
                contador = 0;
            }
            X /= 2;
        }
        resposta = max(resposta, contador);

        cout << resposta << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Runtime;

class URI {
    static void Main(string[] args) {
        int N = int.Parse(Console.ReadLine());

        for(int i = 0; i < N; ++i){
            long X = long.Parse(Console.ReadLine());

            int resposta = 0, contador = 0;
            while(X > 0){
                if(X % 2 == 1){
                    ++contador;
                }else{
                    resposta = Math.Max(resposta, contador);
                    contador = 0;
                }
                X /= 2;
            }
            resposta = Math.Max(resposta, contador);

            Console.WriteLine(resposta);
        }
    }
}
```

### Java 14

```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.Math;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            long X = Long.parseLong(in.readLine());

            int resposta = 0, contador = 0;
            while (X > 0) {
                if (X % 2 == 1) {
                    ++contador;
                } else {
                    resposta = Math.max(resposta, contador);
                    contador = 0;
                }
                X /= 2;
            }
            resposta = Math.max(resposta, contador);

            System.out.println(resposta);
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    let [resposta, contador] = [0, 0];
    while (X > 0) {
        if (X % 2 === 1) {
            ++contador;
        } else {
            resposta = Math.max(resposta, contador);
            contador = 0;
        }
        X = Math.floor(X / 2);
    }
    resposta = Math.max(resposta, contador);

    console.log(resposta);
}
```

### Python 3.9

```py
N = int(input())
for _ in range(N):
    X = int(input())

    resposta, contador = 0, 0
    while(X > 0):
        if(X % 2 == 1):
            contador += 1
        else:
            resposta = max(resposta, contador)
            contador = 0
        X //= 2
    resposta = max(resposta, contador)

    print(resposta)
```