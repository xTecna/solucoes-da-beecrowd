#include <iostream>

using namespace std;

int main()
{
    int Ca, Ba, Pa, Cr, Br, Pr;

    cin >> Ca >> Ba >> Pa;
    cin >> Cr >> Br >> Pr;

    int resposta = 0;
    resposta += (Cr > Ca) ? (Cr - Ca) : 0;
    resposta += (Br > Ba) ? (Br - Ba) : 0;
    resposta += (Pr > Pa) ? (Pr - Pa) : 0;

    cout << resposta << endl;

    return 0;
}