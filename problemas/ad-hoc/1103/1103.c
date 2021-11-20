#include <stdio.h>

int converte(int horas, int minutos){
    return 60 * horas + minutos;
}

int main(){
    int H1, M1, H2, M2, resposta;

    while(scanf("%d %d %d %d", &H1, &M1, &H2, &M2)){
        if(!H1 && !M1 && !H2 && !M2)    break;

        if(H2 < H1 || (H2 == H1 && M2 < M1))    H2 += 24;
        resposta = converte(H2, M2) - converte(H1, M1);

        printf("%d\n", resposta);
    }

    return 0;
}
