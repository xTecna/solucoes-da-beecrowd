#include <iostream>

using namespace std;

int main()
{
    int N, letra;
    string lampadas;

    while (cin >> lampadas)
    {
        cin >> N;
        for (int i = 0; i < N; ++i)
        {
            cin >> letra;
            cout << lampadas[letra - 1];
        }
        cout << endl;
    }

    return 0;
}