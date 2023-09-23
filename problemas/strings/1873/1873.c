#include <string.h>
#include <stdio.h>

char* jogadas[5] = {"pedra", "papel", "tesoura", "lagarto", "spock"};
int regras[5][5] = {
    {0, -1, 1, 1, -1},
    {1, 0, -1, -1, 1},
    {-1, 1, 0, 1, -1},
    {-1, 1, -1, 0, 1},
    {1, -1, 1, -1, 0}
};

int converte(char* jogada){
    for(int i = 0; i < 5; ++i){
        if(!strcmp(jogada, jogadas[i])) return i;
    }
}

int main(){
    int C, r, s;
    char rajesh[11], sheldon[11];

    scanf("%d\n", &C);

    for(int i = 0; i < C; ++i){
        scanf("%s %s\n", rajesh, sheldon);

        r = converte(rajesh);
        s = converte(sheldon);

        switch(regras[r][s]){
            case -1:    printf("sheldon\n");
                        break;
            case 0:     printf("empate\n");
                        break;
            case 1:     printf("rajesh\n");
                        break;
        }
    }

    return 0;
}