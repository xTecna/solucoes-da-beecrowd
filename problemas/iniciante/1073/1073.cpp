#include <iostream>

using namespace std;

int main()
{
    int N;

    cin >> N;

    for (int i = 2; i <= N; i += 2)
        cout << i << "^2 = " << i * i << endl;

    return 0;
}