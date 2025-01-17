#include <iostream>

using namespace std;

int main()
{
    int Cv, Ce, Cs, Fv, Fe, Fs;

    cin >> Cv >> Ce >> Cs >> Fv >> Fe >> Fs;
    int Cp = 10000 * (3 * Cv + Ce) + Cs;
    int Fp = 10000 * (3 * Fv + Fe) + Fs;

    if (Cp > Fp)
    {
        cout << "C" << endl;
    }
    else if (Fp > Cp)
    {
        cout << "F" << endl;
    }
    else
    {
        cout << "=" << endl;
    }

    return 0;
}