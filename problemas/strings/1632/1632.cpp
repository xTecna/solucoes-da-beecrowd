#include <iostream>

using namespace std;

int variacoes(char caractere){
    caractere = toupper(caractere);
    switch(caractere){
        case 'A':
        case 'E':
        case 'I':
        case 'O':
        case 'S':   return 3;
        default:    return 2;
    }
}

int main(){
    int T;
    string senha;
    long long int resposta;

    cin >> T;
    for(int i = 0; i < T; ++i){
        resposta = 1;

        cin >> senha;
        for(int j = 0; j < senha.length(); ++j){
            resposta *= variacoes(senha[j]);
        }
        cout << resposta << endl;
    }

    return 0;
}