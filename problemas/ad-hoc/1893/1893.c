#include <stdio.h>

int main(){
    int ontem, hoje;

    scanf("%d %d", &ontem, &hoje);

    if(hoje < 3)            printf("nova\n");
    else if(hoje > 96)      printf("cheia\n");
    else if(hoje < ontem)   printf("minguante\n");
    else                    printf("crescente\n");

    return 0;
}
