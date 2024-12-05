#include <iostream>

using namespace std;

int main(){
    int N, S, x, menor_saldo;

    cin >> N >> S;
    menor_saldo = S;
    for(int i = 0; i < N; ++i){
        cin >> x;
        S += x;
        if(S < menor_saldo){
            menor_saldo = S;
        }
    }

    cout << menor_saldo << endl;

    return 0;
}