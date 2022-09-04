# 1160 - Crescimento Populacional

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1160)

## Solução

Não é possível fazer soma de progressão geométrica aqui porque o crescimento é feito a cada mês com o piso da taxa de crescimento, o que significa que a cada mês, o número de pessoas que cresce é sempre um número inteiro, o que quebra um pouco o conceito de progressão geométrica. Com isso, é realmente necessário ir somando mês a mês a partir da simulação, mas felizmente podemos parar a simulação em 100 passos.

### C99

```c
#include <stdio.h>
#include <math.h>

int main()
{
    int T, PA, PB;
    double G1, G2;

    scanf("%d", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%d %d %lf %lf", &PA, &PB, &G1, &G2);
        G1 /= 100;
        G2 /= 100;

        int anos;
        for (anos = 1; PA <= PB && anos < 101; ++anos)
        {
            PA += floor(PA * G1);
            PB += floor(PB * G2);
        }

        if (PA <= PB)
        {
            printf("Mais de 1 seculo.\n");
        }
        else
        {
            printf("%d anos.\n", anos - 1);
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

int main()
{
    int T, PA, PB;
    double G1, G2;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> PA >> PB >> G1 >> G2;
        G1 /= 100;
        G2 /= 100;

        int anos;
        for (anos = 1; PA <= PB && anos < 101; ++anos)
        {
            PA += floor(PA * G1);
            PB += floor(PB * G2);
        }

        if (PA <= PB)
        {
            cout << "Mais de 1 seculo." << endl;
        }
        else
        {
            cout << anos - 1 << " anos." << endl;
        }
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
        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            int PA = int.Parse(entrada[0]);
            int PB = int.Parse(entrada[1]);
            double G1 = double.Parse(entrada[2])/100;
            double G2 = double.Parse(entrada[3])/100;

            int anos;
            for(anos = 1; PA <= PB && anos < 101; ++anos){
                PA += (int)Math.Floor(PA * G1);
                PB += (int)Math.Floor(PB * G2);
            }

            if(PA <= PB){
                Console.WriteLine("Mais de 1 seculo.");
            }else{
                Console.WriteLine($"{anos - 1} anos.");
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
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int i = 0; i < T; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            int PA = Integer.parseInt(entrada[0]);
            int PB = Integer.parseInt(entrada[1]);
            double G1 = Double.parseDouble(entrada[2]) / 100;
            double G2 = Double.parseDouble(entrada[3]) / 100;

            int anos;
            for (anos = 1; PA <= PB && anos < 101; ++anos) {
                PA += Math.floor(PA * G1);
                PB += Math.floor(PB * G2);
            }

            if (PA <= PB) {
                System.out.println("Mais de 1 seculo.");
            } else {
                System.out.printf("%d anos.\n", anos - 1);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let [PA, PB, G1, G2] = lines.shift().trim().split(' ');
    [PA, PB] = [parseInt(PA), parseInt(PB)];
    [G1, G2] = [parseFloat(G1) / 100, parseFloat(G2) / 100];

    let anos;
    for (anos = 1; PA <= PB && anos < 101; ++anos) {
        PA += Math.floor(PA * G1);
        PB += Math.floor(PB * G2);
    }

    if (PA <= PB) {
        console.log('Mais de 1 seculo.');
    } else {
        console.log(`${anos - 1} anos.`);
    }
}
```

### Python 3.9

```py
import math

T = int(input())
for _ in range(T):
    PA, PB, G1, G2 = input().strip().split(' ')
    PA, PB = int(PA), int(PB)
    G1, G2 = float(G1)/100, float(G2)/100

    anos = 1
    while(PA <= PB and anos < 101):
        PA += math.floor(PA * G1)
        PB += math.floor(PB * G2)
        anos += 1

    if(PA <= PB):
        print('Mais de 1 seculo.')
    else:
        print(f'{anos - 1} anos.')
```