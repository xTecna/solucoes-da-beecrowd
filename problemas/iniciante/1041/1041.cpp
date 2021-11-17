#include <iostream>

using namespace std;

int main()
{
    double x, y;

    cin >> x >> y;

    if (x > 0.0)
    {
        if (y > 0.0)
            cout << "Q1" << endl;
        else if (y < 0.0)
            cout << "Q4" << endl;
        else
            cout << "Eixo X" << endl;
    }
    else if (x < 0.0)
    {
        if (y > 0.0)
            cout << "Q2" << endl;
        else if (y < 0.0)
            cout << "Q3" << endl;
        else
            cout << "Eixo X" << endl;
    }
    else
    {
        if (y > 0.0)
            cout << "Eixo Y" << endl;
        else if (y < 0.0)
            cout << "Eixo Y" << endl;
        else
            cout << "Origem" << endl;
    }

    return 0;
}