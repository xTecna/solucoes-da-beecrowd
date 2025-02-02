#include <iostream>

using namespace std;

int main(){
    int N, ano, tempo, mais_cedo;
    string resposta, planeta;

    while(cin >> N){
        if(!N)  break;

        mais_cedo = 3113;
        resposta = "";
        for(int i = 0; i < N; ++i){
            cin >> planeta >> ano >> tempo;
            if((ano - tempo) < mais_cedo){
                mais_cedo = (ano - tempo);
                resposta = planeta;
            }
        }
        cout << resposta << endl;
    }

    return 0;
}