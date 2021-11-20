#include <iostream>
#include <vector>

using namespace std;

int main(){
    vector<int> amostras;
    int N, anterior, proximo, picos;

    while(cin >> N){
        if(!N)  break;

        amostras.assign(N, 0);
        for(int i = 0; i < N; ++i){
            cin >> amostras[i];
        }

        picos = 0;
        for(int i = 0; i < N; ++i){
            anterior = amostras[((i - 1) + N) % N];
            proximo = amostras[(i + 1) % N];

            if((amostras[i] < anterior && amostras[i] < proximo) || (amostras[i] > anterior && amostras[i] > proximo))  ++picos;
        }

        cout << picos << endl;
    }

    return 0;
}
