#include <iostream>
#include <set>

using namespace std;

int main()
{
    string joia;
    set<string> joias;

    while (cin >> joia)
    {
        joias.insert(joia);
    }

    cout << joias.size() << endl;

    return 0;
}