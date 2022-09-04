#include <iostream>

using namespace std;

int main()
{
    int trocos[] = {4, 7, 10, 12, 15, 20, 22, 25, 30, 40, 52, 55, 60, 70, 100, 102, 105, 110, 120, 150, 200};

    int N, M;
    while (scanf("%d %d\n", &N, &M) != EOF)
    {
        if (N == 0 && M == 0)
        {
            break;
        }

        int troco = M - N;
        bool possivel = false;
        for (int i = 0; i < 21; ++i)
        {
            if (troco == trocos[i])
            {
                possivel = true;
                break;
            }
        }

        cout << (possivel ? "" : "im") << "possible" << endl;
    }

    return 0;
}