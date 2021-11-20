#include <iostream>

using namespace std;

int main(){
    int N;
    bool primeiraLetra;
    string frase, resposta;

    cin >> N;
    cin.ignore();

    for(int i = 0; i < N; ++i){
        getline(cin, frase);

        resposta = "";
        primeiraLetra = true;

        for(int j = 0; j < frase.length(); ++j){
            if(primeiraLetra && frase[j] != ' '){
                resposta += frase[j];
                primeiraLetra = false;
            }else if(!primeiraLetra && frase[j] == ' '){
                primeiraLetra = true;
            }
        }

        cout << resposta << endl;
    }

    return 0;
}
