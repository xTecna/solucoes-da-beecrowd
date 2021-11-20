#include <iostream>

using namespace std;

int main(){
    int C, P, F;

    cin >> C >> P >> F;

    cout << (char) (P >= C * F ? 'S' : 'N') << endl;

    return 0;
}
