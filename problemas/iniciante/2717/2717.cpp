#include <iostream>

using namespace std;

int main()
{
    int N, A, B;

    cin >> N;
    cin >> A >> B;

    if (A + B <= N)
    {
        cout << "Farei hoje!" << endl;
    }
    else
    {
        cout << "Deixa para amanha!" << endl;
    }

    return 0;
}