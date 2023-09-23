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