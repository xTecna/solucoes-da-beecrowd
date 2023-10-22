#include <climits>
#include <iostream>
#include <vector>

using namespace std;

void FloydWarshall(vector<vector<long long int>> &grafo, int N) {
	for (int k = 1; k <= N; ++k) {
		for (int i = 1; i <= N; ++i) {
      		for (int j = 1; j <= N; ++j) {
        		grafo[i][j] = min(grafo[i][j], grafo[i][k] + grafo[k][j]);
      		}
    	}
  	}
}

int main() {
	int N, E;
	vector<vector<long long int>> grafo;

	while (cin >> N >> E) {
		if (N == 0 && E == 0) {
			break;
		}

		grafo.assign(N + 1, vector<long long int>());
		for (int i = 1; i <= N; ++i) {
			grafo[i].assign(N + 1, INT_MAX);
		}

		int X, Y, H;
		for (int i = 0; i < E; ++i) {
			cin >> X >> Y >> H;
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

		int K, O, D;
		cin >> K;
		for (int i = 0; i < K; ++i) {
			cin >> O >> D;

			if (grafo[O][D] == INT_MAX) {
				cout << "Nao e possivel entregar a carta" << endl;
			} else {
				cout << grafo[O][D] << endl;
			}
		}
		cout << endl;
	}

	return 0;
}