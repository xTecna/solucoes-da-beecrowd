#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

bool comp(int a, int b)
{
    if (a % 2 == 0)
        if (b % 2 == 0)
            return a < b;
        else
            return true;
    else if (b % 2 == 0)
        return false;
    else
        return a > b;
}

int main()
{
    int N;
    vector<int> numeros;

    cin >> N;
    numeros.assign(N, 0);
    for (int i = 0; i < N; ++i)
    {
        cin >> numeros[i];
    }

    sort(numeros.begin(), numeros.end(), comp);

    for (int i = 0; i < N; ++i)
    {
        cout << numeros[i] << endl;
    }

    return 0;
}
