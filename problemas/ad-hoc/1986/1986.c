#include <stdio.h>

int main(){
    int n, letra;
    char palavra[201];

    scanf("%d\n", &n);

    for(int i = 0; i < n; ++i) {
        scanf("%X", &letra);
        palavra[i] = letra;
    }
    palavra[n] = '\0';

    printf("%s\n", palavra);

    return 0;
}