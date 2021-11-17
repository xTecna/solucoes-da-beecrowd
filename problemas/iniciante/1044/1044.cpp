#include <iostream>

using namespace std;

int main()
{
    int A, B;

    cin >> A >> B;

    if (A < B)
        swap(A, B);

    if (A % B)
        cout << "Nao sao Multiplos" << endl;
    else
        cout << "Sao Multiplos" << endl;

    return 0;
}