#include <iostream>

using namespace std;

int main()
{
    double A, B, C, temp;

    cin >> A >> B >> C;

    if (B > A)
    {
        temp = A;
        A = B;
        B = temp;
    }
    if (C > A)
    {
        temp = A;
        A = C;
        C = temp;
    }

    double A2, B2maisC2;

    A2 = A * A;
    B2maisC2 = (B * B) + (C * C);

    if (A >= B + C)
    {
        cout << "NAO FORMA TRIANGULO" << endl;
    }
    else
    {
        if (A2 > B2maisC2)
        {
            cout << "TRIANGULO OBTUSANGULO" << endl;
        }
        else if (A2 < B2maisC2)
        {
            cout << "TRIANGULO ACUTANGULO" << endl;
        }
        else
        {
            cout << "TRIANGULO RETANGULO" << endl;
        }

        if ((A == B) && (B == C))
        {
            cout << "TRIANGULO EQUILATERO" << endl;
        }
        else if ((A == B) || (A == C) || (C == B))
        {
            cout << "TRIANGULO ISOSCELES" << endl;
        }
    }

    return 0;
}