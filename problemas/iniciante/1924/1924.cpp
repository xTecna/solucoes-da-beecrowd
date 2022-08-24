#include <iostream>

using namespace std;

int main()
{
    int n;
    string S;

    cin >> n;
    cin.ignore();
    for (int i = 0; i < n; ++i)
    {
        getline(cin, S);
    }

    cout << "Ciencia da Computacao" << endl;

    return 0;
}