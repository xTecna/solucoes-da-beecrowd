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
