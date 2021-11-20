#include <iostream>

using namespace std;

int main(){
    char operador, igual;
    int C, primeiro_numero, segundo_numero, resultado_input, resultado_real;

    cin >> C;
    for(int k = 0; k < C; ++k){
        cin >> primeiro_numero >> operador >> segundo_numero >> igual >> resultado_input;

        switch(operador){
            case '+':   resultado_real = primeiro_numero + segundo_numero;
                        break;
            case '-':   resultado_real = primeiro_numero - segundo_numero;
                        break;
            case 'x':   resultado_real = primeiro_numero * segundo_numero;
                        break;
        }

        if(resultado_input != resultado_real){
            int numero_Rs = resultado_input > resultado_real ? resultado_input - resultado_real : resultado_real - resultado_input;
            cout << 'E';
            for(int i = 0; i < numero_Rs; ++i){
                cout << 'r';
            }
            cout << "ou!" << endl;
        }
    }

    return 0;
}
