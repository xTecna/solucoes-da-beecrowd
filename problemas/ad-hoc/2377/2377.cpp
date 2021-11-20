#include <iostream>

using namespace std;

int main(){
    int L, D, K, P;

    cin >> L >> D >> K >> P;

    cout << L * K + P * (L/D) << endl;

    return 0;
}
