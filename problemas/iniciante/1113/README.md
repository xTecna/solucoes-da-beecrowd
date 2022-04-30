# 1113 - Crescente e Decrescente

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1113)

## Solução

Dê uma olhada em [Modelos de entrada e saída](../../../introducao/modelos-de-entrada-e-saida/README.md#entrada-até-eof) para entender como ler entradas indefinidamente em qualquer linguagem. Lembrando que quando lemos dois valores iguais, precisamos dar `break` para interromper o *loop*.

### C99

```c
#include <stdio.h>

int main()
{
    int X, Y;

    while (scanf("%d %d", &X, &Y) != EOF)
    {
        if (X == Y)
        {
            break;
        }

        if (X < Y)
        {
            printf("Crescente\n");
        }
        else
        {
            printf("Decrescente\n");
        }
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
    int X, Y;

    while (cin >> X >> Y)
    {
        if (X == Y)
        {
            break;
        }

        if (X < Y)
        {
            cout << "Crescente" << endl;
        }
        else
        {
            cout << "Decrescente" << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] numeros = entrada.Trim().Split(' ');
            int X = int.Parse(numeros[0]);
            int Y = int.Parse(numeros[1]);

            if(X == Y){
                break;
            }

            if(X < Y){
                Console.WriteLine("Crescente");
            }else{
                Console.WriteLine("Decrescente");
            }
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
    
        while(in.ready()){
            String[] entrada = in.readLine().trim().split(" ");
            int X = Integer.parseInt(entrada[0]);
            int Y = Integer.parseInt(entrada[1]);

            if(X == Y){
                break;
            }

            if(X < Y){
                System.out.println("Crescente");
            }else{
                System.out.println("Decrescente");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (X === Y) {
        break;
    }

    if (X < Y) {
        console.log("Crescente");
    } else {
        console.log("Decrescente");
    }
}
```

### Python 3.9

```py
while(True):
    try:
        X, Y = [int(x) for x in input().strip().split(' ')]

        if(X == Y):
            break

        if(X < Y):
            print('Crescente')
        else:
            print('Decrescente')
    except EOFError:
        break
```