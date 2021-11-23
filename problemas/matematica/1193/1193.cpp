#include <iostream>
#include <iomanip>
#include <sstream>
#include <cctype>

using namespace std;

int converte(string numero)
{
    int resposta;
    stringstream fluxo;

    fluxo << numero;
    fluxo >> resposta;

    return resposta;
}

int binToDec(string bin)
{
    int dec = 0, potencia = 1;

    for (int i = bin.length() - 1; i > -1; --i)
    {
        dec += potencia * (bin[i] - '0');
        potencia *= 2;
    }

    return dec;
}

string decToBin(int dec)
{
    string bin = "";

    while (dec)
    {
        bin = (char)(dec % 2 + '0') + bin;
        dec /= 2;
    }

    return bin;
}

string decToHex(int dec)
{
    string hex = "";

    while (dec)
    {
        if (dec % 16 > 9)
        {
            hex = (char)(dec % 16 + 'a' - 10) + hex;
        }
        else
        {
            hex = (char)(dec % 16 + '0') + hex;
        }
        dec /= 16;
    }

    return hex;
}

string binToHex(string bin)
{
    return decToHex(binToDec(bin));
}

int hexToDec(string hex)
{
    int dec = 0, potencia = 1;

    for (int i = hex.length() - 1; i > -1; --i)
    {
        if (isalpha(hex[i]))
        {
            dec += potencia * (hex[i] - 'a' + 10);
        }
        else
        {
            dec += potencia * (hex[i] - '0');
        }
        potencia *= 16;
    }

    return dec;
}

string hexToBin(string hex)
{
    return decToBin(hexToDec(hex));
}

int main()
{
    int N;
    string numero, base;

    cin >> N;
    for (int i = 0; i < N; ++i)
    {
        cin >> numero >> base;

        cout << "Case " << i + 1 << ":" << endl;

        if (base == "dec")
        {
            cout << decToHex(converte(numero)) << " hex" << endl;
            cout << decToBin(converte(numero)) << " bin" << endl;
        }
        else if (base == "hex")
        {
            cout << hexToDec(numero) << " dec" << endl;
            cout << hexToBin(numero) << " bin" << endl;
        }
        else
        {
            cout << binToDec(numero) << " dec" << endl;
            cout << binToHex(numero) << " hex" << endl;
        }

        cout << endl;
    }

    return 0;
}
