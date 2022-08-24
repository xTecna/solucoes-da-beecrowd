#include <iostream>

using namespace std;

int main()
{
    int A, B;

    cin >> A >> B;

    if (A == B)
    {
        cout << A << endl;
    }
    else
    {
        cout << (A > B ? A : B) << endl;
    }

    return 0;
}