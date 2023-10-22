#include <iostream>
#include <vector>

using namespace std;

void countingSort(vector<int> &V, int limite) {
    vector<int> aux(limite, 0);
    int k = 0, n = V.size();
    for (int i = 0; i < n; ++i) {
        aux[V[i]] += 1;
    }
    for (int i = 0; i < limite; ++i) {
        for (int j = 0; j < aux[i]; ++j) {
            V[k++] = i;
        }
    }
}

int main() {
    int NC, N;
    vector<int> V;

    cin >> NC;
    for (int k = 0; k < NC; ++k) {
        cin >> N;

        V.assign(N, 0);
        for (int i = 0; i < N; ++i) {
            cin >> V[i];
        }

        countingSort(V, 231);

        if (N > 0) {
            cout << V[0];
        }
        for (int i = 1; i < N; ++i) {
            cout << ' ' << V[i];
        }
        cout << endl;
    }

    return 0;
}