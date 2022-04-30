# 1132 - Múltiplos de 13

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1132)

## Solução

Para essa solução, o jeito mais simples é fazer um `for` que vai do menor ou maior elemento contando apenas os números que não são múltiplos de 13.

Se apenas números positivos estivessem envolvidos, seria possível calcular de um jeito muito mais fácil usando fórmulas fechadas, o que é igualmente possível com números negativos, só é bem mais chato, então fiquemos com essa forma aqui mesmo.

### C99

```c
#include <stdio.h>

int main()
{
    int X, Y;

    scanf("%d %d", &X, &Y);

    if (X > Y)
    {
        int temp = X;
        X = Y;
        Y = temp;
    }

    int soma = 0;
    for (int i = X; i <= Y; ++i)
    {
        if (i % 13 == 0)
        {
            continue;
        }
        soma += i;
    }

    printf("%d\n", soma);

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

    cin >> X >> Y;

    if (X > Y)
    {
        swap(X, Y);
    }

    int soma = 0;
    for (int i = X; i <= Y; ++i)
    {
        if (i % 13 == 0)
        {
            continue;
        }
        soma += i;
    }

    cout << soma << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static void Main(string[] args) {
        int X = int.Parse(Console.ReadLine());
        int Y = int.Parse(Console.ReadLine());

        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }

        int soma = 0;
        for(int i = X; i <= Y; ++i){
            if(i % 13 == 0){
                continue;
            }
            soma += i;
        }

        Console.WriteLine(soma);
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
    
        int X = Integer.parseInt(in.readLine());
        int Y = Integer.parseInt(in.readLine());

        if(X > Y){
            int temp = X;
            X = Y;
            Y = temp;
        }

        int soma = 0;
        for(int i = X; i <= Y; ++i){
            if(i % 13 == 0){
                continue;
            }
            soma += i;
        }

        System.out.println(soma);
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());
let Y = parseInt(lines.shift());

if (X > Y) {
    [X, Y] = [Y, X];
}

let soma = 0;
for (let i = X; i <= Y; ++i) {
    if (i % 13 === 0) {
        continue;
    }
    soma += i;
}

console.log(soma);
```

### Python 3.9

```py
X = int(input())
Y = int(input())

if (X > Y):
    X, Y = Y, X

soma = 0
for i in range(X, Y + 1):
    if(i % 13 == 0):
        continue
    soma += i

print(soma)
```