#include <iostream>
#include <sstream>

using namespace std;

int main(){
    int M, N, soma;
    string aux, resposta;
    stringstream fluxo;

    while(cin >> M >> N){
        if(!M && !N)    break;

        soma = M + N;

        fluxo.clear();
        fluxo.str("");

        fluxo << soma;
        fluxo >> aux;

        resposta = "";
        for(int i = 0; i < aux.length(); ++i){
            if(aux[i] != '0')   resposta += aux[i];
        }

        cout << resposta << endl;
    }

    return 0;
}
