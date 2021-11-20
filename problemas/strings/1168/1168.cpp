#include <iostream>

using namespace std;

int main(){
    string V;
    int N, resposta;
    int leds[10] = {6, 2, 5, 5, 4, 5, 6, 3, 7, 6};

    cin >> N;

    for(int i = 0; i < N; ++i){
        cin >> V;

        resposta = 0;
        for(int j = 0; j < V.length(); ++j){
            resposta += leds[V[j] - '0'];
        }

        cout << resposta << " leds" << endl;
    }

    return 0;
}
