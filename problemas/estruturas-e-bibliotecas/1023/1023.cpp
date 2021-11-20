#include <iostream>
#include <iomanip>
#include <vector>
#include <cmath>

using namespace std;

int main()
{
    bool first;
    vector<int> consumos;
    double consumo_medio;
    int T, N, X, Y, totalX, totalY;

    T = 0;
    while (cin >> N)
    {
        if (!N)
            break;
        if (T)
            cout << endl;

        totalX = 0, totalY = 0;
        consumos.assign(201, 0);
        for (int i = 0; i < N; ++i)
        {
            cin >> X >> Y;

            totalX += X;
            totalY += Y;
            consumos[Y / X] += X;
        }

        first = true;
        cout << "Cidade# " << ++T << ":" << endl;
        for (int i = 0; i < 201; ++i)
        {
            if (consumos[i] > 0)
            {
                if (first)
                    first = false;
                else
                    cout << ' ';

                cout << consumos[i] << '-' << i;
            }
        }
        cout << endl;

        consumo_medio = floor((100.0 * totalY) / totalX) / 100.0;
        cout << "Consumo medio: " << setprecision(2) << fixed << consumo_medio << " m3." << endl;
    }

    return 0;
}
