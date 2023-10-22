#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
	int grafo[50][50];
	int T, X, n, m, u, v;

	scanf("%d\n", &T);

	for (int k = 0; k < T; ++k) {
		scanf("%d\n", &X);

		scanf("%d %d\n", &n, &m);

		memset(grafo, 0, sizeof(grafo));

		for (int i = 0; i < m; ++i) {
			scanf("%d %d\n", &u, &v);
			grafo[u][v] = 1;
			grafo[v][u] = 1;
		}

		int resposta = 0;
		for (int i = 0; i < n; ++i) {
			for (int j = i; j < n; ++j) {
				if (grafo[i][j] == 1) {
					++resposta;
				}
			}
		}

		printf("%d\n", 2 * resposta);
	}

	return 0;
}