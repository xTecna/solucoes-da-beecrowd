#include <iostream>

using namespace std;

int main()
{
    int N, R, maria, joao;

    while (cin >> N)
    {
        if (!N)
            break;

        joao = 0;

        for (int i = 0; i < N; ++i)
        {
            cin >> R;

            joao += R;
        }

        maria = N - joao;

        cout << "Mary won " << maria << " times and John won " << joao << " times" << endl;
    }

    return 0;
}
