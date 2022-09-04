#include <iostream>

using namespace std;

int main()
{
    int A, B, C;

    cin >> A >> B >> C;

    if (A == B || A == C || B == C || A + B == C || A + C == B || B + C == A)
    {
        cout << "S" << endl;
    }
    else
    {
        cout << "N" << endl;
    }

    return 0;
}