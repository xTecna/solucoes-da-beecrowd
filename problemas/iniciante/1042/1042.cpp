#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    vector<int> v, V;

    V.assign(3, 0);
    v.assign(3, 0);
    for (int i = 0; i < 3; ++i)
    {
        cin >> V[i];
        v[i] = V[i];
    }

    sort(v.begin(), v.end());

    for (int i = 0; i < 3; ++i)
    {
        cout << v[i] << endl;
    }
    cout << endl;
    for (int i = 0; i < 3; ++i)
    {
        cout << V[i] << endl;
    }

    return 0;
}