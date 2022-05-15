#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    int T, PA, PB;
    double G1, G2;

    cin >> T;
    for (int i = 0; i < T; ++i)
    {
        cin >> PA >> PB >> G1 >> G2;
        G1 /= 100;
        G2 /= 100;

        int anos;
        for (anos = 1; PA <= PB && anos < 101; ++anos)
        {
            PA += floor(PA * G1);
            PB += floor(PB * G2);
        }

        if (PA <= PB)
        {
            cout << "Mais de 1 seculo." << endl;
        }
        else
        {
            cout << anos - 1 << " anos." << endl;
        }
    }

    return 0;
}