#include <iostream>

using namespace std;

int main(){
    int ingredientes[100];
    int T, D, I, B, Q, x, y;

    cin >> T;
    while(T--){
        cin >> D >> I >> B;

        for(int i = 0; i < I; ++i){
            cin >> ingredientes[i];
        }

        int bolos_max = 0;
        for(int i = 0; i < B; ++i){
            cin >> Q;

            int custo_unitario = 0;
            for(int j = 0; j < Q; ++j){
                cin >> x >> y;
                custo_unitario += ingredientes[x] * y;
            }

            if(D/custo_unitario > bolos_max){
                bolos_max = D / custo_unitario;
            }
        }

        cout << bolos_max << endl;
    }

    return 0;
}