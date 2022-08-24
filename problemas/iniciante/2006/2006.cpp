#include <iostream>

using namespace std;

int main()
{
    int T, cha, corretos;

    cin >> T;

    corretos = 0;
    for (int i = 0; i < 5; ++i)
    {
        cin >> cha;

        if (cha == T)
        {
            ++corretos;
        }
    }

    cout << corretos << endl;

    return 0;
}