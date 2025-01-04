#include <iostream>

using namespace std;

int main(){
    int A, B, C, X, Y, Z, XA, YB, ZC;

    cin >> A >> B >> C >> X >> Y >> Z;
    XA = X/A;
    YB = Y/B;
    ZC = Z/C;
    cout << (unsigned long long int) XA * YB * ZC << endl;

    return 0;
}