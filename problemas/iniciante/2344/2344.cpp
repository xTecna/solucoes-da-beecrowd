#include <iostream>

using namespace std;

char conceito(int nota)
{
    if (nota > 85)
    {
        return 'A';
    }
    if (nota > 60)
    {
        return 'B';
    }
    if (nota > 35)
    {
        return 'C';
    }
    if (nota > 0)
    {
        return 'D';
    }
    return 'E';
}

int main()
{
    int N;

    cin >> N;
    cout << conceito(N) << endl;

    return 0;
}