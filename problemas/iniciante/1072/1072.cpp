#include <iostream>

using namespace std;

int main()
{
    int N, X, in;

    cin >> N;

    in = 0;
    for (int i = 0; i < N; ++i)
    {
        cin >> X;

        if (10 <= X && X <= 20)
        {
            ++in;
        }
    }

    cout << in << " in" << endl;
    cout << N - in << " out" << endl;

    return 0;
}