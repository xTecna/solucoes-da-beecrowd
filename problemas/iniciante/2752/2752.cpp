#include <iostream>
#include <iomanip>

using namespace std;

int main()
{
    string frase = "AMO FAZER EXERCICIO NO URI";

    cout << "<" << frase << ">" << endl;
    cout << "<" << setw(30) << frase << ">" << endl;
    cout << "<" << frase.substr(0, 20) << ">" << endl;
    cout << "<" << left << setw(20) << frase << ">" << endl;
    cout << "<" << left << setw(30) << frase << ">" << endl;
    cout << right;
    cout << "<" << frase.substr(0, 30) << ">" << endl;
    cout << "<" << setw(30) << frase.substr(0, 20) << ">" << endl;
    cout << "<" << left << setw(30) << frase.substr(0, 20) << ">" << endl;

    return 0;
}