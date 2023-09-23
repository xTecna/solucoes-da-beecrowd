#include <iostream>

using namespace std;

int porcoes[5] = {300, 1500, 600, 1000, 150};

int main(){
    int quantidade, resposta;

    resposta = 225;
    for(int i = 0; i < 5; ++i){
        cin >> quantidade;
        resposta += quantidade * porcoes[i];
    }
    cout << resposta << endl;

    return 0;
}