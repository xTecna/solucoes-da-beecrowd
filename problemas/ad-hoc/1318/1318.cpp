#include <iostream>
#include <cstring>

using namespace std;

int main(){
    int bilhetes[10001];
    int N, M, T, resposta;

    while(cin >> N >> M){
        if(!N && !M)    break;

        resposta = 0;
        memset(bilhetes, 0, sizeof(bilhetes));

        for(int i = 0; i < M; ++i){
            cin >> T;
            ++bilhetes[T];
            if(bilhetes[T] == 2)    ++resposta;
        }

        cout << resposta << endl;
    }

    return 0;
}
