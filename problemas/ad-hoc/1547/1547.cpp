#include <iostream>
#include <cmath>

using namespace std;

int main(){
    int N, QT, S, palpite, menor_diferenca, melhor_palpite;

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> QT >> S;

        cin >> palpite;
        melhor_palpite = 0;
        menor_diferenca = abs(S - palpite);

        for(int j = 1; j < QT; ++j){
            cin >> palpite;

            if(menor_diferenca > abs(S - palpite)){
                melhor_palpite = j;
                menor_diferenca = abs(S - palpite);
            }
        }

        cout << melhor_palpite + 1 << endl;
    }

    return 0;
}
