#include <iostream>

using namespace std;

int main(){
    int N, altura, espessura, galhos;

    cin >> N;
    for(int i = 0; i < N; ++i){
        cin >> altura >> espessura >> galhos;
        cout << (string) ((altura >= 200) && (altura <= 300) && (espessura >= 50) && (galhos >= 150) ? "Sim" : "Nao") << endl;
    }

    return 0;
}