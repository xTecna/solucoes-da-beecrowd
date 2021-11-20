#include <stdlib.h>
#include <stdio.h>

int main(){
    int X1, Y1, X2, Y2;

    while(scanf("%d %d %d %d", &X1, &Y1, &X2, &Y2)){
        if(!X1 && !Y1 && !X2 && !Y2)    break;

        if(X1 == X2 && Y1 == Y2){
            printf("0\n");
        }else if(X1 == X2 || Y1 == Y2 || abs(X1 - X2) == abs(Y1 - Y2)){
            printf("1\n");
        }else{
            printf("2\n");
        }
    }

    return 0;
}
