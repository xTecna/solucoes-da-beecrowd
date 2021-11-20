#include <iostream>
#include <set>

using namespace std;

int main()
{
    int x;
    set<int> dezenas;
    string retorno[] = {"sena", "quina", "quadra", "terno", "azar", "azar", "azar"};

    for (int i = 0; i < 6; ++i)
    {
        cin >> x;
        dezenas.insert(x);
    }

    for (int i = 0; i < 6; ++i)
    {
        cin >> x;
        dezenas.erase(x);
    }

    cout << retorno[dezenas.size()] << endl;

    return 0;
}
