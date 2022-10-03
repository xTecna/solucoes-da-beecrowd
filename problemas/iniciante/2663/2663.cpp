#include <algorithm>
#include <iostream>
#include <vector>

using namespace std;

int main()
{
    int N, K;
    vector<int> pontos;

    cin >> N >> K;
    pontos.assign(N, 0);
    for (int i = 0; i < N; ++i)
    {
        cin >> pontos[i];
    }
    sort(pontos.begin(), pontos.end(), greater<int>());

    int resposta = K;
    while (resposta < N && pontos[resposta] == pontos[K - 1])
    {
        ++resposta;
    }

    cout << resposta << endl;

    return 0;
}