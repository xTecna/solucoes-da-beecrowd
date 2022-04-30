#include <iostream>

using namespace std;

int main()
{
    string caracteristicas[3];

    for (int i = 0; i < 3; ++i)
    {
        cin >> caracteristicas[i];
    }

    if (caracteristicas[0] == "vertebrado")
    {
        if (caracteristicas[1] == "ave")
        {
            if (caracteristicas[2] == "carnivoro")
            {
                cout << "aguia" << endl;
            }
            else if (caracteristicas[2] == "onivoro")
            {
                cout << "pomba" << endl;
            }
        }
        else if (caracteristicas[1] == "mamifero")
        {
            if (caracteristicas[2] == "onivoro")
            {
                cout << "homem" << endl;
            }
            else if (caracteristicas[2] == "herbivoro")
            {
                cout << "vaca" << endl;
            }
        }
    }
    else if (caracteristicas[0] == "invertebrado")
    {
        if (caracteristicas[1] == "inseto")
        {
            if (caracteristicas[2] == "hematofago")
            {
                cout << "pulga" << endl;
            }
            else if (caracteristicas[2] == "herbivoro")
            {
                cout << "lagarta" << endl;
            }
        }
        else if (caracteristicas[1] == "anelideo")
        {
            if (caracteristicas[2] == "hematofago")
            {
                cout << "sanguessuga" << endl;
            }
            else if (caracteristicas[2] == "onivoro")
            {
                cout << "minhoca" << endl;
            }
        }
    }

    return 0;
}