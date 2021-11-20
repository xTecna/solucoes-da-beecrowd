#include <iostream>

using namespace std;

int main(){
    char comando;
    int N, direcao;
    char direcoes[4] = {'N', 'L', 'S', 'O'};

    while(cin >> N){
        if(!N)  break;

        direcao = 0;
        for(int i = 0; i < N; ++i){
            cin >> comando;

            direcao += (comando == 'D') ? 1 : -1;
            direcao = (direcao + 4) % 4;
        }

        cout << direcoes[direcao] << endl;
    }

    return 0;
}
