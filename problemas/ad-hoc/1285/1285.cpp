#include <iostream>
#include <vector>

using namespace std;

vector<int> resposta;

bool repetido(int n){
    vector<bool> digitos;

    digitos.assign(10, false);

    while(n){
        if(digitos[n%10])   return true;
        digitos[n%10] = true;
        n /= 10;
    }

    return false;
}

void preCalcula(){
    resposta.assign(5001, 0);

    for(int i = 1; i < 5001; ++i){
        resposta[i] = resposta[i - 1];
        if(!repetido(i)) resposta[i] += 1;
    }
}

int digitosDiferentes(int a, int b){
    return resposta[b] - resposta[a - 1];
}

int main(){
    int N, M;

    preCalcula();

    while(cin >> N >> M){
        cout << digitosDiferentes(N, M) << endl;
    }

    return 0;
}
