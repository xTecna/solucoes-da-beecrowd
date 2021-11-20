#include <stdio.h>

int main(){
    int qtd[2];
    char entrada[128];
    int X, p, abs, resposta;

    scanf("%d\n", &X);
    scanf("%s", entrada);

    qtd[0] = 0;
    qtd[1] = 0;
    p = 0;
    abs = 0;
    resposta = 0;
    while(entrada[p] != '\0'){
        if(entrada[p] == 'O'){
            ++p;
            continue;
        }

        int genero = (entrada[p] == 'W');

        if(qtd[genero] < qtd[1 - genero] || abs < X){
            if(qtd[genero] < qtd[1 - genero]){
                --abs;
            }else{
                ++abs;
            }

            ++resposta;
            ++qtd[genero];
            entrada[p] = 'O';
            continue;
        }

        if(entrada[p + 1] != '\0'){
            genero = (entrada[p + 1] == 'W');

            if(qtd[genero] < qtd[1 - genero] || abs < X){
                if(qtd[genero] < qtd[1 - genero]){
                    --abs;
                }else{
                    ++abs;
                }

                ++resposta;
                ++qtd[genero];
                entrada[p + 1] = 'O';
                continue;
            }else{
                break;
            }
        }
    }

    printf("%d\n", resposta);

    return 0;
}
