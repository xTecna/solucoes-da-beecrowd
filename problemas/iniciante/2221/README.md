# 2221 - Batalha de Pomekons

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2221)

## Solução

O jeito mais fácil de escrever a fórmula contabilizando com o bônus de acordo com o nível é escrevê-la como $ValorGolpe = \frac{Ataque + Defesa}{2} + Bonus (1 - (Nivel \mod 2))$, já que níveis pares têm resto 0 e níveis ímpares têm resto 1.

### C99

```c
#include <stdio.h>

double valorGolpe(int ataque, int defesa, int nivel, int bonus)
{
    return (ataque + defesa) / 2.0 + bonus * (1 - (nivel % 2));
}

int main()
{
    int T, B, Ai, Di, Li;
    double golpeDabriel, golpeGuarte;

    scanf("%d\n", &T);
    for (int i = 0; i < T; ++i)
    {
        scanf("%d\n", &B);

        scanf("%d %d %d\n", &Ai, &Di, &Li);
        golpeDabriel = valorGolpe(Ai, Di, Li, B);

        scanf("%d %d %d\n", &Ai, &Di, &Li);
        golpeGuarte = valorGolpe(Ai, Di, Li, B);

        if (golpeDabriel > golpeGuarte)
        {
            printf("Dabriel\n");
        }
        else if (golpeGuarte > golpeDabriel)
        {
            printf("Guarte\n");
        }
        else
        {
            printf("Empate\n");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

double valorGolpe(int ataque, int defesa, int nivel, int bonus)
{
    return (ataque + defesa) / 2.0 + bonus * (1 - (nivel % 2));
}

int main()
{
    int T, B, Ai, Di, Li;
    double golpeDabriel, golpeGuarte;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> B;

        cin >> Ai >> Di >> Li;
        golpeDabriel = valorGolpe(Ai, Di, Li, B);

        cin >> Ai >> Di >> Li;
        golpeGuarte = valorGolpe(Ai, Di, Li, B);

        if (golpeDabriel > golpeGuarte)
        {
            cout << "Dabriel" << endl;
        }
        else if (golpeGuarte > golpeDabriel)
        {
            cout << "Guarte" << endl;
        }
        else
        {
            cout << "Empate" << endl;
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

class URI {
    static double valorGolpe(int ataque, int defesa, int nivel, int bonus){
        return (ataque + defesa)/2.0 + bonus * (1 - (nivel % 2));
    }

    static void Main(string[] args) {
        int T = int.Parse(Console.ReadLine());
        for(int i = 0; i < T; ++i){
            int B = int.Parse(Console.ReadLine());

            List<int> numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            double golpeDabriel = valorGolpe(numeros[0], numeros[1], numeros[2], B);

            numeros = Console.ReadLine().Trim().Split(' ').Select(x => int.Parse(x)).ToList();
            double golpeGuarte = valorGolpe(numeros[0], numeros[1], numeros[2], B);

            if(golpeDabriel > golpeGuarte){
                Console.WriteLine("Dabriel");
            }else if(golpeGuarte > golpeDabriel){
                Console.WriteLine("Guarte");
            }else{
                Console.WriteLine("Empate");
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
    public static double valorGolpe(int ataque, int defesa, int nivel, int bonus) {
        return (ataque + defesa) / 2.0 + bonus * (1 - (nivel % 2));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int i = 0; i < T; ++i) {
            int B = Integer.parseInt(in.readLine());

            String[] entrada = in.readLine().trim().split(" ");
            double golpeDabriel = valorGolpe(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]),
                    Integer.parseInt(entrada[2]), B);

            entrada = in.readLine().trim().split(" ");
            double golpeGuarte = valorGolpe(Integer.parseInt(entrada[0]), Integer.parseInt(entrada[1]),
                    Integer.parseInt(entrada[2]), B);

            if (golpeDabriel > golpeGuarte) {
                System.out.println("Dabriel");
            } else if (golpeGuarte > golpeDabriel) {
                System.out.println("Guarte");
            } else {
                System.out.println("Empate");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const valorGolpe = (ataque, defesa, nivel, bonus) => (ataque + defesa) / 2 + bonus * (1 - (nivel % 2));

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let B = parseInt(lines.shift());

    let [Ai, Di, Li] = lines.shift().trim().split(' ').map(x => parseInt(x));
    let golpeDabriel = valorGolpe(Ai, Di, Li, B);

    [Ai, Di, Li] = lines.shift().trim().split(' ').map(x => parseInt(x));
    let golpeGuarte = valorGolpe(Ai, Di, Li, B);

    if (golpeDabriel > golpeGuarte) {
        console.log('Dabriel');
    } else if (golpeGuarte > golpeDabriel) {
        console.log('Guarte');
    } else {
        console.log('Empate');
    }
}
```

### Python 3.9

```py
def valorGolpe(ataque, defesa, nivel, bonus):
    return (ataque + defesa)/2 + bonus * (1 - (nivel % 2))


T = int(input())
for _ in range(T):
    B = int(input())

    Ai, Di, Li = [int(x) for x in input().strip().split(' ')]
    golpeDabriel = valorGolpe(Ai, Di, Li, B)

    Ai, Di, Li = [int(x) for x in input().strip().split(' ')]
    golpeGuarte = valorGolpe(Ai, Di, Li, B)

    if(golpeDabriel > golpeGuarte):
        print('Dabriel')
    elif(golpeGuarte > golpeDabriel):
        print('Guarte')
    else:
        print('Empate')
```