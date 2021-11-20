#include <iostream>
#include <vector>

using namespace std;

int main(){
    int N, D, x;
    bool resposta;
    vector<int> jantares;

    while(cin >> N >> D){
        if(!N && !D)    break;

        resposta = false;
        jantares.assign(N, 0);

        for(int i = 0; i < D; ++i){
            for(int j = 0; j < N; ++j){
                cin >> x;

                jantares[j] += x;
            }
        }

        for(int i = 0; i < N; ++i){
            if(jantares[i] == D){
                resposta = true;
                break;
            }
        }

        cout << (string) (resposta ? "yes" : "no") << endl;
    }

    return 0;
}
