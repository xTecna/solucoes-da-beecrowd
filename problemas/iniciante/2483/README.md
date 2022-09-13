# 2483 - Feliz Nataaal!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2483)

## Solução

Você pode manipular a entrada e a saída fazendo os comandos em si sem problemas, imprimindo primeiro `Feliz nat`, depois imprimindo quantas vezes for necessário apenas a letra `a` e por fim imprimindo `l!`. Montar a _string_ como eu fiz em JavaScript e deixar pra imprimir tudo no final também é uma boa escolha.

### C99

```c
#include <stdio.h>

int main()
{
    int I;

    scanf("%d", &I);

    printf("Feliz nat");
    for (int i = 0; i < I; ++i)
    {
        printf("a");
    }
    printf("l!\n");

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

int main()
{
    int I;

    cin >> I;

    cout << "Feliz nat";
    for (int i = 0; i < I; ++i)
    {
        cout << "a";
    }
    cout << "l!" << endl;

    return 0;
}
```

### C#

```cs
using System;

class URI
{
    static void Main(string[] args)
    {
        int I = int.Parse(Console.ReadLine());

        Console.Write("Feliz nat");
        for (int i = 0; i < I; ++i)
        {
            Console.Write("a");
        }
        Console.WriteLine("l!");
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

        int I = Integer.parseInt(in.readLine());

        System.out.print("Feliz nat");
        for (int i = 0; i < I; ++i) {
            System.out.print("a");
        }
        System.out.println("l!");
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let I = parseInt(lines.shift());

let resposta = 'Feliz nat';
for (let i = 0; i < I; ++i) {
    resposta += 'a';
}
resposta += 'l!';

console.log(resposta);
```

### Python 3.9

```py
I = int(input())
print('Feliz nat' + ('a' * I) + 'l!')
```