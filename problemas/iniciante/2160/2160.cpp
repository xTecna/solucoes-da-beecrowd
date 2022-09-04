#include <iostream>
#include <string>

using namespace std;

int main()
{
    string nome;

    getline(cin, nome);
    cout << (nome.length() <= 80 ? "YES" : "NO") << endl;

    return 0;
}