#include <iostream>
#include <cstdlib>
#include <vector>

using namespace std;

void imprime(string nome, vector<int> vetor)
{
    for (int i = 0; i < vetor.size(); ++i)
    {
        cout << nome << "[" << i << "] = " << vetor[i] << endl;
    }
}

int main()
{
    int valor;
    vector<int> impar, par;

    for (int i = 0; i < 15; ++i)
    {
        cin >> valor;

        if (abs(valor) % 2)
        {
            impar.push_back(valor);

            if (impar.size() == 5)
            {
                imprime("impar", impar);
                impar.clear();
            }
        }
        else
        {
            par.push_back(valor);

            if (par.size() == 5)
            {
                imprime("par", par);
                par.clear();
            }
        }
    }

    imprime("impar", impar);
    imprime("par", par);

    return 0;
}