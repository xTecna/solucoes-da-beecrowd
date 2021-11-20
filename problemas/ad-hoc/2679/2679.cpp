#include <iostream>

using namespace std;

int main(){
    int X;

    cin >> X;

    cout << X - (X % 2) + 2 << endl;

    return 0;
}
