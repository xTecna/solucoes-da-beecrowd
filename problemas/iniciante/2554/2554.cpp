#include <iostream>
#include <cstdio>

using namespace std;

int main()
{
    string data, melhorData;
    int N, D, p, dia, mes, ano;

    while (cin >> N >> D)
    {
        melhorData = "";
        for (int i = 0; i < D; ++i)
        {
            cin >> data;

            int pessoas = 0;
            for (int j = 0; j < N; ++j)
            {
                cin >> p;
                pessoas += p;
            }

            if (pessoas == N && melhorData == "")
            {
                melhorData = data;
            }
        }

        if (melhorData == "")
        {
            cout << "Pizza antes de FdI" << endl;
        }
        else
        {
            cout << melhorData << endl;
        }
    }

    return 0;
}