#include <stdio.h>

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

    while(scanf("%lf %lf %d", &capital, &taxa, &meses) != EOF){
        simples = jurosSimples(capital, meses, taxa);
        compostos = jurosCompostos(capital, meses, taxa);

        printf("DIFERENCA DE VALOR = %.2lf\n", compostos - simples);
        printf("JUROS SIMPLES = %.2lf\n", simples);
        printf("JUROS COMPOSTO = %.2f\n", compostos);
    }
}
