#include <iostream>

using namespace std;

int main()
{
    int a, b, c, A, B, C;

    cin >> A >> B >> C;
    a = A, b = B, c = C;

    if (b < a)
        swap(a, b);
    if (c < b)
    {
        swap(b, c);
        if (b < a)
            swap(a, b);
    }

    cout << a << endl
         << b << endl
         << c << endl;
    cout << endl;
    cout << A << endl
         << B << endl
         << C << endl;

    return 0;
}