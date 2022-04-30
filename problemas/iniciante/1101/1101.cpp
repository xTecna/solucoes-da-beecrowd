#include <iostream>

using namespace std;

int main()
{
    int M, N;

    while (cin >> M >> N)
    {
        if (M <= 0 || N <= 0)
        {
            break;
        }

        if (M > N)
        {
            swap(M, N);
        }

        int soma = 0;
        for (int i = M; i <= N; ++i)
        {
            cout << i << " ";
            soma += i;
        }
        cout << "Sum=" << soma << endl;
    }

    return 0;
}