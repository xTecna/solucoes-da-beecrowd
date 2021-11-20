#include <iostream>

using namespace std;

int main(){
    int qtd[2];
    string entrada;
    int X, abs, resposta;

    cin >> X;
    cin >> entrada;

    qtd[0] = 0;
    qtd[1] = 0;
    abs = 0;
    resposta = 0;
    while(entrada.length()){
        int genero = (entrada[0] == 'W');

        if(qtd[genero] < qtd[1 - genero] || abs < X){
            if(qtd[genero] < qtd[1 - genero]){
                --abs;
            }else{
                ++abs;
            }

            ++resposta;
            ++qtd[genero];
            entrada.erase(0, 1);
            continue;
        }

        if(entrada.length() > 1){
            genero = (entrada[1] == 'W');

            if(qtd[genero] < qtd[1 - genero] || abs < X){
                if(qtd[genero] < qtd[1 - genero]){
                    --abs;
                }else{
                    ++abs;
                }

                ++resposta;
                ++qtd[genero];
                entrada.erase(1, 1);
                continue;
            }else{
                break;
            }
        }
    }

    cout << resposta << endl;

    return 0;
}
