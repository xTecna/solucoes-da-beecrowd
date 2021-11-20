#include <stdio.h>

int main(){
    int K;

    scanf("%d", &K);

    if(K == 1)          printf("Top 1\n");
    else if(K <= 3)     printf("Top 3\n");
    else if(K <= 5)     printf("Top 5\n");
    else if(K <= 10)    printf("Top 10\n");
    else if(K <= 25)    printf("Top 25\n");
    else if(K <= 50)    printf("Top 50\n");
    else                printf("Top 100\n");

    return 0;
}
