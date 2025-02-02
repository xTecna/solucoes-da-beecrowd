#include <iostream>
#include <iomanip>
#include <cmath>

using namespace std;

int main(){
    double A, B, C, resposta;
    const double pi = 3.141592654;

    while(cin >> A >> B >> C){
        A *= (double) pi/180.0;
        resposta = 5 * (tan(A) * B + C);
        cout << setprecision(2) << fixed << resposta << endl;
    }

    return 0;
}