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

### Alternativa 1 - Sequência de ifs

### C99
```c
#include <string.h>
#include <stdio.h>

int main(){
    int C;
    char rajesh[11], sheldon[11];

    scanf("%d\n", &C);

    for(int i = 0; i < C; ++i){
        scanf("%s %s\n", &rajesh, &sheldon);

        if(!strcmp(rajesh, sheldon)){
            printf("empate\n");
        }else if(!strcmp(rajesh, "pedra")){
            if(!strcmp(sheldon, "tesoura") || !strcmp(sheldon, "lagarto"))
                printf("rajesh\n");
            else
                printf("sheldon\n");
        }else if(!strcmp(rajesh, "papel")){
            if(!strcmp(sheldon, "pedra") || !strcmp(sheldon, "spock"))
                printf("rajesh\n");
            else
                printf("sheldon\n");
        }else if(!strcmp(rajesh, "tesoura")){
            if(!strcmp(sheldon, "papel") || !strcmp(sheldon, "lagarto"))
                printf("rajesh\n");
            else
                printf("sheldon\n");
        }else if(!strcmp(rajesh, "lagarto")){
            if(!strcmp(sheldon, "papel") || !strcmp(sheldon, "spock"))
                printf("rajesh\n");
            else
                printf("sheldon\n");
        }else if(!strcmp(sheldon, "pedra") || !strcmp(sheldon, "tesoura"))
            printf("rajesh\n");
        else
            printf("sheldon\n");
        }
    }

    return 0;
}
```

### C++17
```cpp
#include <iostream>

using namespace std;

int main(){
    int C;
    string rajesh, sheldon;

    cin >> C;
    for(int i = 0; i < C; ++i){
        cin >> rajesh >> sheldon;

        if(rajesh == sheldon){
            cout << "empate" << endl;
        }else if(rajesh == "pedra"){
            if(sheldon == "tesoura" || sheldon == "lagarto")
                cout << "rajesh" << endl;
            else
                cout << "sheldon" << endl;
        }else if(rajesh == "papel"){
            if(sheldon == "pedra" || sheldon == "spock")
                cout << "rajesh" << endl;
            else
                cout << "sheldon" << endl;
        }else if(rajesh == "tesoura"){
            if(sheldon == "papel" || sheldon == "lagarto")
                cout << "rajesh" << endl;
            else
                cout << "sheldon" << endl;
        }else if(rajesh == "lagarto"){
            if(sheldon == "papel" || sheldon == "spock")
                cout << "rajesh" << endl;
            else
                cout << "sheldon" << endl;
        }else if(sheldon == "pedra" || sheldon == "tesoura")
            cout << "rajesh" << endl;
        else
            cout << "sheldon" << endl;
    }

    return 0;
}
```

### JavaScript 12.18
```javascript
var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = parseInt(lines.shift());

for(let i = 0; i < C; ++i){
    let [rajesh, sheldon] = lines.shift().trim().split(' ');

    if(rajesh === sheldon){
        console.log("empate");
    }else if(rajesh === "pedra"){
        if(sheldon === "tesoura" || sheldon === "lagarto")
            console.log("rajesh");
        else
            console.log("sheldon");
    }else if(rajesh === "papel"){
        if(sheldon === "pedra" || sheldon === "spock")
            console.log("rajesh");
        else
            console.log("sheldon");
    }else if(rajesh === "tesoura"){
        if(sheldon === "papel" || sheldon === "lagarto")
            console.log("rajesh");
        else
            console.log("sheldon");
    }else if(rajesh === "lagarto"){
        if(sheldon === "papel" || sheldon === "spock")
            console.log("rajesh");
        else
            console.log("sheldon");
    }else if(sheldon === "pedra" || sheldon === "tesoura")
        console.log("rajesh");
    else
        console.log("sheldon");
}
```

### Python 3.9
```python
C = int(input())

for _ in range(C):
    rajesh, sheldon = input().strip().split(' ')

    if(rajesh == sheldon):
        print("empate")
    elif(rajesh == "pedra"):
        if(sheldon == "tesoura" or sheldon == "lagarto"):
            print("rajesh")
        else:
            print("sheldon")
    elif(rajesh == "papel"):
        if(sheldon == "pedra" or sheldon == "spock"):
            print("rajesh")
        else:
            print("sheldon")
    elif(rajesh == "tesoura"):
        if(sheldon == "papel" or sheldon == "lagarto"):
            print("rajesh")
        else:
            print("sheldon")
    elif(rajesh == "lagarto"):
        if(sheldon == "papel" or sheldon == "spock"):
            print("rajesh")
        else:
            print("sheldon")
    elif(sheldon == "pedra" or sheldon == "tesoura"):
        print("rajesh")
    else:
        print("sheldon")
```

### Alternativa 2 - Utilização de uma matriz (ou dicionário) de regras

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

### JavaScript 12.18
```javascript
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
```python
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