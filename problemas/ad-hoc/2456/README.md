# 2456 - Cartas

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2456)

## Solução

Uma sequência está ordenada em ordem crescente quando, para uma sequência $S = s_{0} s_{1} \ldots s_{n}$ temos que $s_{0} < s_{1} < s_{2} < \cdots < s_{n}$.

Uma sequência está ordenada em ordem decrescente quando, para uma sequência $S = s_{0} s_{1} \ldots s_{n}$ temos que $s_{0} > s_{1} > s_{2} > \cdots > s_{n}$.

É possível testar ambas as condições ao mesmo tempo, sem necessidade de dois loopings.

### C99
```c
#include <stdio.h>

int main()
{
    int cartas[5], crescente, decrescente;

    for (int i = 0; i < 5; ++i)
    {
        scanf("%d", &cartas[i]);
    }

    crescente = decrescente = 1;
    for (int i = 0; i < 4; ++i)
    {
        if (cartas[i] < cartas[i + 1])
            decrescente = 0;
        if (cartas[i] > cartas[i + 1])
            crescente = 0;
    }

    if (crescente == 1)
        printf("C\n");
    else if (decrescente == 1)
        printf("D\n");
    else
        printf("N\n");

    return 0;
}
```

### C++17
```cpp
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> cartas;
    bool crescente, decrescente;

    cartas.assign(5, 0);
    for (int i = 0; i < 5; ++i)
    {
        cin >> cartas[i];
    }

    crescente = decrescente = true;
    for (int i = 0; i < 4; ++i)
    {
        if (cartas[i] <= cartas[i + 1])
            decrescente = false;
        if (cartas[i] >= cartas[i + 1])
            crescente = false;
    }

    if (crescente)
        cout << 'C' << endl;
    else if (decrescente)
        cout << 'D' << endl;
    else
    {
        cout << 'N' << endl;
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
        List<int> cartas = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();

        bool crescente = true;
        bool decrescente = true;
        for(int i = 0; i < 4; ++i){
            if(cartas[i] <= cartas[i + 1]){
                decrescente = false;
            }
            if(cartas[i] >= cartas[i + 1]){
                crescente = false;
            }
        }

        if(crescente){
            Console.WriteLine("C");
        }else if(decrescente){
            Console.WriteLine("D");
        }else{
            Console.WriteLine("N");
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        String[] entrada = in.readLine().trim().split(" ");
        int[] cartas = new int[entrada.length];
        for(int i = 0; i < 5; ++i){
            cartas[i] = Integer.parseInt(entrada[i]);
        }
        
        boolean crescente = true;
        boolean decrescente = true;
        for(int i = 0; i < 4; ++i){
            if(cartas[i] <= cartas[i + 1]){
                decrescente = false;
            }
            if(cartas[i] >= cartas[i + 1]){
                crescente = false;
            }
        }

        if(crescente){
            System.out.println("C");
        }else if(decrescente){
            System.out.println("D");
        }else{
            System.out.println("N");
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let cartas = lines.shift().trim().split(' ').map((x) => parseInt(x));

let [crescente, decrescente] = [true, true];

for(let i = 0; i < 4; ++i){
    if(cartas[i] <= cartas[i + 1])  decrescente = false;
    if(cartas[i] >= cartas[i + 1])  crescente = false;
}

if(crescente)           console.log('C');
else if(decrescente)    console.log('D');
else                    console.log('N');
```

### Python 3.9
```py
cartas = [int(x) for x in input().strip().split(' ')]

crescente, decrescente = True, True
for i in range(4):
    if cartas[i] <= cartas[i + 1]:
        decrescente = False
    elif cartas[i] >= cartas[i + 1]:
        crescente = False

print('C' if crescente else 'D' if decrescente else 'N')
```