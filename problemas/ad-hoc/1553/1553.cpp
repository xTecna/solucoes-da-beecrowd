#include <iostream>
#include <vector>

using namespace std;

int main(){
    int N, K, P, resposta;
    vector<int> frequencias;

    while(cin >> N >> K){
        if(!N && !K)    break;

        resposta = 0;
        frequencias.assign(N + 1, 0);

        for(int i = 0; i < N; ++i){
            cin >> P;

            frequencias[P]++;
            if (frequencias[P] == K) ++resposta;
        }

        cout << resposta << endl;
    }

    return 0;
}
