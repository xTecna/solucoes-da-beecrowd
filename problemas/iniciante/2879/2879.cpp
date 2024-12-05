#include <iostream>

using namespace std;

int main(){
    int T, N, vitorias;

    cin >> T;

    vitorias = 0;
    for(int i = 0; i < T; ++i){
        cin >> N;

        if (N != 1){
            vitorias += 1;
        }
    }

    cout << vitorias << endl;

    return 0;
}