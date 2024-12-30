#include <iostream>

using namespace std;

int main(){
    int T, N, n, resposta;

    T = 1;
    while(cin >> N){
        if(!N)  break;

        for(int i = 1; i <= N; ++i){
            cin >> n;
            if(n == i)  resposta = n;
        }

        cout << "Teste " << T++ << endl;
        cout << resposta << endl;
        cout << endl;
    }

    return 0;
}