# 2031 - Pedra, Papel, Ataque Aéreo

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2031)

## Solução

Vide problema [1828 - Bazinga!](../1828/README.md), exceto que esse código está um pouco mais limpo.

### C99

```c
#include <string.h>
#include <stdio.h>

int regras[3][3] = {
    {0, 1, -1},  // pedra
    {-1, 0, -1}, // papel
    {1, 1, 0},   // ataque aereo
};

int converte(char *jogada)
{
    if (strcmp(jogada, "pedra") == 0)
    {
        return 0;
    }
    if (strcmp(jogada, "papel") == 0)
    {
        return 1;
    }
    return 2;
}

int main()
{
    int N;
    char jogada1[10], jogada2[10];

    scanf("%d\n", &N);
    for (int i = 0; i < N; ++i)
    {
        scanf("%s\n%s\n", &jogada1, &jogada2);
        int j1 = converte(jogada1), j2 = converte(jogada2);

        if (regras[j1][j2] == 0)
        {
            switch (j1)
            {
            case 0:
                printf("Sem ganhador\n");
                break;
            case 1:
                printf("Ambos venceram\n");
                break;
            case 2:
                printf("Aniquilacao mutua\n");
                break;
            }
        }
        else
        {
            printf("Jogador %d venceu\n", regras[j1][j2] == 1 ? 1 : 2);
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>
#include <map>

using namespace std;

map<string, map<string, string>> regras;

void inicializa()
{
    regras["pedra"]["pedra"] = "Sem ganhador";
    regras["pedra"]["papel"] = "Jogador 1 venceu";
    regras["pedra"]["ataque"] = "Jogador 2 venceu";
    regras["papel"]["pedra"] = "Jogador 2 venceu";
    regras["papel"]["papel"] = "Ambos venceram";
    regras["papel"]["ataque"] = "Jogador 2 venceu";
    regras["ataque"]["pedra"] = "Jogador 1 venceu";
    regras["ataque"]["papel"] = "Jogador 1 venceu";
    regras["ataque"]["ataque"] = "Aniquilacao mutua";
}

int main()
{
    int N;
    string jogada1, jogada2;

    inicializa();

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> jogada1 >> jogada2;
        cout << regras[jogada1][jogada2] << endl;
    }

    return 0;
}
```

### C#

```cs
using System;
using System.Collections.Generic;

class URI {
    static int converte(string jogada){
        if(jogada == "pedra"){
            return 0;
        }else if(jogada == "papel"){
            return 1;
        }
        return 2;
    }

    static void Main(string[] args) {
        int[,] regras = new int[3,3] {
            {0, 1, -1},     // pedra
            {-1, 0, -1},    // papel
            {1, 1, 0},      // ataque aereo
        };

        int N = int.Parse(Console.ReadLine());
        for(int i = 0; i < N; ++i){
            int jogada1 = converte(Console.ReadLine());
            int jogada2 = converte(Console.ReadLine());

            if(regras[jogada1, jogada2] == 0){
                switch(jogada1){
                    case 0: Console.WriteLine("Sem ganhador");
                            break;
                    case 1: Console.WriteLine("Ambos venceram");
                            break;
                    case 2: Console.WriteLine("Aniquilacao mutua");
                            break;
                }
            }else{
                Console.WriteLine($"Jogador {(regras[jogada1, jogada2] == 1 ? 1 : 2)} venceu");
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
    public static int converte(String jogada) {
        if (jogada.equals("pedra")) {
            return 0;
        } else if (jogada.equals("papel")) {
            return 1;
        }
        return 2;
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        int[][] regras = new int[][] {
                { 0, 1, -1 }, // pedra
                { -1, 0, -1 }, // papel
                { 1, 1, 0 }, // ataque aereo
        };

        int N = Integer.parseInt(in.readLine());
        for (int i = 0; i < N; ++i) {
            int jogada1 = converte(in.readLine());
            int jogada2 = converte(in.readLine());

            if (regras[jogada1][jogada2] == 0) {
                switch (jogada1) {
                    case 0:
                        System.out.println("Sem ganhador");
                        break;
                    case 1:
                        System.out.println("Ambos venceram");
                        break;
                    case 2:
                        System.out.println("Aniquilacao mutua");
                        break;
                }
            } else {
                System.out.printf("Jogador %d venceu\n", regras[jogada1][jogada2] == 1 ? 1 : 2);
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const regras = {
    "pedra": {
        "pedra": "Sem ganhador",
        "papel": "Jogador 1 venceu",
        "ataque": "Jogador 2 venceu"
    },
    "papel": {
        "pedra": "Jogador 2 venceu",
        "papel": "Ambos venceram",
        "ataque": "Jogador 2 venceu"
    },
    "ataque": {
        "pedra": "Jogador 1 venceu",
        "papel": "Jogador 1 venceu",
        "ataque": "Aniquilacao mutua"
    }
};

let N = parseInt(lines.shift().trim());
for (let i = 0; i < N; ++i) {
    let jogada1 = lines.shift().trim();
    let jogada2 = lines.shift().trim();

    console.log(regras[jogada1][jogada2]);
}
```

### Python 3.9

```py
regras = {
    "pedra": {
        "pedra": "Sem ganhador",
        "papel": "Jogador 1 venceu",
        "ataque": "Jogador 2 venceu"
    },
    "papel": {
        "pedra": "Jogador 2 venceu",
        "papel": "Ambos venceram",
        "ataque": "Jogador 2 venceu"
    },
    "ataque": {
        "pedra": "Jogador 1 venceu",
        "papel": "Jogador 1 venceu",
        "ataque": "Aniquilacao mutua"
    }
}

N = int(input())
for _ in range(N):
    jogada1 = input()
    jogada2 = input()

    print(regras[jogada1][jogada2])
```