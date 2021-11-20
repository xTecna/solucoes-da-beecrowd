#include <stdio.h>

int main(){
    int L, R;

    while(scanf("%d %d", &L, &R)){
        if(!L && !R)  break;

        printf("%d\n", L + R);
    }

    return 0;
}
