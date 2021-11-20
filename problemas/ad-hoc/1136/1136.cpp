#include <iostream>
#include <cstdlib>
#include <vector>
#include <set>

using namespace std;

int main()
{
    int N, B;
    vector<int> bolas;
    set<int> possibilidades;

    while (cin >> N >> B)
    {
        if (!N && !B)
            break;

        possibilidades.clear();
        possibilidades.insert(0);

        bolas.assign(B, 0);
        for (int i = 0; i < B; ++i)
        {
            cin >> bolas[i];
        }

        for (int i = 0; i < B; ++i)
        {
            for (int j = i + 1; j < B; ++j)
            {
                possibilidades.insert(abs(bolas[i] - bolas[j]));
            }
        }

        cout << (char)(possibilidades.size() == N + 1 ? 'Y' : 'N') << endl;
    }

    return 0;
}
