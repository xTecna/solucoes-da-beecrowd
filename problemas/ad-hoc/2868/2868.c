#include <stdio.h>

int main(){
    char operador;
    int C, primeiro_numero, segundo_numero, resultado_input, resultado_real;

    scanf("%d", &C);
    for(int i = 0; i < C; ++i){
        scanf("%d %c %d = %d", &primeiro_numero, &operador, &segundo_numero, &resultado_input);

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
            printf("E");
            for(int i = 0; i < numero_Rs; ++i){
                printf("r");
            }
            printf("ou!\n");
        }
    }

    return 0;
}
