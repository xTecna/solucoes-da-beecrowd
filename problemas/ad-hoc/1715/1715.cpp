#include <iostream>
#include <vector>

using namespace std;

int main(){
    vector<int> jogadores;
    int N, M, gols, resposta;

    cin >> N >> M;

    jogadores.assign(N, 0);
    for(int i = 0; i < N; ++i){
        for(int j = 0; j < M; ++j){
            cin >> gols;

            if(gols > 0) jogadores[i] += 1;
        }
    }

    resposta = 0;
    for(int i = 0; i < N; ++i){
        if(jogadores[i] == M) ++resposta;
    }

    cout << resposta << endl;

    return 0;
}
