#include <iomanip>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int N, Q, E, A, B;
    vector<int> mesas;

    cin >> N;
    mesas.assign(N + 1, 0);
    for (int i = 0; i <= N; ++i)
    {
        mesas[i] = i;
    }

    cin >> Q;
    for (int i = 0; i < Q; ++i)
    {
        cin >> E;
        if (E == 1)
        {
            cin >> A >> B;

            int temp = mesas[A];
            mesas[A] = mesas[B];
            mesas[B] = temp;
        }
        else
        {
            cin >> A;

            int resposta = 0;
            int mesa = mesas[A];
            while (mesa != A)
            {
                resposta += 1;
                mesa = mesas[mesa];
            }

            cout << resposta << endl;
        }
    }

    return 0;
}