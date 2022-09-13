#include <iostream>

using namespace std;

int main()
{
    int N, Amin, Amax, A, permitidos;

    while (cin >> N >> Amin >> Amax)
    {
        permitidos = 0;

        for (int i = 0; i < N; ++i)
        {
            cin >> A;

            if (A >= Amin && A <= Amax)
            {
                ++permitidos;
            }
        }

        cout << permitidos << endl;
    }

    return 0;
}