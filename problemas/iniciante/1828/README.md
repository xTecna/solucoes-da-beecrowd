# 1828 - Bazinga!

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1828)

## Solução

Para este problema, trouxe duas possibilidades: uma com uma matriz de regras, onde cada linha e coluna representa um elemento diferente do jogo; e outra com um dicionário contendo todas as partidas possíveis. O código é: `-1` significa perda, `0` significa empate e `1` significa vitória.

### C99

```c
#include <stdio.h>

int regras[5][5] = {
    {0, 1, -1, 1, -1}, // Tesoura
    {-1, 0, 1, -1, 1}, // Papel
    {1, -1, 0, 1, -1}, // Pedra
    {-1, 1, -1, 0, 1}, // Lagarto
    {1, -1, 1, -1, 0}  // Spock
};

int indice(char *jogada)
{
    if (strcmp(jogada, "tesoura") == 0)
    {
        return 0;
    }
    else if (strcmp(jogada, "papel") == 0)
    {
        return 1;
    }
    else if (strcmp(jogada, "pedra") == 0)
    {
        return 2;
    }
    else if (strcmp(jogada, "lagarto") == 0)
    {
        return 3;
    }
    else if (strcmp(jogada, "Spock") == 0)
    {
        return 4;
    }
}

int main()
{
    int T;
    char sheldon[10], raj[10];

    scanf("%d\n", &T);
    for (int i = 1; i <= T; ++i)
    {
        scanf("%s %s\n", &sheldon, &raj);

        int i_sheldon = indice(sheldon);
        int i_raj = indice(raj);

        printf("Caso #%d: ", i);
        switch (regras[i_sheldon][i_raj])
        {
        case -1:
            printf("Raj trapaceou!\n");
            break;
        case 0:
            printf("De novo!\n");
            break;
        case 1:
            printf("Bazinga!\n");
            break;
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

string jogadas[5] = {"tesoura", "papel", "pedra", "lagarto", "Spock"};

int regras[5][5] = {
    {0, 1, -1, 1, -1}, // Tesoura
    {-1, 0, 1, -1, 1}, // Papel
    {1, -1, 0, 1, -1}, // Pedra
    {-1, 1, -1, 0, 1}, // Lagarto
    {1, -1, 1, -1, 0}  // Spock
};

int converte(string jogada)
{
    for (int i = 0; i < 5; ++i)
    {
        if (jogada == jogadas[i])
        {
            return i;
        }
    }
}

int main()
{
    int T;
    string sheldon, raj;

    cin >> T;
    for (int i = 1; i <= T; ++i)
    {
        cin >> sheldon >> raj;

        cout << "Caso #" << i << ": ";
        switch (regras[converte(sheldon)][converte(raj)])
        {
        case -1:
            cout << "Raj trapaceou!" << endl;
            break;
        case 0:
            cout << "De novo!" << endl;
            break;
        case 1:
            cout << "Bazinga!" << endl;
            break;
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
    static int[,] regras = new int[5, 5]{
        {0, 1, -1, 1, -1}, // Tesoura
        {-1, 0, 1, -1, 1}, // Papel
        {1, -1, 0, 1, -1}, // Pedra
        {-1, 1, -1, 0, 1}, // Lagarto
        {1, -1, 1, -1, 0}  // Spock
    };

    static int converte(string jogada)
    {
        switch (jogada)
        {
            case "tesoura": return 0;
            case "papel": return 1;
            case "pedra": return 2;
            case "lagarto": return 3;
            case "Spock": return 4;
            default: return -1;
        }
    }

    static void Main(string[] args)
    {
        int T = int.Parse(Console.ReadLine());
        for (int i = 1; i <= T; ++i)
        {
            string[] jogadas = Console.ReadLine().Trim().Split(' ');

            Console.Write($"Caso #{i}: ");
            switch (regras[converte(jogadas[0]), converte(jogadas[1])])
            {
                case -1:
                    Console.WriteLine("Raj trapaceou!");
                    break;
                case 0:
                    Console.WriteLine("De novo!");
                    break;
                case 1:
                    Console.WriteLine("Bazinga!");
                    break;
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
    public static String[] jogadas = { "tesoura", "papel", "pedra", "lagarto", "Spock" };

    public static int[][] regras = new int[][] {
            { 0, 1, -1, 1, -1 }, // Tesoura
            { -1, 0, 1, -1, 1 }, // Papel
            { 1, -1, 0, 1, -1 }, // Pedra
            { -1, 1, -1, 0, 1 }, // Lagarto
            { 1, -1, 1, -1, 0 } // Spock
    };

    public static int converte(String jogada) {
        for (int i = 0; i < 5; ++i) {
            if (jogada.equals(jogadas[i])) {
                return i;
            }
        }
        return -1;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int T = Integer.parseInt(in.readLine());
        for (int i = 1; i <= T; ++i) {
            String[] entrada = in.readLine().trim().split(" ");

            int i_sheldon = converte(entrada[0]);
            int i_raj = converte(entrada[1]);

            System.out.printf("Caso #%d: ", i);
            if (regras[i_sheldon][i_raj] == -1) {
                System.out.println("Raj trapaceou!");
            } else if (regras[i_sheldon][i_raj] == 0) {
                System.out.println("De novo!");
            } else if (regras[i_sheldon][i_raj] == 1) {
                System.out.println("Bazinga!");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let regras = {
    "tesoura": {
        "tesoura": 0,
        "papel": 1,
        "pedra": -1,
        "lagarto": 1,
        "Spock": -1,
    },
    "papel": {
        "tesoura": -1,
        "papel": 0,
        "pedra": 1,
        "lagarto": -1,
        "Spock": 1,
    },
    "pedra": {
        "tesoura": 1,
        "papel": -1,
        "pedra": 0,
        "lagarto": 1,
        "Spock": -1
    },
    "lagarto": {
        "tesoura": -1,
        "papel": 1,
        "pedra": -1,
        "lagarto": 0,
        "Spock": 1,
    },
    "Spock": {
        "tesoura": 1,
        "papel": -1,
        "pedra": 1,
        "lagarto": -1,
        "Spock": 0
    }
};

let T = parseInt(lines.shift());
for (let i = 1; i <= T; ++i) {
    let [sheldon, raj] = lines.shift().trim().split(' ');

    let resposta = `Caso #${i}: `;
    switch (regras[sheldon][raj]) {
        case -1: resposta += 'Raj trapaceou!';
            break;
        case 0: resposta += 'De novo!';
            break;
        case 1: resposta += 'Bazinga!';
            break;
    }

    console.log(resposta);
}
```

### Python 3.9

```py
regras = {
    "tesoura": {
        "tesoura": 0,
        "papel": 1,
        "pedra": -1,
        "lagarto": 1,
        "Spock": -1,
    },
    "papel": {
        "tesoura": -1,
        "papel": 0,
        "pedra": 1,
        "lagarto": -1,
        "Spock": 1,
    },
    "pedra": {
        "tesoura": 1,
        "papel": -1,
        "pedra": 0,
        "lagarto": 1,
        "Spock": -1
    },
    "lagarto": {
        "tesoura": -1,
        "papel": 1,
        "pedra": -1,
        "lagarto": 0,
        "Spock": 1,
    },
    "Spock": {
        "tesoura": 1,
        "papel": -1,
        "pedra": 1,
        "lagarto": -1,
        "Spock": 0
    }
}

T = int(input())
for i in range(1, T + 1):
    sheldon, raj = input().strip().split(' ')

    print(f'Caso #{i}: ', end='')

    if(regras[sheldon][raj] == -1):
        print('Raj trapaceou!')
    elif(regras[sheldon][raj] == 0):
        print('De novo!')
    elif(regras[sheldon][raj] == 1):
        print('Bazinga!')
```