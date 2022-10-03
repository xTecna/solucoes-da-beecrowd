#include <iostream>
#include <string>
#include <cctype>

using namespace std;

bool valido(string placa)
{
    if (placa.length() != 8)
    {
        return false;
    }

    for (int i = 0; i < 3; ++i)
    {
        if (!isupper(placa[i]))
        {
            return false;
        }
    }

    if (placa[3] != '-')
    {
        return false;
    }

    for (int i = 4; i < 8; ++i)
    {
        if (!isdigit(placa[i]))
        {
            return false;
        }
    }

    return true;
}

string diaDaSemana(string placa)
{
    switch (placa[7])
    {
    case '1':
    case '2':
        return "MONDAY";
    case '3':
    case '4':
        return "TUESDAY";
    case '5':
    case '6':
        return "WEDNESDAY";
    case '7':
    case '8':
        return "THURSDAY";
    case '9':
    case '0':
        return "FRIDAY";
    }
}

int main()
{
    int N;
    string S;

    cin >> N;
    cin.ignore();
    for (int i = 0; i < N; ++i)
    {
        getline(cin, S);

        if (valido(S))
        {
            cout << diaDaSemana(S) << endl;
        }
        else
        {
            cout << "FAILURE" << endl;
        }
    }

    return 0;
}