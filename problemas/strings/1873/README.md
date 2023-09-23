# 1873 - Pedra-papel-tesoura-lagarto-Spock

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1873)

## Solução

Segue uma esquematização que pode te ajudar a resolver esse problema:

| Jogada  | Ganha para                                | Perde para                                |
| ------- | ----------------------------------------- | ----------------------------------------- |
| Pedra   | <ul><li>Tesoura</li><li>Lagarto</li></ul> | <ul><li>Papel</li><li>Spock</li></ul>     |
| Papel   | <ul><li>Pedra</li><li>Spock</li></ul>     | <ul><li>Tesoura</li><li>Lagarto</li></ul> |
| Tesoura | <ul><li>Papel</li><li>Lagarto</li></ul>   | <ul><li>Pedra</li><li>Spock</li></ul>     |
| Lagarto | <ul><li>Papel</li><li>Spock</li></ul>     | <ul><li>Pedra</li><li>Tesoura</li></ul>   |
| Spock   | <ul><li>Pedra</li><li>Tesoura</li></ul>   | <ul><li>Papel</li><li>Lagarto</li></ul>   |

Você pode converter cada jogada em um inteiro e se referir a uma matriz de resultados para saber qual dos jogadores ganhou aquela partida ou então utilizar um dicionário para o mesmo fim.

### C99
```c
#include <string.h>
#include <stdio.h>

char* jogadas[5] = {"pedra", "papel", "tesoura", "lagarto", "spock"};
int regras[5][5] = {
    {0, -1, 1, 1, -1},
    {1, 0, -1, -1, 1},
    {-1, 1, 0, 1, -1},
    {-1, 1, -1, 0, 1},
    {1, -1, 1, -1, 0}
};

int converte(char* jogada){
    for(int i = 0; i < 5; ++i){
        if(!strcmp(jogada, jogadas[i])) return i;
    }
}

int main(){
    int C, r, s;
    char rajesh[11], sheldon[11];

    scanf("%d\n", &C);

    for(int i = 0; i < C; ++i){
        scanf("%s %s\n", rajesh, sheldon);

        r = converte(rajesh);
        s = converte(sheldon);

        switch(regras[r][s]){
            case -1:    printf("sheldon\n");
                        break;
            case 0:     printf("empate\n");
                        break;
            case 1:     printf("rajesh\n");
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

string jogadas[5] = {"pedra", "papel", "tesoura", "lagarto", "spock"};
int regras[5][5] = {
    {0, -1, 1, 1, -1},
    {1, 0, -1, -1, 1},
    {-1, 1, 0, 1, -1},
    {-1, 1, -1, 0, 1},
    {1, -1, 1, -1, 0}
};

int converte(string jogada){
    for(int i = 0; i < 5; ++i){
        if(jogada == jogadas[i])    return i;
    }
}

int main(){
    int C, r, s;
    string rajesh, sheldon;

    cin >> C;

    for(int i = 0; i < C; ++i){
        cin >> rajesh >> sheldon;

        r = converte(rajesh);
        s = converte(sheldon);

        switch(regras[r][s]){
            case -1:    cout << "sheldon" << endl;
                        break;
            case 0:     cout << "empate" << endl;
                        break;
            case 1:     cout << "rajesh" << endl;
                        break;
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
    static Dictionary<string, string[]> ganhaDe = new Dictionary<string, string[]>() {
        { "pedra", new string[] { "tesoura", "lagarto" } },
        { "papel", new string[] { "pedra", "spock" } },
        { "tesoura", new string[] { "papel", "lagarto" } },
        { "lagarto", new string[] { "papel", "spock" } },
        { "spock", new string[] { "pedra", "tesoura" } },
    };
    
    static void Main(string[] args) {
        int C = int.Parse(Console.ReadLine());
        for(int k = 0; k < C; ++k){
            string[] entrada = Console.ReadLine().Trim().Split(' ');
            
            if(entrada[0] == entrada[1]){
                Console.WriteLine("empate");
            }else if(ganhaDe[entrada[0]].Contains(entrada[1])){
                Console.WriteLine("rajesh");
            }else{
                Console.WriteLine("sheldon");
            }
        }
    }
}
```

### Java 19
```java
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

public class Main {
    public static void main(String[] args) throws IOException {
        InputStreamReader ir = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(ir);

        HashMap<String, List<String>> ganhaDe = new HashMap<String, List<String>>();
        ganhaDe.put("pedra", Arrays.asList("tesoura", "lagarto"));
        ganhaDe.put("papel", Arrays.asList("pedra", "spock"));
        ganhaDe.put("tesoura", Arrays.asList("papel", "lagarto"));
        ganhaDe.put("lagarto", Arrays.asList("papel", "spock"));
        ganhaDe.put("spock", Arrays.asList("pedra", "tesoura"));

        int C = Integer.parseInt(in.readLine());
        for(int k = 0; k < C; ++k){
            String[] entrada = in.readLine().trim().split(" ");

            if(entrada[0].equals(entrada[1])){
                System.out.println("empate");
            }else if(ganhaDe.get(entrada[0]).contains(entrada[1])){
                System.out.println("rajesh");
            }else{
                System.out.println("sheldon");
            }
        }
    }
}
```

### JavaScript 12.18
```js
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const ganhaDe = {
    "pedra": ["tesoura", "lagarto"],
    "papel": ["pedra", "spock"],
    "tesoura": ["papel", "lagarto"],
    "lagarto": ["papel", "spock"],
    "spock": ["pedra", "tesoura"]
};

let C = parseInt(lines.shift());

for(let i = 0; i < C; ++i){
    let [rajesh, sheldon] = lines.shift().trim().split(' ');

    if(rajesh === sheldon)                      console.log("empate");
    else if(ganhaDe[rajesh].includes(sheldon))  console.log("rajesh");
    else                                        console.log("sheldon");
}
```

### Python 3.9
```py
C = int(input())
ganhaDe = {"pedra": ["tesoura", "lagarto"], "papel": ["pedra", "spock"], "tesoura": ["papel", "lagarto"], "lagarto": ["papel", "spock"], "spock": ["pedra", "tesoura"]}

for _ in range(C):
    rajesh, sheldon = input().strip().split(' ')

    if(rajesh == sheldon):
        print("empate")
    elif(sheldon in ganhaDe[rajesh]):
        print("rajesh")
    else:
        print("sheldon")
```