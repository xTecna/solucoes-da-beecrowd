#include <iostream>

using namespace std;

int main(){
    int N, resposta;
    int colunas[50001], esquerda[50001], direita[50001];

    cin >> N;
    for(int i = 0; i < N; ++i){
        cin >> colunas[i];
    }

    esquerda[0] = 1;
    for(int i = 1; i < N; ++i){
        esquerda[i] = min(colunas[i], esquerda[i - 1] + 1);
    }

    direita[N - 1] = 1;
    for(int i = N - 2; i > -1; --i){
        direita[i] = min(colunas[i], direita[i + 1] + 1);
    }

    resposta = 0;
    for(int i = 0; i < N; ++i){
        resposta = max(resposta, min(esquerda[i], direita[i]));
    }

    cout << resposta << endl;

    return 0;
}
