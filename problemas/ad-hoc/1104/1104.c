#include <string.h>
#include <stdio.h>

int main(){
    int alice[100001], beatriz[100001];
    int A, B, carta, so_alice, so_beatriz, ambas;

    while(scanf("%d %d", &A, &B)){
        if(!A && !B)    break;

        memset(alice, 0, sizeof(alice));
        memset(beatriz, 0, sizeof(beatriz));

        so_alice = 0;
        for(int i = 0; i < A; ++i){
            scanf("%d", &carta);

            if(!alice[carta]){
                alice[carta] = 1;
                ++so_alice;
            }
        }

        ambas = 0;
        so_beatriz = 0;
        for(int i = 0; i < B; ++i){
            scanf("%d", &carta);

            if(!beatriz[carta]){
                beatriz[carta] = 1;
                ++so_beatriz;
                if(alice[carta])    ++ambas;
            }
        }

        so_alice -= ambas;
        so_beatriz -= ambas;

        printf("%d\n", so_alice < so_beatriz ? so_alice : so_beatriz);
    }

    return 0;
}