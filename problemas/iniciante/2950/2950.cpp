#include <iostream>
#include <iomanip>

using namespace std;

int main(){
    int N, X, Y;
    double resposta;

    cin >> N >> X >> Y;
    resposta = (double) N/(X + Y);
    cout << setprecision(2) << fixed << resposta << endl;

    return 0;
}