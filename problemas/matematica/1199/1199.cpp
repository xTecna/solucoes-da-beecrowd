#include <iostream>
#include <sstream>

using namespace std;

int main()
{
    int numero;
    string entrada;
    stringstream fluxo;

    while (cin >> entrada)
    {
        if (entrada == "-1")
            break;

        fluxo << entrada;
        if (entrada.substr(0, 2) == "0x")
        {
            fluxo >> hex >> numero;
            cout << dec << numero << endl;
        }
        else
        {
            fluxo >> dec >> numero;
            cout << "0x" << hex << uppercase << numero << endl;
        }

        fluxo.clear();
    }

    return 0;
}
