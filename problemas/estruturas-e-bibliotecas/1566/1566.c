#include <stdio.h>
#include <stdlib.h>

void countingSort(int *V, int n, int limite) {
    int *aux = (int *)malloc(limite * sizeof(int));
    int k = 0;
    for (int i = 0; i < limite; ++i) {
        aux[i] = 0;
    }
    for (int i = 0; i < n; ++i) {
        aux[V[i]] += 1;
    }
    for (int i = 0; i < limite; ++i) {
        for (int j = 0; j < aux[i]; ++j) {
            V[k++] = i;
        }
    }
    free(aux);
}

int main(void) {
    int NC, N;
    int *V;

    scanf("%d", &NC);
    for (int k = 0; k < NC; ++k) {
        scanf("%d", &N);

        V = (int *)malloc(N * sizeof(int));
        for (int i = 0; i < N; ++i) {
            scanf("%d", &V[i]);
        }

        countingSort(V, N, 231);

        if (N > 0) {
            printf("%d", V[0]);
        }
        for (int i = 1; i < N; ++i) {
            printf(" %d", V[i]);
        }
        printf("\n");
    }

    return 0;
}