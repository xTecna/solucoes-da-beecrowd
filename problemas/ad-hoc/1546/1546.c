#include <stdio.h>

int main(){
    int N, K, feedback;

    scanf("%d", &N);
    
    for(int i = 0; i < N; ++i){
        scanf("%d", &K);

        for(int j = 0; j < K; ++j){
            scanf("%d", &feedback);

            switch(feedback){
                case 1: printf("Rolien\n");
                        break;
                case 2: printf("Naej\n");
                        break;
                case 3: printf("Elehcim\n");
                        break;
                case 4: printf("Odranoel\n");
                        break;
            }
        }
    }

    return 0;
}
