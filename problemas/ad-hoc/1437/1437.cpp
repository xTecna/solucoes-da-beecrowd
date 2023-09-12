#include <iostream>

using namespace std;

int main(){
    char comando;
    int N, direcao;

    while(cin >> N){
        if(!N)  break;

        direcao = 0;
        for(int i = 0; i < N; ++i){
            cin >> comando;

            if(comando == 'D'){
                direcao = (direcao + 1) % 4;
            }else{
                direcao = ((direcao - 1) + 4) % 4;
            }
        }

        switch(direcao){
            case 0: cout << "N" << endl;
                    break;
            case 1: cout << "L" << endl;
                    break;
            case 2: cout << "S" << endl;
                    break;
            case 3: cout << "O" << endl;
                    break;
        }
    }

    return 0;
}
