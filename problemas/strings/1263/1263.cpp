#include <iostream>
#include <string>

using namespace std;

int main() {
    string frase;

    while(getline(cin, frase)){
        int aliteracoes = 0;

        bool proximaPalavra = false;
        int tamanhoAliteracao = 1;
        char letraAtual = tolower(frase[0]);
        for(int i = 1; i < frase.length(); ++i){
            frase[i] = tolower(frase[i]);
            if(frase[i] == ' '){
                proximaPalavra = true;
            }else if(proximaPalavra){
                if(frase[i] == letraAtual){
                    tamanhoAliteracao += 1;
                }else{
                    if(tamanhoAliteracao > 1){
                        aliteracoes += 1;
                    }
                    tamanhoAliteracao = 1;
                    letraAtual = frase[i];
                }
                proximaPalavra = !proximaPalavra;
            }
        }
        if(tamanhoAliteracao > 1){
            aliteracoes += 1;
        }

        cout << aliteracoes << endl;
    }

    return 0;
}