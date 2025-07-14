#include <iostream>

using namespace std;

int main(){
    int R, L;
    double pi = 3.1415;

    cin >> R >> L;

    double V = (4 * pi * R * R * R)/3.0;
    cout << (int)(L / V) << endl;

    return 0;
}