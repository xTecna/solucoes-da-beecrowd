#include <iostream>

using namespace std;

int main()
{
    int N, X;
    
    cin >> N >> X;
    
    int anterior, ponto, resposta, acumulado;
    
    resposta, acumulado = 1, 1;
    cin >> anterior;
    for(int i = 1; i < N; ++i){
        cin >> ponto;
        
        if (ponto - anterior <= X) {
            acumulado += 1;
        } else {
            acumulado = 1;
        }
        resposta = max(resposta, acumulado);
        anterior = ponto;
    }
    
    cout << resposta << endl;

    return 0;
}