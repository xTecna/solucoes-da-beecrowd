#include <iostream>

using namespace std;

int main(){
    string expressao;
    int N, tam, resposta, parenteses;

    cin >> N;

    for(int k = 0; k < N; ++k){
        cin >> expressao;

        resposta = 0;
        parenteses = 0;
        tam = expressao.length();
        for(int i = 0; i < tam; ++i){
            if(expressao[i] == '<'){
                ++parenteses;
            }else if(expressao[i] == '>' && parenteses > 0){
                --parenteses;
                ++resposta;
            }
        }

        cout << resposta << endl;
    }

    return 0;
}
