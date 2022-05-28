#include <iostream>
#include <cmath>

using namespace std;

double dist(int x1, int y1, int x2, int y2)
{
    return sqrt((x1 - x2) * (x1 - x2) + (y1 - y2) * (y1 - y2));
}

int main()
{
    int r1, x1, y1, r2, x2, y2;

    while (cin >> r1 >> x1 >> y1 >> r2 >> x2 >> y2)
    {
        if (dist(x1, y1, x2, y2) <= (r1 - r2))
        {
            cout << "RICO" << endl;
        }
        else
        {
            cout << "MORTO" << endl;
        }
    }

    return 0;
}