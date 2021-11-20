#include <stdio.h>

int main(){
    int K, N, M, X, Y;

    while(scanf("%d", &K)){
        if(!K)  break;

        scanf("%d %d", &N, &M);
        
        for(int i = 0; i < K; ++i){
            scanf("%d %d", &X, &Y);

            X -= N, Y -= M;

            if(X > 0){
                if(Y > 0)       printf("NE\n");
                else if(Y < 0)  printf("SE\n");
                else            printf("divisa\n");
            }else if(X < 0){
                if(Y > 0)       printf("NO\n");
                else if(Y < 0)  printf("SO\n");
                else            printf("divisa\n");
            }else               printf("divisa\n");
        }
    }

    return 0;
}
