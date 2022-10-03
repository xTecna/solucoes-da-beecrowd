#include <algorithm>
#include <iostream>
#include <vector>
#include <cctype>

using namespace std;

int main()
{
    int N, T, U;
    string formula;
    vector<string> perigosos;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        if (i > 0)
        {
            cout << endl;
        }

        cin >> T;
        perigosos.assign(T, "");
        for (int j = 0; j < T; ++j)
        {
            cin >> perigosos[j];
        }

        cin >> U;
        for (int j = 0; j < U; ++j)
        {
            cin >> formula;

            bool perigoso = false;
            for (int k = 0; !perigoso && k < T; ++k)
            {
                int pos = formula.find(perigosos[k]);
                while (pos != string::npos)
                {
                    int frente = pos + perigosos[k].length();

                    if (frente < formula.length())
                    {
                        char daFrente = formula[frente - 1];
                        char maisNaFrente = formula[frente];

                        if ((isdigit(daFrente) && !isdigit(maisNaFrente)) || (isupper(daFrente) && isupper(maisNaFrente)) || (islower(daFrente) && isupper(maisNaFrente)))
                        {
                            perigoso = true;
                            break;
                        }
                    }
                    else
                    {
                        perigoso = true;
                        break;
                    }

                    pos = formula.find(perigosos[k], pos + 1);
                }
            }

            cout << (perigoso ? "Abortar" : "Prossiga") << endl;
        }
    }

    return 0;
}