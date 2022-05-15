#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    int N, X, Y;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> X >> Y;

        if (Y == 0)
        {
            cout << "divisao impossivel" << endl;
        }
        else
        {
            cout << setprecision(1) << fixed << (double)X / Y << endl;
        }
    }

    return 0;
}