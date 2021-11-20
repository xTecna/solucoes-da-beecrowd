#include <string.h>
#include <stdio.h>

int main(){
    int T, diferenca;
    char A[10001], B[10001];

    scanf("%d\n", &T);

    for(int i = 0; i < T; ++i){
        scanf("%s %s\n", &A, &B);

        diferenca = 0;
        for(int j = 0; j < strlen(A); ++j){
            diferenca += (B[j] - A[j] + 26) % 26;
        }

        printf("%d\n", diferenca);
    }

    return 0;
}
