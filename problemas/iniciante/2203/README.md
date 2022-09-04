# 2203 - Tempestade de Corvos

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2203)

## Solução

Alguns detalhes interessantes para esse problema:

* Se o invasor estiver tanto no raio da conjuração da ultimate quanto no raio de voo dos corvos, ele é considerado atingido;
* O invasor sempre vai correr no lugar que vai maximizar sua distância em relação a Fiddlesticks;
* O problem setter pediu para a gente considerar a unidade de medida como o metro, mas esqueceu de especificar que a velocidade é em metros por segundo.

### C99

```c
#include <stdio.h>
#include <math.h>

double dist(int x1, int y1, int x2, int y2)
{
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

int main()
{
    int Xf, Yf, Xi, Yi, Vi, R1, R2;

    while (scanf("%d %d %d %d %d %d %d\n", &Xf, &Yf, &Xi, &Yi, &Vi, &R1, &R2) != EOF)
    {
        double distancia = dist(Xf, Yf, Xi, Yi);
        double distancia_percorrida = Vi * 1.5;

        if (distancia + distancia_percorrida <= R1 + R2)
        {
            printf("Y\n");
        }
        else
        {
            printf("N\n");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <cmath>

using namespace std;

double dist(int x1, int y1, int x2, int y2)
{
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

int main()
{
    int Xf, Yf, Xi, Yi, Vi, R1, R2;

    while (cin >> Xf >> Yf >> Xi >> Yi >> Vi >> R1 >> R2)
    {
        double distancia = dist(Xf, Yf, Xi, Yi);
        double distancia_percorrida = Vi * 1.5;

        if (distancia + distancia_percorrida <= R1 + R2)
        {
            cout << 'Y' << endl;
        }
        else
        {
            cout << 'N' << endl;
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

class URI {
    static double dist(int x1, int y1, int x2, int y2){
        return Math.Sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)));
    }

    static void Main(string[] args) {
        string entrada;
        
        while((entrada = Console.ReadLine()) != null){
            List<int> numeros = entrada.Trim().Split(' ').Select(x => int.Parse(x)).ToList();

            double distancia = dist(numeros[0], numeros[1], numeros[2], numeros[3]);
            double distancia_percorrida = numeros[4] * 1.5;

            if(distancia + distancia_percorrida <= numeros[5] + numeros[6]){
                Console.WriteLine("Y");
            }else{
                Console.WriteLine("N");
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
import java.lang.Math;

public class Main {
    public static double dist(int x1, int y1, int x2, int y2) {
        return Math.sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] entrada = in.readLine().trim().split(" ");

            double distancia = dist(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]),
                    Integer.parseInt(entrada[2]), Integer.parseInt(entrada[3]));
            double distancia_percorrida = Integer.parseInt(entrada[4]) * 1.5;

            if (distancia + distancia_percorrida <= Integer.parseInt(entrada[5]) + Integer.parseInt(entrada[6])) {
                System.out.println("Y");
            } else {
                System.out.println("N");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const dist = (x1, y1, x2, y2) => Math.sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)));

while (lines.length) {
    let [Xf, Yf, Xi, Yi, Vi, R1, R2] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let distancia = dist(Xf, Yf, Xi, Yi);
    let distancia_percorrida = Vi * 1.5;

    if (distancia + distancia_percorrida <= R1 + R2) {
        console.log('Y');
    } else {
        console.log('N');
    }
}
```

### Python 3.9

```py
import math


def dist(x1, y1, x2, y2):
    return math.sqrt(((x1 - x2) * (x1 - x2)) + ((y1 - y2) * (y1 - y2)))


while True:
    try:
        Xf, Yf, Xi, Yi, Vi, R1, R2 = [int(x)
                                      for x in input().strip().split(' ')]
        distancia = dist(Xf, Yf, Xi, Yi)
        distancia_percorrida = Vi * 1.5

        if(distancia + distancia_percorrida <= R1 + R2):
            print('Y')
        else:
            print('N')
    except EOFError:
        break
```