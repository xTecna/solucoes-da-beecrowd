# 1789 - A Corrida de Lesmas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1789)

## Solução

É importante notar aqui que o teste do nível da lesma só será aplicado à lesma mais rápida. Com isso, temos dois problemas diferentes:

* Encontrar a velocidade da lesma mais rápida;
* Decidir qual é o nível dessa lesma.

Dividir essas duas etapas no seu código ajuda bastante a separar o pensamento e conseguir chegar na solução.

A propósito, aqui eu convencionei que o maior elemento é o primeiro elemento para algumas linguagens, a princípio, mas você pode convencionar pra começar como zero, fica a seu critério.

### C99

```c
#include <stdio.h>

int main()
{
    int L, V, maior;

    while (scanf("%d", &L) != EOF)
    {
        scanf("%d", &maior);

        for (int i = 1; i < L; ++i)
        {
            scanf("%d", &V);

            if (V > maior)
            {
                maior = V;
            }
        }

        if (maior < 10)
        {
            printf("1\n");
        }
        else if (maior < 20)
        {
            printf("2\n");
        }
        else
        {
            printf("3\n");
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
    int L, V, maior;

    while (cin >> L)
    {
        cin >> maior;
        for (int i = 1; i < L; ++i)
        {
            cin >> V;

            if (V > maior)
            {
                maior = V;
            }
        }

        if (maior < 10)
        {
            cout << 1 << endl;
        }
        else if (maior < 20)
        {
            cout << 2 << endl;
        }
        else
        {
            cout << 3 << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime;

class URI
{
    static void Main(string[] args)
    {
        string entrada;

        while ((entrada = Console.ReadLine()) != null)
        {
            int L = int.Parse(entrada);

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select((x) => int.Parse(x)).ToList();
            int maior = numeros.Aggregate(numeros[0], (cur, acc) => Math.Max(cur, acc));

            if (maior < 10)
            {
                Console.WriteLine(1);
            }
            else if (maior < 20)
            {
                Console.WriteLine(2);
            }
            else
            {
                Console.WriteLine(3);
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
            int N = Integer.parseInt(in.readLine());

            String[] entrada = in.readLine().trim().split(" ");
            int maior = Integer.parseInt(entrada[0]);
            for(int i = 1; i < N; ++i){
                int numero = Integer.parseInt(entrada[i]);

                if(numero > maior){
                    maior = numero;
                }
            }

            if(maior < 10){
                System.out.println(1);
            }else if(maior < 20){
                System.out.println(2);
            }else{
                System.out.println(3);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift().trim());
    let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let maior = numeros.reduce((acc, cur) => cur > acc ? cur : acc, numeros[0]);

    if (maior < 10) {
        console.log(1);
    } else if (maior < 20) {
        console.log(2);
    } else {
        console.log(3);
    }
}
```

### Python 3.9

```py
while True:
    try:
        N = int(input())
        numeros = [int(x) for x in input().strip().split(' ')]
        maior = max(numeros)

        if(maior < 10):
            print(1)
        elif(maior < 20):
            print(2)
        else:
            print(3)
    except EOFError:
        break
```