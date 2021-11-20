#include <stdio.h>

int main(){
    int N, M1, M2, V1, V2;

    scanf("%d", &N);

    for(int i = 0; i < N; ++i){
        scanf("%d x %d", &M1, &V2);
        scanf("%d x %d", &M2, &V1);

        if(M1 + V1 == M2 + V2){
            if(V1 == V2)            printf("Penaltis\n");
            else if(V1 > V2)        printf("Time 1\n");
            else                    printf("Time 2\n");
        }else if(M1 + V1 > M2 + V2) printf("Time 1\n");
        else                        printf("Time 2\n");
    }

    return 0;
}
