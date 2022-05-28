#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> marmores;
    int T, N, Q, consulta;

    T = 0;
    while (cin >> N >> Q)
    {
        if (!N && !Q)
            break;

        marmores.assign(N, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> marmores[i];
        }

        sort(marmores.begin(), marmores.end());

        cout << "CASE# " << ++T << ":" << endl;
        for (int i = 0; i < Q; ++i)
        {
            cin >> consulta;

            vector<int>::iterator it = lower_bound(marmores.begin(), marmores.end(), consulta);

            if (it == marmores.end() || *it != consulta)
                cout << consulta << " not found" << endl;
            else
                cout << consulta << " found at " << (it - marmores.begin()) + 1 << endl;
        }
    }

    return 0;
}
