#include <iostream>
#include <sstream>

using namespace std;

int main()
{
    int N;
    string frase;

    while (cin >> N)
    {
        cin.ignore();

        for (int i = 0; i < N; ++i)
        {
            getline(cin, frase);

            stringstream ss;
            ss << frase;

            string pontos;
            int qtd = 0, tamanho = 0;
            while (ss >> pontos)
            {
                ++qtd;
                tamanho = pontos.length();
            }

            cout << (char)('a' + (3 * (qtd - 1) + tamanho - 1)) << endl;
        }
    }

    return 0;
}