# 1559 - 2048

## [Descrição](https://www.beecrowd.com.br/judge/pt/problems/view/1559)

## Solução

Como a matriz é sempre fixa no tamanho 4 x 4, fazer uma simulação para cada bloco funciona de forma rápida e eficiente. A ideia é, a cada bloco com um número diferente de zero, verificar se é possível andar com esse bloco para uma das quatro direções. O teste para saber se é possível ir para uma direção específica envolve duas propriedades:

* Ver se a posição para a qual se quer ir existe no mapa;
* Ver se o bloco nessa posição é 0 ou é igual ao bloco atual.

> Se montarmos uma matriz 6 x 6 com sentinelas, só precisamos testar a segunda propriedade, que é a abordagem que eu sigo nas implementações.

> Quando há pelo menos um bloco 2048, isso significa que não há mais movimentos possíveis porque você ganhou o jogo.

Também, não dá para apenas interromper a execução e ir para o próximo teste assim que acharmos o número 2048, pois senão vamos parar um caso de teste no meio, sem ler todos os dados corretamente.

### C99
```c
#include <string.h>
#include <stdio.h>

int first;
int jogo[6][6];

int abaixo(int i, int j){
    return jogo[i + 1][j] == jogo[i][j] || jogo[i + 1][j] == 0;
}

int esquerda(int i, int j){
    return jogo[i][j - 1] == jogo[i][j] || jogo[i][j - 1] == 0;
}

int direita(int i, int j){
    return jogo[i][j + 1] == jogo[i][j] || jogo[i][j + 1] == 0;
}

int acima(int i, int j){
    return jogo[i - 1][j] == jogo[i][j] || jogo[i - 1][j] == 0;
}

void imprime(int direcao, char* texto){
    if(direcao){
        if(first)   first = 0;
        else        printf(" ");
        printf("%s", texto);
    }
}

int main(){
    int n, numero2048, down, left, right, up;

    for(int i = 0; i < 6; ++i){
        for(int j = 0; j < 6; ++j){
            jogo[i][j] = 2048;
        }
    }

    scanf("%d", &n);
    for(int k = 0; k < n; ++k){
        first = 1;
        numero2048 = 0;
        down = 0, left = 0, right = 0, up = 0;

        for(int i = 1; i <= 4; ++i){
            for(int j = 1; j <= 4; ++j){
                scanf("%d", &jogo[i][j]);
                if(jogo[i][j] == 2048)  numero2048 = 1;
            }
        }

        if(numero2048){
            printf("NONE\n");
            continue;
        }

        for(int i = 1; i <= 4; ++i){
            for(int j = 1; j <= 4; ++j){
                if(jogo[i][j] != 0){
                    down |= abaixo(i, j);
                    left |= esquerda(i, j);
                    right |= direita(i, j);
                    up |= acima(i, j);
                }
            }
        }

        imprime(down, "DOWN");
        imprime(left, "LEFT");
        imprime(right, "RIGHT");
        imprime(up, "UP");

        if(first)   printf("NONE\n");
        else        printf("\n");
    }
}
```

### C++17
```cpp
#include <iostream>
#include <cstring>

using namespace std;

bool first;
int jogo[6][6];

bool abaixo(int i, int j){
    return jogo[i + 1][j] == jogo[i][j] || jogo[i + 1][j] == 0;
}

bool esquerda(int i, int j){
    return jogo[i][j - 1] == jogo[i][j] || jogo[i][j - 1] == 0;
}

bool direita(int i, int j){
    return jogo[i][j + 1] == jogo[i][j] || jogo[i][j + 1] == 0;
}

bool acima(int i, int j){
    return jogo[i - 1][j] == jogo[i][j] || jogo[i - 1][j] == 0;
}

void imprime(bool direcao, string texto){
    if(direcao){
        if(first)   first = false;
        else        cout << ' ';
        cout << texto;
    }
}

int main(){
    int n;
    bool numero2048, down, left, right, up;

    for(int i = 0; i < 6; ++i){
        for(int j = 0; j < 6; ++j){
            jogo[i][j] = 2048;
        }
    }

    cin >> n;
    for(int k = 0; k < n; ++k){
        first = true;
        numero2048 = false;
        down = false, left = false, right = false, up = false;

        for(int i = 1; i <= 4; ++i){
            for(int j = 1; j <= 4; ++j){
                cin >> jogo[i][j];
                if(jogo[i][j] == 2048)  numero2048 = true;
            }
        }

        if(numero2048){
            cout << "NONE" << endl;
            continue;
        }

        for(int i = 1; i <= 4; ++i){
            for(int j = 1; j <= 4; ++j){
                if(jogo[i][j] != 0){
                    down |= abaixo(i, j);
                    left |= esquerda(i, j);
                    right |= direita(i, j);
                    up |= acima(i, j);
                }
            }
        }

        imprime(down, "DOWN");
        imprime(left, "LEFT");
        imprime(right, "RIGHT");
        imprime(up, "UP");

        if(first)   cout << "NONE" << endl;
        else        cout << endl;
    }

    return 0;
}
```

### Python 3.9
```python
jogo = [[2048 for _ in range(6)] for _ in range(6)]

direcoes = [("DOWN", (1, 0)), ("LEFT", (0, -1)), ("RIGHT", (0, 1)), ("UP", (-1, 0))]
possibilidades = []
numero2048 = False
first = True

def podeDirecao(p, i, j):
    x = direcoes[p][1][0]
    y = direcoes[p][1][1]
    return (jogo[i + x][j + y] == jogo[i][j] or jogo[i + x][j + y] == 0)

def imprime(direcao):
    global first
    if(possibilidades[direcao]):
        if(first):
            first = False
        else:
            print(' ', end='')
        print(direcoes[direcao][0], end='')

n = int(input())

for _ in range(n):
    first = True
    numero2048 = False
    possibilidades = [False for _ in range(4)]

    for i in range(1, 5):
        jogo[i] = [2048] + [int(x) for x in input().strip().split(' ')] + [2048]
        for j in range(1, 5):
            if(jogo[i][j] == 2048):
                numero2048 = True
    
    if(numero2048):
        print("NONE")
        continue
    
    for i in range(1, 5):
        for j in range(1, 5):
            if(jogo[i][j] != 0):
                for k in range(4):
                    possibilidades[k] |= podeDirecao(k, i, j)
    
    for i in range(4):
        imprime(i)
    
    if(first):
        print("NONE")
    else:
        print()
```