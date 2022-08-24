#include <iostream>

using namespace std;

int main()
{
    string nome;
    int N, forca;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> nome >> forca;

        cout << (nome == "Thor" ? "Y" : "N") << endl;
    }

    return 0;
}