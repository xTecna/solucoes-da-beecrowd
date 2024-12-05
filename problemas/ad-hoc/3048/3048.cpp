#include <iostream>

using namespace std;

int main(){
    int N, atual;

    cin >> N;

    int resposta = 0;
    int anterior = -1;
    for(int i = 0; i < N; ++i){
        cin >> atual;

        if(atual != anterior){
            anterior = atual;
            ++resposta;
        }
    }
    
    cout << resposta << endl;

    return 0;
}