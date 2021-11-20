#include <iostream>

using namespace std;

int main(){
    int N, A, B, jogador1, jogador2;

    while(cin >> N){
        if(!N)  break;

        jogador1 = 0, jogador2 = 0;

        for(int i = 0; i < N; ++i){
            cin >> A >> B;

            if(A > B)       ++jogador1;
            else if(B > A)  ++jogador2;
        }

        cout << jogador1 << ' ' << jogador2 << endl;
    }

    return 0;
}
