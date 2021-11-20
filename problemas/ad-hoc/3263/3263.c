#include <string.h>
#include <stdio.h>

int main(){
    int N;
    char antes[1024], depois[1024];

    scanf("%d\n%s\n%s\n", &N, antes, depois);

    N %= 2;

    if(!N){
        if(!strcmp(antes, depois)){
            printf("Deletion succeeded\n");
        }else{
            printf("Deletion failed\n");
        }
    }else{
        int i;
        for(i = 0; i < strlen(antes); ++i){
            if(antes[i] == depois[i]){
                printf("Deletion failed\n");
                break;
            }
        }
        if(i == strlen(antes))  printf("Deletion succeeded\n");
    }

    return 0;
}
