#include <iostream>
#include <set>

using namespace std;

int main() {
	int T;

	cin >> T;

	for (int k = 0; k < T; ++k) {
		int X;

		cin >> X;

		int n, m;
		cin >> n >> m;

		set<pair<int, int>> arestas = set<pair<int, int>>();
		for (int i = 0; i < m; ++i) {
			int u, v;

			cin >> u >> v;
			arestas.insert(pair<int, int>(u, v));
			arestas.insert(pair<int, int>(v, u));
		}

		cout << arestas.size() << endl;
    }

    return 0;
}