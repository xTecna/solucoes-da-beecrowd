#include <iostream>

using namespace std;

int main(){
    int N, T, V, resposta;

    cin >> N;
    resposta = 0;
    for(int i = 0; i < N; ++i){
        cin >> T >> V;
        resposta += T * V;
    }
    cout << resposta << endl;

    return 0;
}