#include <iostream>
#include <set>

using namespace std;

int main()
{
    int N, M, X;
    set<int> figurinhas;

    cin >> N;

    cin >> M;
    for (int i = 0; i < M; ++i)
    {
        cin >> X;
        figurinhas.insert(X);
    }

    cout << N - figurinhas.size() << endl;

    return 0;
}