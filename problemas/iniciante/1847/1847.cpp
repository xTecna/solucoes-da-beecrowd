#include <iostream>

using namespace std;

int main()
{
    int A, B, C;

    cin >> A >> B >> C;

    if (B < A && C >= B)
    {
        cout << ":)" << endl;
    }
    else if (B > A && C <= B)
    {
        cout << ":(" << endl;
    }
    else if (B > A && C > B && C - B < B - A)
    {
        cout << ":(" << endl;
    }
    else if (B > A && C > B && C - B >= B - A)
    {
        cout << ":)" << endl;
    }
    else if (B < A && C < B && B - C < A - B)
    {
        cout << ":)" << endl;
    }
    else if (B < A && C < B && B - C >= A - B)
    {
        cout << ":(" << endl;
    }
    else if (A == B)
    {
        if (C > B)
        {
            cout << ":)" << endl;
        }
        else
        {
            cout << ":(" << endl;
        }
    }

    return 0;
}