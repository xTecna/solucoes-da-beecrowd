#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    double C;
    int N, resposta;

    cin >> N;

    for (int i = 0; i < N; ++i)
    {
        cin >> C;

        cout << ceil(log2(C)) << " dias" << endl;
    }

    return 0;
}
