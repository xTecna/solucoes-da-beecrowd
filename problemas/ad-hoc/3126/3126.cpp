#include <iostream>

using namespace std;

int main(){
    int N, x, resposta;

    cin >> N;
    resposta = 0;
    for(int i = 0; i < N; ++i){
        cin >> x;
        resposta += x;
    }
    cout << resposta << endl;

    return 0;
}