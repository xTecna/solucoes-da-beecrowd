# 2626 - Turma do JB6

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/2626)

## Solução

Fazer uma função decidindo entre duas jogadas se o jogador ganha ou não te ajuda a fazer um código mais legível.

### C99

```c
#include <string.h>
#include <stdio.h>

int ganhou(char *jogada1, char *jogada2)
{
    return (strcmp(jogada1, "pedra") == 0 && strcmp(jogada2, "tesoura") == 0) || (strcmp(jogada1, "tesoura") == 0 && strcmp(jogada2, "papel") == 0) || (strcmp(jogada1, "papel") == 0 && strcmp(jogada2, "pedra") == 0);
}

int main()
{
    char dodo[10], leo[10], pepper[10];

    while (scanf("%s %s %s\n", &dodo, &leo, &pepper) != EOF)
    {
        if (ganhou(dodo, leo) && ganhou(dodo, pepper))
        {
            printf("Os atributos dos monstros vao ser inteligencia, sabedoria...\n");
        }
        else if (ganhou(leo, dodo) && ganhou(leo, pepper))
        {
            printf("Iron Maiden's gonna get you, no matter how far!\n");
        }
        else if (ganhou(pepper, dodo) && ganhou(pepper, leo))
        {
            printf("Urano perdeu algo muito precioso...\n");
        }
        else
        {
            printf("Putz vei, o Leo ta demorando muito pra jogar...\n");
        }
    }

    return 0;
}
```

### C++17

```cpp
#include <iostream>

using namespace std;

bool ganhou(string jogada1, string jogada2)
{
    return (jogada1 == "pedra" && jogada2 == "tesoura") || (jogada1 == "tesoura" && jogada2 == "papel") || (jogada1 == "papel" && jogada2 == "pedra");
}

int main()
{
    string dodo, leo, pepper;

    while (cin >> dodo >> leo >> pepper)
    {
        if (ganhou(dodo, leo) && ganhou(dodo, pepper))
        {
            cout << "Os atributos dos monstros vao ser inteligencia, sabedoria..." << endl;
        }
        else if (ganhou(leo, dodo) && ganhou(leo, pepper))
        {
            cout << "Iron Maiden's gonna get you, no matter how far!" << endl;
        }
        else if (ganhou(pepper, dodo) && ganhou(pepper, leo))
        {
            cout << "Urano perdeu algo muito precioso..." << endl;
        }
        else
        {
            cout << "Putz vei, o Leo ta demorando muito pra jogar..." << endl;
        }
    }

    return 0;
}
```

### C#

```cs
using System;

class URI {
    static bool ganhou(string jogada1, string jogada2){
        return (jogada1 == "pedra" && jogada2 == "tesoura") || (jogada1 == "tesoura" && jogada2 == "papel") || (jogada1 == "papel" && jogada2 == "pedra");
    }

    static void Main(string[] args) {
        string entrada;

        while((entrada = Console.ReadLine()) != null){
            string[] jogadas = entrada.Trim().Split(' ');
            string dodo = jogadas[0];
            string leo = jogadas[1];
            string pepper = jogadas[2];

            if (ganhou(dodo, leo) && ganhou(dodo, pepper))
            {
                Console.WriteLine("Os atributos dos monstros vao ser inteligencia, sabedoria...");
            }
            else if (ganhou(leo, dodo) && ganhou(leo, pepper))
            {
                Console.WriteLine("Iron Maiden's gonna get you, no matter how far!");
            }
            else if (ganhou(pepper, dodo) && ganhou(pepper, leo))
            {
                Console.WriteLine("Urano perdeu algo muito precioso...");
            }
            else
            {
                Console.WriteLine("Putz vei, o Leo ta demorando muito pra jogar...");
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
    public static boolean ganhou(String jogada1, String jogada2) {
        return (jogada1.equals("pedra") && jogada2.equals("tesoura"))
                || (jogada1.equals("tesoura") && jogada2.equals("papel"))
                || (jogada1.equals("papel") && jogada2.equals("pedra"));
    }

    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        while (in.ready()) {
            String[] jogadas = in.readLine().trim().split(" ");
            String dodo = jogadas[0];
            String leo = jogadas[1];
            String pepper = jogadas[2];

            if (ganhou(dodo, leo) && ganhou(dodo, pepper)) {
                System.out.println("Os atributos dos monstros vao ser inteligencia, sabedoria...");
            } else if (ganhou(leo, dodo) && ganhou(leo, pepper)) {
                System.out.println("Iron Maiden's gonna get you, no matter how far!");
            } else if (ganhou(pepper, dodo) && ganhou(pepper, leo)) {
                System.out.println("Urano perdeu algo muito precioso...");
            } else {
                System.out.println("Putz vei, o Leo ta demorando muito pra jogar...");
            }
        }
    }
}
```

### Javascript 12.18

```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const ganhou = (jogada1, jogada2) => (jogada1 === "pedra" && jogada2 === "tesoura") || (jogada1 === "tesoura" && jogada2 === "papel") || (jogada1 === "papel" && jogada2 === "pedra");

while (lines.length) {
    let [dodo, leo, pepper] = lines.shift().trim().split(' ');

    if (ganhou(dodo, leo) && ganhou(dodo, pepper)) {
        console.log("Os atributos dos monstros vao ser inteligencia, sabedoria...");
    } else if (ganhou(leo, dodo) && ganhou(leo, pepper)) {
        console.log("Iron Maiden's gonna get you, no matter how far!");
    } else if (ganhou(pepper, dodo) && ganhou(pepper, leo)) {
        console.log("Urano perdeu algo muito precioso...");
    } else {
        console.log("Putz vei, o Leo ta demorando muito pra jogar...");
    }
}
```

### Python 3.9

```py
def ganhou(jogada1, jogada2):
    return (jogada1 == "pedra" and jogada2 == "tesoura") or (jogada1 == "tesoura" and jogada2 == "papel") or (jogada1 == "papel" and jogada2 == "pedra")


while True:
    try:
        dodo, leo, pepper = input().strip().split(' ')

        if (ganhou(dodo, leo) and ganhou(dodo, pepper)):
            print("Os atributos dos monstros vao ser inteligencia, sabedoria...")
        elif (ganhou(leo, dodo) and ganhou(leo, pepper)):
            print("Iron Maiden's gonna get you, no matter how far!")
        elif (ganhou(pepper, dodo) and ganhou(pepper, leo)):
            print("Urano perdeu algo muito precioso...")
        else:
            print("Putz vei, o Leo ta demorando muito pra jogar...")
    except EOFError:
        break
```