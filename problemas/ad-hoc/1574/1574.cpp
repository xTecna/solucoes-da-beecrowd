#include <iostream>
#include <vector>

using namespace std;

int main(){
    string palavra;
    vector<int> instrucoes;
    int T, n, posicao, instrucao;

    cin >> T;

    for(int k = 0; k < T; ++k){
        cin >> n;

        posicao = 0;
        instrucoes.assign(n + 1, 0);
        for(int i = 1; i <= n; ++i){
            cin >> palavra;

            if(palavra == "LEFT"){
                instrucoes[i] = -1;
            }else if(palavra == "RIGHT"){
                instrucoes[i] = 1;
            }else{
                cin >> palavra >> instrucao;

                instrucoes[i] = instrucoes[instrucao];
            }

            posicao += instrucoes[i];
        }

        cout << posicao << endl;
    }

    return 0;
}
