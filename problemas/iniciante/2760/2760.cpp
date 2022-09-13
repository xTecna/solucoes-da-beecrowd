#include <iostream>

using namespace std;

int main()
{
    string nomes[3];

    for (int i = 0; i < 3; ++i)
    {
        getline(cin, nomes[i]);
    }

    cout << nomes[0] << nomes[1] << nomes[2] << endl;
    cout << nomes[1] << nomes[2] << nomes[0] << endl;
    cout << nomes[2] << nomes[0] << nomes[1] << endl;
    cout << nomes[0].substr(0, 10) << nomes[1].substr(0, 10) << nomes[2].substr(0, 10) << endl;

    return 0;
}