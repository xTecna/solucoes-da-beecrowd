#include <iostream>
#include <vector>

using namespace std;

int main(){
    int N, M, x;
    vector<int> participantes, problemas;
    bool condicao1, condicao2, condicao3, condicao4;

    while(cin >> N >> M){
        if(!N && !M)    break;

        problemas.assign(M, 0);
        participantes.assign(N, 0);

        for(int i = 0; i < N; ++i){
            for(int j = 0; j < M; ++j){
                cin >> x;

                participantes[i] += x;
                problemas[j] += x;
            }
        }

        condicao1 = condicao2 = condicao3 = condicao4 = true;
        
        for(int i = 0; i < N; ++i){
            if(participantes[i] == M)   condicao1 = false;
            if(participantes[i] == 0)   condicao4 = false;
        }
        
        for(int i = 0; i < M; ++i){
            if(problemas[i] == 0)   condicao2 = false;
            if(problemas[i] == N)   condicao3 = false;
        }

        cout << condicao1 + condicao2 + condicao3 + condicao4 << endl;
    }

    return 0;
}
