#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int N, Q;
    vector<int> P;

    while (cin >> N >> Q)
    {
        P.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> P[i];
        }

        sort(P.begin(), P.end(), greater<int>());

        for (int i = 0; i < Q; ++i)
        {
            cin >> N;
            cout << P[N - 1] << endl;
        }
    }

    return 0;
}