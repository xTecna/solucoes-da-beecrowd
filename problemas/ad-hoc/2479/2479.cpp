#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main(){
    char comportamento;
    vector<string> criancas;
    int N, bemComportadas, malComportadas;

    cin >> N;

    criancas.assign(N, "");
    bemComportadas = malComportadas = 0;
    for(int i = 0; i < N; ++i){
        cin >> comportamento >> criancas[i];

        if(comportamento == '+')    ++bemComportadas;
        else                        ++malComportadas;
    }

    sort(criancas.begin(), criancas.end());

    for(int i = 0; i < N; ++i){
        cout << criancas[i] << endl;
    }
    cout << "Se comportaram: " << bemComportadas << " | ";
    cout << "Nao se comportaram: " << malComportadas << endl;

    return 0;
}
