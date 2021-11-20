#include <string.h>
#include <stdio.h>

int main(){
    int C;
    char rajesh[11], sheldon[11];

    scanf("%d\n", &C);

    for(int i = 0; i < C; ++i){
        scanf("%s %s\n", &rajesh, &sheldon);

        if(!strcmp(rajesh, sheldon)){
            printf("empate\n");
        }else if(!strcmp(rajesh, "pedra")){
            if(!strcmp(sheldon, "tesoura") || !strcmp(sheldon, "lagarto"))
                printf("rajesh\n");
            else
                printf("sheldon\n");
        }else if(!strcmp(rajesh, "papel")){
            if(!strcmp(sheldon, "pedra") || !strcmp(sheldon, "spock"))
                printf("rajesh\n");
            else
                printf("sheldon\n");
        }else if(!strcmp(rajesh, "tesoura")){
            if(!strcmp(sheldon, "papel") || !strcmp(sheldon, "lagarto"))
                printf("rajesh\n");
            else
                printf("sheldon\n");
        }else if(!strcmp(rajesh, "lagarto")){
            if(!strcmp(sheldon, "papel") || !strcmp(sheldon, "spock"))
                printf("rajesh\n");
            else
                printf("sheldon\n");
        }else if(!strcmp(sheldon, "pedra") || !strcmp(sheldon, "tesoura"))
            printf("rajesh\n");
        else
            printf("sheldon\n");
        }
    }

    return 0;
}
