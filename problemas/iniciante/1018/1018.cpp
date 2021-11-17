#include <iostream>

using namespace std;

int main()
{
    int N;

    cin >> N;

    cout << N << endl;

    cout << N / 100 << " nota(s) de R$ 100,00" << endl;
    N %= 100;
    cout << N / 50 << " nota(s) de R$ 50,00" << endl;
    N %= 50;
    cout << N / 20 << " nota(s) de R$ 20,00" << endl;
    N %= 20;
    cout << N / 10 << " nota(s) de R$ 10,00" << endl;
    N %= 10;
    cout << N / 5 << " nota(s) de R$ 5,00" << endl;
    N %= 5;
    cout << N / 2 << " nota(s) de R$ 2,00" << endl;
    N %= 2;
    cout << N << " nota(s) de R$ 1,00" << endl;

    return 0;
}