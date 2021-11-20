#include <iostream>

using namespace std;

int main(){
    int N, cor, opcao, corretos;

    while(cin >> N){
        if(!N)  break;

        for(int i = 0; i < N; ++i){
            opcao = -1, corretos = 0;

            for(int k = 0; k < 5; ++k){
                cin >> cor;

                if(cor <= 127){
                    opcao = k;
                    ++corretos;
                }
            }

            if(corretos == 1)   cout << (char) ('A' + opcao) << endl;
            else                cout << '*' << endl;
        }
    }

    return 0;
}
