#include <stdio.h>

int main(){
    int N, LA, LB, SA, SB;

    scanf("%d %d %d %d %d", &N, &LA, &LB, &SA, &SB);

    if(LA <= N && N <= LB && SA <= N && N <= SB){
        printf("possivel\n");
    }else{
        printf("impossivel\n");
    }

    return 0;
}
