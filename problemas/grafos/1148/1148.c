#include <limits.h>
#include <stdio.h>
#include <stdlib.h>

long long int min(long long int a, long long int b) {
    return a < b ? a : b;
}

void FloydWarshall(long long int **grafo, int N) {
    for (int k = 1; k <= N; ++k) {
        for (int i = 1; i <= N; ++i) {
            for (int j = 1; j <= N; ++j) {
                grafo[i][j] = min(grafo[i][j], grafo[i][k] + grafo[k][j]);
            }
        }
    }
}

int main(void) {
    long long int **grafo;
    int N, E, X, Y, H, K, O, D;

    while (scanf("%d %d\n", &N, &E) != EOF) {
        if (N == 0 && E == 0) {
            break;
        }

        grafo = (long long int **)malloc((N + 1) * sizeof(long long int *));
        for (int i = 1; i <= N; ++i) {
            grafo[i] = (long long int *)malloc((N + 1) * sizeof(long long int));
            for (int j = 1; j <= N; ++j) {
                grafo[i][j] = INT_MAX;
            }
        }

        for (int i = 0; i < E; ++i) {
            scanf("%d %d %d\n", &X, &Y, &H);
            grafo[X][Y] = H;
        }

        for (int i = 1; i <= N; ++i) {
            for (int j = i; j <= N; ++j) {
                if (grafo[i][j] != INT_MAX && grafo[j][i] != INT_MAX) {
                    grafo[i][j] = 0;
                    grafo[j][i] = 0;
                }
            }
        }

        FloydWarshall(grafo, N);

        scanf("%d\n", &K);
        for (int i = 0; i < K; ++i) {
            scanf("%d %d\n", &O, &D);

            if (grafo[O][D] == INT_MAX) {
                printf("Nao e possivel entregar a carta\n");
            } else {
                printf("%lld\n", grafo[O][D]);
            }
        }
        printf("\n");

        for (int i = 1; i <= N; ++i) {
            free(grafo[i]);
        }
        free(grafo);
    }

    return 0;
}