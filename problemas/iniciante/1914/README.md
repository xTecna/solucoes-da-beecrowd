# 1914 - De Quem é a Vez?

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1914)

## Solução

Acho que a abordagem mais fácil aqui seria primeiro decidir se a soma dos números é par ou ímpar, guardar o resultado em uma *string* (essa *string* vai assumir um dos dois valores: `PAR` ou `IMPAR`) e depois comparar quem escolheu o mesmo valor que esse.

### C99

```c
#include <stdio.h>

int main()
{
    char jogador1[150], jogada1[10], jogador2[150], jogada2[10];
    int QT, N, M;

    scanf("%d\n", &QT);
    for (int i = 0; i < QT; ++i)
    {
        scanf("%s %s %s %s\n", &jogador1, &jogada1, &jogador2, &jogada2);
        scanf("%d %d\n", &N, &M);

        int soma = N + M;
        char jogadaGanha[10];
        if (soma % 2)
        {
            strcpy(jogadaGanha, "IMPAR");
        }
        else
        {
            strcpy(jogadaGanha, "PAR");
        }

        if (strcmp(jogada1, jogadaGanha) == 0)
        {
            printf("%s\n", jogador1);
        }
        else
        {
            printf("%s\n", jogador2);
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
    string jogador1, jogada1, jogador2, jogada2;
    int QT, N, M;

    cin >> QT;
    for (int i = 0; i < QT; ++i)
    {
        cin >> jogador1 >> jogada1 >> jogador2 >> jogada2;
        cin >> N >> M;

        string jogadaGanha = (N + M) % 2 ? "IMPAR" : "PAR";

        if (jogada1 == jogadaGanha)
        {
            cout << jogador1 << endl;
        }
        else
        {
            cout << jogador2 << endl;
        }
    }

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
        int QT = int.Parse(Console.ReadLine());
        for (int i = 0; i < QT; ++i)
        {
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            string[] numeros = Console.ReadLine().Trim().Split(' ');

            string jogadaGanha = (int.Parse(numeros[0]) + int.Parse(numeros[1])) % 2 == 1 ? "IMPAR" : "PAR";

            if (entrada[1] == jogadaGanha)
            {
                Console.WriteLine(entrada[0]);
            }
            else
            {
                Console.WriteLine(entrada[2]);
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

        int QT = Integer.parseInt(in.readLine());
        for (int i = 0; i < QT; ++i) {
            String[] entrada = in.readLine().trim().split(" ");
            String[] jogadas = in.readLine().trim().split(" ");

            String jogadaGanha = (Integer.parseInt(jogadas[0]) + Integer.parseInt(jogadas[1])) % 2 == 1 ? "IMPAR"
                    : "PAR";

            if (entrada[1].equals(jogadaGanha)) {
                System.out.println(entrada[0]);
            } else {
                System.out.println(entrada[2]);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let QT = parseInt(lines.shift());
for (let i = 0; i < QT; ++i) {
    let [jogador1, jogada1, jogador2, jogada2] = lines.shift().trim().split(' ');
    let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let jogadaGanha = (N + M) % 2 ? "IMPAR" : "PAR";
    if (jogada1 === jogadaGanha) {
        console.log(jogador1);
    } else {
        console.log(jogador2);
    }
}
```

### Python 3.9

```py
QT = int(input())
for _ in range(QT):
    jogador1, jogada1, jogador2, jogada2 = input().strip().split(' ')
    N, M = [int(x) for x in input().strip().split(' ')]

    jogadaGanha = 'IMPAR' if (N + M) % 2 else 'PAR'
    if(jogada1 == jogadaGanha):
        print(jogador1)
    else:
        print(jogador2)
```