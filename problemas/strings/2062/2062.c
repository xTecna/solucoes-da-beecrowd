#include <string.h>
#include <stdio.h>

int main(){
    int N;
    char palavra[21];

    scanf("%d\n", &N);

    for(int i = 0; i < N; ++i){
        scanf("%s", &palavra);

        if(i)   printf(" ");
        if(strlen(palavra) == 3){
            if(palavra[0] == 'O' && palavra[1] == 'B')
                printf("OBI");
            else if(palavra[0] == 'U' && palavra[1] == 'R')
                printf("URI");
            else
                printf("%s", palavra);
        }else{
            printf("%s", palavra);
        }
    }
    
    printf("\n");

    return 0;
}
