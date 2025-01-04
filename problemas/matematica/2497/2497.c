#include <stdio.h>

int main(){
    int n, teste;

    teste = 1;
    while (1) {
        scanf("%d\n", &n);

        if (n == -1) {
            break;
        }

        printf("Experiment %d: %d full cycle(s)\n", teste, n / 2);
        teste += 1;
    }

    return 0;
}