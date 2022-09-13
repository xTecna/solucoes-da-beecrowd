#include <iostream>
#include <string>

using namespace std;

int main()
{
    int N;
    string frase;

    while (cin >> N)
    {
        cin.ignore();

        for (int i = 0; i < N; ++i)
        {
            getline(cin, frase);
            cout << "I am Toorg!" << endl;
        }
    }

    return 0;
}