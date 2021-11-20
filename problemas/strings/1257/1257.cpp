#include <iostream>

using namespace std;

int main(){
    string frase;
    int N, L, hash;

    cin >> N;

    for(int k = 0; k < N; ++k){
        hash = 0;
        cin >> L;

        for(int i = 0; i < L; ++i){
            cin >> frase;

            for(int j = 0; j < frase.length(); ++j){
                hash += (frase[j] - 'A') + i + j;
            }
        }

        cout << hash << endl;
    }

    return 0;
}
