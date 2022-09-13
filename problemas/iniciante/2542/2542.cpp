#include <iostream>

using namespace std;

int main()
{
    int N, M, L, CM, CL, A;
    int cartasMarcos[101][101], cartasLeonardo[101][101];

    while (cin >> N)
    {
        cin >> M >> L;

        for (int i = 1; i <= M; ++i)
        {
            for (int j = 1; j <= N; ++j)
            {
                cin >> cartasMarcos[i][j];
            }
        }

        for (int i = 1; i <= L; ++i)
        {
            for (int j = 1; j <= N; ++j)
            {
                cin >> cartasLeonardo[i][j];
            }
        }

        cin >> CM >> CL;
        cin >> A;

        if (cartasMarcos[CM][A] > cartasLeonardo[CL][A])
        {
            cout << "Marcos" << endl;
        }
        else if (cartasLeonardo[CL][A] > cartasMarcos[CM][A])
        {
            cout << "Leonardo" << endl;
        }
        else
        {
            cout << "Empate" << endl;
        }
    }

    return 0;
}