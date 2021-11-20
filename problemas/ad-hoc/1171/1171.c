#include <string.h>
#include <stdio.h>

int main(){
    int n, x, frequencias[2001];

    memset(frequencias, 0, sizeof(frequencias));
    
    scanf("%d", &n);

    for(int i = 0; i < n; ++i){
        scanf("%d", &x);

        ++frequencias[x];
    }

    for(int i = 1; i < 2001; ++i){
        if(frequencias[i] > 0)  printf("%d aparece %d vez(es)\n", i, frequencias[i]);
    }

    return 0;
}
