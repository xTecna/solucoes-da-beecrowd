#include <iostream>
#include <string>
#include <cctype>
#include <map>

using namespace std;

int main()
{
    int N, C;
    map<char, char> traducao;
    string cifra1, cifra2, frase;

    while (cin >> C >> N)
    {
        traducao.clear();

        cin.ignore();
        getline(cin, cifra1);
        getline(cin, cifra2);

        for (int i = 0; i < C; ++i)
        {
            char maiuscula1 = cifra1[i], minuscula1 = isalpha(cifra1[i]) ? tolower(cifra1[i]) : cifra1[i];
            char maiuscula2 = cifra2[i], minuscula2 = isalpha(cifra2[i]) ? tolower(cifra2[i]) : cifra2[i];

            traducao[maiuscula1] = maiuscula2;
            traducao[minuscula1] = minuscula2;
            traducao[maiuscula2] = maiuscula1;
            traducao[minuscula2] = minuscula1;
        }

        for (int i = 0; i < N; ++i)
        {
            getline(cin, frase);

            for (int j = 0; j < frase.length(); ++j)
            {
                if (traducao.count(frase[j]))
                {
                    cout << traducao[frase[j]];
                }
                else
                {
                    cout << frase[j];
                }
            }
            cout << endl;
        }
        cout << endl;
    }

    return 0;
}