#include <stdio.h>

int main()
{
    int C;

    for(int i = 1; i <= 4; ++i){
        scanf("%d", &C);
        
        if(C == 1){
            printf("%d\n", i);
            break;
        }
    }

    return 0;
}