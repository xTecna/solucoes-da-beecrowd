#include <iostream>
#include <cmath>

using namespace std;

void calcula(int x, int y)
{
    int quociente;

    if (x > 0)
    {
        if (y > 0)
        {
            quociente = x / y;
        }
        else
        {
            quociente = ceil((double)x / y);
        }
    }
    else
    {
        if (y > 0)
        {
            quociente = floor((double)x / y);
        }
        else
        {
            quociente = ceil((double)x / y);
        }
    }

    cout << quociente << " " << x - (y * quociente) << endl;
}

int main()
{
    int a, b, q;

    cin >> a >> b;
    calcula(a, b);

    return 0;
}