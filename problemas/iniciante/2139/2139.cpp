#include <iostream>

using namespace std;

int diasAteMes[] = {0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335};

int diasAteData(int mes, int dia)
{
    return diasAteMes[mes - 1] + dia;
}

int main()
{
    int mes, dia;

    while (cin >> mes >> dia)
    {
        int diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia);

        if (diasAteNatal < 0)
        {
            cout << "Ja passou!" << endl;
        }
        else if (diasAteNatal == 0)
        {
            cout << "E natal!" << endl;
        }
        else if (diasAteNatal == 1)
        {
            cout << "E vespera de natal!" << endl;
        }
        else
        {
            cout << "Faltam " << diasAteNatal << " dias para o natal!" << endl;
        }
    }

    return 0;
}