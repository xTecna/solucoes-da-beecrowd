#include <iostream>

using namespace std;

int main()
{
    int N;
    string frase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

    cin >> N;
    cout << frase.substr(0, N) << endl;

    return 0;
}