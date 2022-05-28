#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int T, N, Q, x;
    vector<int> marmores;

    T = 0;
    while (cin >> N >> Q)
    {
        if (!N && !Q)
            break;

        marmores.assign(10000, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> x;

            marmores[x] += 1;
        }

        for (int i = 1; i < 10000; ++i)
        {
            marmores[i] += marmores[i - 1];
        }

        cout << "CASE# " << ++T << ":" << endl;
        for (int i = 0; i < Q; ++i)
        {
            cin >> x;

            if (marmores[x] == marmores[x - 1])
                cout << x << " not found" << endl;
            else
                cout << x << " found at " << marmores[x - 1] + 1 << endl;
        }
    }

    return 0;
}
