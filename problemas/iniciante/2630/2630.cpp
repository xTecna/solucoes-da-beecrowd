#include <iostream>
#include <cmath>

using namespace std;

int min(int r, int g, int b)
{
    return min(r, min(g, b));
}

int max(int r, int g, int b)
{
    return max(r, max(g, b));
}

int mean(int r, int g, int b)
{
    return (r + g + b) / 3;
}

int eye(int r, int g, int b)
{
    return 0.3 * r + 0.59 * g + 0.11 * b;
}

int main()
{
    int T, R, G, B;
    string conversao;

    while (cin >> T)
    {
        for (int i = 1; i <= T; ++i)
        {
            cin >> conversao;
            cin >> R >> G >> B;

            cout << "Caso #" << i << ": ";
            if (conversao == "eye")
            {
                cout << eye(R, G, B) << endl;
            }
            else if (conversao == "mean")
            {
                cout << mean(R, G, B) << endl;
            }
            else if (conversao == "max")
            {
                cout << max(R, G, B) << endl;
            }
            else if (conversao == "min")
            {
                cout << min(R, G, B) << endl;
            }
        }
    }

    return 0;
}