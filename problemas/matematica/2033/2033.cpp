#include <iostream>
#include <iomanip>

using namespace std;

double potencia(double base, int expoente){
    if(expoente == 1)   return base;
    if(expoente % 2)    return base * potencia(base, expoente - 1);
    double pot = potencia(base, expoente/2);
    return pot * pot;
}

double jurosSimples(double capital, int meses, double taxa){
    return meses * taxa * capital;
}

double jurosCompostos(double capital, int meses, double taxa){
    return capital * (potencia(1 + taxa, meses) - 1);
}

int main(){
    int meses;
    double taxa, capital, simples, compostos;

    cout << setprecision(2) << fixed;
    while(cin >> capital >> taxa >> meses){
        simples = jurosSimples(capital, meses, taxa);
        compostos = jurosCompostos(capital, meses, taxa);

        cout << "DIFERENCA DE VALOR = " << compostos - simples << endl;
        cout << "JUROS SIMPLES = " << simples << endl;
        cout << "JUROS COMPOSTO = " << compostos << endl;
    }

    return 0;
}
