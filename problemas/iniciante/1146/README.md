# 1146 - Sequências Crescentes

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1146)

## Solução

Vide a página [Modelos de entrada e saída](../../../introducao/modelos-de-entrada-e-saida/README.md#saída-com-um-espaço-branco-entre-casos-de-teste) para conferir como imprimir uma sequência de valores com um espaço em branco apenas entre os elementos.

### C99

```c
#include <stdio.h>

int main()
{
    int X;

    while (scanf("%d", &X) != EOF)
    {
        if (X == 0)
        {
            break;
        }

        printf("1");
        for (int i = 2; i <= X; ++i)
        {
            printf(" %d", i);
        }
        printf("\n");
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
    int X;

    while (cin >> X)
    {
        if (X == 0)
        {
            break;
        }

        cout << 1;
        for (int i = 2; i <= X; ++i)
        {
            cout << " " << i;
        }
        cout << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;

class URI {
    static void Main(string[] args) {
        int X;
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            X = int.Parse(entrada);

            if(X == 0){
                break;
            }

            List<int> numeros = new List<int>();
            for(int i = 1; i <= X; ++i){
                numeros.Add(i);
            }

            Console.WriteLine(String.Join(" ", numeros));
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
            int X = Integer.parseInt(in.readLine());

            if(X == 0){
                break;
            }

            String[] numeros = new String[X];
            for(int i = 1; i <= X; ++i){
                numeros[i - 1] = Integer.toString(i);
            }

            System.out.println(String.join(" ", numeros));
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let X = parseInt(lines.shift());

    if (X === 0) {
        break;
    }

    let numeros = [];
    for (let i = 1; i <= X; ++i) {
        numeros.push(i);
    }

    console.log(numeros.join(' '));
}
```

### Python 3.9

```py
while True:
    try:
        X = int(input())

        if(X == 0):
            break

        numeros = [str(x) for x in range(1, X + 1)]
        print(' '.join(numeros))
    except EOFError:
        break
```