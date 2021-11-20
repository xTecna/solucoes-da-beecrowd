#include <iostream>
#include <vector>

using namespace std;

int main(){
    char pulo;
    vector<int> tiros;
    int N, T, atingido;

    cin >> N;

    for(int k = 0; k < N; ++k){
        cin >> T;

        tiros.assign(T, 0);
        for(int i = 0; i < T; ++i){
            cin >> tiros[i];
        }

        atingido = 0;
        for(int i = 0; i < T; ++i){
            cin >> pulo;

            if((pulo == 'S' && tiros[i] < 3) || (pulo == 'J' && tiros[i] > 2)){
                ++atingido;
            }
        }

        cout << atingido << endl;
    }

    return 0;
}
