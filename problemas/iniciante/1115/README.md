# 1115 - Quadrante

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1115)

## Solução

Vide problema [1091 - Divisão da Nlogônia](../../ad-hoc/1091/README.md).

Apenas atentar ao fato de que se recebe entradas até `X = 0` ou `Y = 0`.

### C99

```c
#include <stdio.h>

int main()
{
    int X, Y;

    while (scanf("%d %d", &X, &Y) != EOF)
    {
        if (X == 0 || Y == 0)
        {
            break;
        }

        if (X > 0)
        {
            if (Y > 0)
            {
                printf("primeiro\n");
            }
            else
            {
                printf("quarto\n");
            }
        }
        else
        {
            if (Y > 0)
            {
                printf("segundo\n");
            }
            else
            {
                printf("terceiro\n");
            }
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
        if (X == 0 || Y == 0)
        {
            break;
        }

        if (X > 0)
        {
            if (Y > 0)
            {
                cout << "primeiro" << endl;
            }
            else
            {
                cout << "quarto" << endl;
            }
        }
        else
        {
            if (Y > 0)
            {
                cout << "segundo" << endl;
            }
            else
            {
                cout << "terceiro" << endl;
            }
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
            int X = int.Parse(numeros[0]), Y = int.Parse(numeros[1]);

            if(X == 0 || Y == 0){
                break;
            }

            if(X > 0){
                if(Y > 0){
                    Console.WriteLine("primeiro");
                }else{
                    Console.WriteLine("quarto");
                }
            }else{
                if(Y > 0){
                    Console.WriteLine("segundo");
                }else{
                    Console.WriteLine("terceiro");
                }
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
            int X = Integer.parseInt(entrada[0]), Y = Integer.parseInt(entrada[1]);

            if(X == 0 || Y == 0){
                break;
            }

            if(X > 0){
                if(Y > 0){
                    System.out.println("primeiro");
                }else{
                    System.out.println("quarto");
                }
            }else{
                if(Y > 0){
                    System.out.println("segundo");
                }else{
                    System.out.println("terceiro");
                }
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
    let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if (X === 0 || Y === 0) {
        break;
    }

    if (X > 0) {
        if (Y > 0) {
            console.log("primeiro");
        } else {
            console.log("quarto");
        }
    } else {
        if (Y > 0) {
            console.log("segundo");
        } else {
            console.log("terceiro");
        }
    }
}
```

### Python 3.9

```py
while(True):
    try:
        X, Y = [int(x) for x in input().strip().split(' ')]

        if(X == 0 or Y == 0):
            break

        if(X > 0):
            if(Y > 0):
                print('primeiro')
            else:
                print('quarto')
        else:
            if(Y > 0):
                print('segundo')
            else:
                print('terceiro')
    except EOFError:
        break
```