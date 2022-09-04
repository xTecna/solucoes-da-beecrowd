#include <iostream>

using namespace std;

int main()
{
    int N, H, anterior;

    cin >> N;

    cin >> anterior;
    bool pico = false, vale = false, mesmoPadrao = true;
    for (int i = 0; i < N - 1; ++i)
    {
        cin >> H;

        if (H > anterior && !pico)
        {
            pico = true;
            vale = false;
        }
        else if (H < anterior && !vale)
        {
            pico = false;
            vale = true;
        }
        else
        {
            mesmoPadrao = false;
            break;
        }

        anterior = H;
    }

    cout << mesmoPadrao << endl;

    return 0;
}