#include <iostream>

using namespace std;

int main()
{
    int C, X, Y;
    string musicas[11] = {"PROXYCITY", "P.Y.N.G.", "DNSUEY!", "SERVERS", "HOST!", "CRIPTONIZE", "OFFLINE DAY", "SALT", "ANSWER!", "RAR?", "WIFI ANTENNAS"};

    cin >> C;
    for (int i = 0; i < C; ++i)
    {
        cin >> X >> Y;
        cout << musicas[X + Y] << endl;
    }

    return 0;
}